var shapesPath = {
	circle:" M0,30 C0,3 40,3 40,30 C40,58 0,58 0,30", 
	arrow: " M20,42 L20,23 M18,22 L 22,22 L20,19 Z",
	connectors: " M20,0 L20,10 M20,50 L20,60",
	signs: " M20,17 L20,25 M16,21 L24,21 M 16,41 L 24,41",
	rhomb: " M0,30 L20,10 L40,30 L20,50 Z",
	resistor: "M10,0 L10,7 L5,10 L15,15 L5,20 L15,25 L5,30 L15,35 L5,40 L15,45 L5,50 L10,55 L10,60"
};

var symbols= {
	R: shapesPath.resistor,
	VS: shapesPath.circle + shapesPath.signs + shapesPath.connectors,
	CS: shapesPath.circle + shapesPath.arrow + shapesPath.connectors,
	VSC: shapesPath.rhomb + shapesPath.signs + shapesPath.connectors,
	CSC: shapesPath.rhomb + shapesPath.arrow + shapesPath.connectors
};

var texts = { 
	"R":{type: "resistencia",symbol:"R"}, 
	"VS":{type: "voltaje",symbol:"V"}, 
	"CS":{type: "corriente",symbol:"I"},
	"VSC":{type: "voltaje",symbol:"V"},
	"CSC":{type: "corriente",symbol:"I"}
};

var circuitNodes = {};

var S_WIDTH=800, S_HEIGHT=600;

var stage, gridLayer, elementsLayer, connectorsLayer, testLayer;
var elements = [];

var counters = { 
	"R":0, 
	"VS":0, 
	"CS":0,
	"VSC":0,
	"CSC":0,
	"N":0,
	"L":0
};

//actions
var states = {
	nothing:0,
	placing:1,
	wiring:2,
	node_analysis:3,
	thevenin_analysis: 4
};
var state = states.nothing;

var cursor;
var showCursor=false;
var md_action=null;
var selectedObject=null;

var rotation=0;

var path={};

var md_handlers={
	//placeElemnt
	0: placeElement
};

var validator;

function mousedown_h(){
//	console.log("llamada a mousedown " + md_action);
	if(state == states.placing)
		placeElement();
}

function selectElementType(){
	shortcut.remove('r');
	shortcut.add('r',function(){
		cursor.rotateDeg(90);
		cursor.getParent().draw();
	});

	$("#drawing_area").css("cursor","default	");

	cursor=elements[$(this).data("index")]; 
	cursor.setRotationDeg(0);
	
	state = states.placing;
}

function moveActions(){
	if(state == states.placing){
		var event = stage.getPointerPosition();
		cursor.setPosition({x:event.x, y:event.y});
		cursor.draw();
		elementsLayer.draw();
	}
}

function showElement(){
	if(state != states.placing) return;

	cursor.show();
	elementsLayer.draw();
}

function hideElement(){
	if(state != states.placing) return;

	cursor.hide();
	elementsLayer.draw();
}

function loadCursors(){
	var tkGroup;
	var tkPath; 
	var tkCirclePositive, tkCircleNegative, tkConnectorPositive, tkConnectorNegative, tkClickArea, tkText;
	var grpWidth, grpHeight = 60;

	for(letter in symbols){

		tkGroup = new Kinetic.Group();
		grpWidth = (letter=='R')?20:40;
		tkGroup.setWidth(grpWidth);
		tkGroup.setHeight(grpHeight);

		tkGroup.tkPath = new Kinetic.Path({
			data: symbols[letter],
			stroke: 'black',
			strokeWidth: 1.5,
			name: 'elementPath'
		});

		tkGroup.tkCirclePositive = new Kinetic.Circle({
			radius:3,
			strokeWidth:1,
			fill:'gray', 
			stroke:'black',
			x: grpWidth/2,
			y: 0,
			name: 'positiveNode'
		}).hide();
		tkGroup.tkCirclePositive.setAttr('multiplier', 1);

		tkGroup.tkCircleNegative = tkGroup.tkCirclePositive.clone();
		tkGroup.tkCircleNegative.setName('negativeNode');
		tkGroup.tkCircleNegative.setY(grpHeight);
		tkGroup.tkCircleNegative.setAttr('multiplier', -1);		

		tkGroup.tkConnectorPositive = new Kinetic.Rect({
			x: (letter=="R")?0:10,
			y: -10,
			width: 20,
			height: 20 /*,
			strokeWidth: 1,
			stroke:'black'*/
		});

		tkGroup.tkConnectorNegative = tkGroup.tkConnectorPositive.clone();
		tkGroup.tkConnectorNegative.setY(grpHeight - 10);

		tkGroup.tkConnectorPositive.setAttr("point", "positiveNode");
		tkGroup.tkConnectorPositive.setName('positiveConnector');
		tkGroup.tkConnectorNegative.setAttr("point", "negativeNode");
		tkGroup.tkConnectorNegative.setName('negativeConnector');

		tkGroup.tkConnectorPositive.on('click', connectorsClick);
		tkGroup.tkConnectorNegative.on('click', connectorsClick);

		tkGroup.setAttr('elementType',letter);
		// rect add to facilitate click selection
		tkGroup.tkClickArea = new Kinetic.Rect({ 
			x:0, 
			y:10, 
			height:grpHeight - 20, 
			width:grpWidth,
			name: 'clickArea'
		});
		
		tkGroup.tkText = new Kinetic.Text({
			x:4 + grpWidth / 2,
			y:0,
			text: '',
			fontSize: 12,
			fontFamily: "arial",
			fontStyle: 'bold',
			fill: 'blue',
			name: 'labelId'
		})

		tkGroup.add(tkGroup.tkText);
		tkGroup.add(tkGroup.tkClickArea);
		tkGroup.add(tkGroup.tkPath);
		tkGroup.add(tkGroup.tkCirclePositive);
		tkGroup.add(tkGroup.tkCircleNegative);
		tkGroup.add(tkGroup.tkConnectorPositive);
		tkGroup.add(tkGroup.tkConnectorNegative);

		tkGroup.tkText.moveToTop();
		tkGroup.tkClickArea.moveToTop();
		tkGroup.tkConnectorNegative.moveToTop();
		tkGroup.tkConnectorPositive.moveToTop();
		tkGroup.setOffset(grpWidth/2, grpHeight/2)
		tkGroup.hide();

		tkGroup.tkClickArea.moveToTop();
		elements[letter]=tkGroup;

		elementsLayer.add(elements[letter]);
	}
}

//wire
function connectorsClick(){
	if(state != states.wiring) return;	

	var connectorType = this.getAttr('point');
	var connector = this.parent.get('.' + connectorType)[0];

	console.log("click en el conector");
	stage.get('.positiveNode, .negativeNode').each(function(circle){
		circle.setAttr('fill', 'gray');
	});
	connector.setAttr('fill','green');
	
	testLayer.removeChildren();

	connectorsLayer.draw();
	elementsLayer.draw();

	if(path.start != undefined)
	{
		path.start.setAttr('fill','green');
		path.end = connector;
	}
	else
		path.start = connector;

	if(path.start == path.end){
		console.log("son iguales");
		return cancelConnection();
	}

	if(path.start != undefined && path.end != undefined)
	{

		//if try to connect itself cancel
		if(path.start.parent == path.end.parent) 
		{
			console.log("se intenta conectar el mismo elemento");
			return cancelConnection();
		}

		var pathString;
		var pathNodes;
		var initialNode, finalNode;
		var circuitNode = null;
		var elementId;
		var joined = false;
		
		initialNode = getNode( { position: getPosition(path.start.getAbsolutePosition()) } );
		finalNode = getNode( { position: getPosition(path.end.getAbsolutePosition()) });

		//get circuitNode if the pointer already has a circuitNode assigned
		if(initialNode.nodeName != path.start.parent.getAttr('elementId'))
		{
			circuitNode = circuitNodes[initialNode.nodeName];
			console.log("nodo incial ya tiene asignado");
		}

		if(finalNode.nodeName != path.end.parent.getAttr('elementId'))
		{
			//if the initial connector does not have circuitNode assigned, assign the endConnector circuitnode
			console.log("nodo final ya tiene asignado");
			if(circuitNode == null)
				circuitNode = circuitNodes[finalNode.nodeName];
			else
			{
				console.log(finalNode);
				//if both of connectors have assigned circuit node
				if(circuitNodes[finalNode.nodeName].connectedElements[path.start.parent.getAttr('elementId')] != null)
				{
					console.log("ya existe elemento en el segundo nodo");
					return cancelConnection();
				}

				//must merge the nodes				
				//copy elements from second node
				for(index in circuitNodes[finalNode.nodeName].connectedElements)
				{
					if( circuitNode.connectedElements[index] != null)
					{
						console.log("El segundo nodo ya contiene uno de los nodos del primero");
						return cancelConnection();
					}
				}

				for(index in circuitNodes[finalNode.nodeName].connectedElements)
					circuitNode.connectedElements[index] = circuitNodes[finalNode.nodeName].connectedElements[index];					

				//copy lines from second node
				for(index in circuitNodes[finalNode.nodeName].lines)
				{
					circuitNode.lines[index] = circuitNodes[finalNode.nodeName].lines[index];
					circuitNode.lines[index].setAttr('nodeName', circuitNode.nodeName);
					circuitNode.lines[index].getAttr('startConnector').setAttr('nodeName', circuitNode.nodeName);
					circuitNode.lines[index].getAttr('endConnector').setAttr('nodeName', circuitNode.nodeName);
				}

				//copy gridnodes from second node
				for(index in circuitNodes[finalNode.nodeName].gridNodes)
				{
					circuitNode.gridNodes[index] = circuitNodes[finalNode.nodeName].gridNodes[index];
					if(index != finalNode.hash) grid[index].nodeName = circuitNode.nodeName;
				}
				
				joined = true;

				//delete second node
				console.log("nodo a eliminar: " + finalNode.nodeName);
				delete circuitNodes[finalNode.nodeName];
			}
		}
		
		//if both dont have circuitNode assigned, create a new one
		if(circuitNode == null) circuitNode = { 
			nodeName:'N' + (++counters['N']), 
			connectedElements: {}, 
			lines:{}, 
			gridNodes:{}
		};

		elementId = path.start.parent.getAttr('elementId');

		//
		if(!joined && circuitNode.connectedElements[elementId] != null && circuitNode.connectedElements[elementId].getAttr('name') != path.start.getAttr('name') )
		{
			console.log("el nodo ya contiene el primer elemento con polaridad contraria");
			return cancelConnection();
		}

		circuitNode.connectedElements[elementId] = path.start;

		elementId = path.end.parent.getAttr('elementId');

		if(!joined && circuitNode.connectedElements[elementId] != null && circuitNode.connectedElements[elementId].getAttr('name') != path.end.getAttr('name') )
		{
			console.log("el nodo ya contiene el segundo elemento con polaridad contraria");
			return cancelConnection();
		}

		circuitNode.connectedElements[elementId] = path.end;

		//assign the current/new circuitNode to the graphnodes
		finalNode.nodeName = initialNode.nodeName = circuitNode.nodeName;
		circuitNodes[circuitNode.nodeName] = circuitNode;
		pathNodes = findPath(initialNode.hash, finalNode.hash, circuitNode.nodeName);
		
		if(pathNodes.length > 0){
			++counters.L;
			var lineNodes = [];
			var gridNode;

			for(i = 0; i < pathNodes.length; i++ )
			{
				gridNode = grid[pathNodes[i]];
				gridNode.nodeName = circuitNode.nodeName;
				gridNode.lines.push('L' + counters.L);

				lineNodes.push({x: gridNode.x, y: gridNode.y});
				
				circuitNode.gridNodes[pathNodes[i]] = gridNode;
			}

			var newLine = new Kinetic.Line({
			    x: 0,
		    	y: 0,
			    points: lineNodes,
			    strokeWidth: 2,
		        stroke: 'black',
		        id: 'L' + counters.L,
		        name: 'drawnLine'
		    });

		    var newHitLine = new Kinetic.Line({
			    x: 0,
		    	y: 0,
			    points: lineNodes,
			    strokeWidth: 12,
			    stroke: 'gray',
			    opacity: 0,
			    id:'HL' + counters.L
		    });

			circuitNodes[circuitNode.nodeName].lines['L' + counters.L] = newLine;

			path.start.setAttr('nodeName', circuitNode.nodeName);
			path.end.setAttr('nodeName', circuitNode.nodeName);

			newLine.setAttr('nodeName', circuitNode.nodeName);
			newLine.setAttr('gridNodes', pathNodes);
			newLine.setAttr('startConnector', path.start);
			newLine.setAttr('endConnector', path.end);
			newLine.setAttr('hitLineId', 'HL' + counters.L);

			newHitLine.setAttr('refLineId', 'L' + counters.L);
			newHitLine.on('click', lineClick);

			connectorsLayer.add(newHitLine);
			connectorsLayer.add(newLine);

			newHitLine.moveToTop();

			stage.draw();
			delete path.start;
			delete path.end;
		}
		else
		{
			//unable to connect the elements
			console.log("no se pudo hacer la conexion"); 
			return cancelConnection();
		}
	}
}

function cancelConnection()
{
	path.start.setAttr('fill', 'gray');
	path.end.setAttr('fill', 'gray');
	elementsLayer.draw();
	connectorsLayer.draw();
	delete path.start;
	delete path.end;
	return;
}

function showConnectors(){
	stage.get('.placed').each(function(groupNode){
		groupNode.get('.positiveNode, .negativeNode, .positiveConnector, .negativeConnector').show();
	})

	$("#drawing_area").css("cursor","crosshair");
	elementsLayer.draw();

	state = states.wiring;
}

function hideConnectors(){
	stage.get('.positiveNode, .negativeNode, .positiveConnector, .negativeConnector').hide();
	elementsLayer.draw();
	testLayer.removeChildren();
	connectorsLayer.draw();
}

function getPosition(position){
	var position = position || stage.getPointerPosition();
	var xPos = Math.round(position.x/10)*10;
	var yPos = Math.round(position.y/10)*10;
	return {x: xPos, y:yPos, hash: ("00" + xPos).slice(-3) + ("00"+yPos).slice(-3)};
}

function placeElement(){
	//get position
	var position = getPosition();
	if(getNode({position: position}).nodeName != "")
		return;
	//place and create the new element

	var elementType = cursor.getAttr("elementType");
	var headerMessage = "Valor de " + elementType + (counters[elementType] + 1);
	var captionMessage = "Ingrese el valor de " + texts[elementType].type;

	cursor.show();
	elementsLayer.draw();

	$("#modal_input div.dependent_controls").hide();

	//if it is a dependent source show controls options
	if(elementType == "VSC" || elementType == "CSC"){
		$("#modal_input div.dependent_controls").show();
		previewLayer.removeChildren();

		var placedElements = elementsLayer.get('.placed');
		
		$("#ref_resistor select option").remove();

		for(var i=0; i<placedElements.length; ++i){
			if(placedElements[i].getAttr("elementType") == "R")	
				$("#ref_resistor select").append('<option>' + placedElements[i].getAttr('elementId') + '</option>');
		}

		if($("#ref_resistor select option").length == 0)
		{
			showModalMessage(
				"Error:",
				"Se necesitan resistencias en el circuito para poder colocar una fuente dependiente"
			);
			return;
		}

		$("div.make-switch").bootstrapSwitch('setState', false, true);
		$("#ref_resistor select").change();
		$("#ref_var button:first").click();

		captionMessage = "Ingrese el valor de ganancia de la fuente dependiente";
	}

	showModal({
		header: headerMessage,
		caption: captionMessage,
		callback: function(){
			var elementId = elementType + (++counters[elementType]);
			//var elementType = cursor.getAttr("elementType");

			cursor.setPosition(position.x,position.y);
			cursor.tkText.setAttr('text', elementId);

			switch(cursor.getRotationDeg() % 360){
				case 0:
					cursor.tkText.setPosition(4 + cursor.getWidth() / 2, 0);
					cursor.tkText.setRotationDeg(0);
					break;
				case 90:
					cursor.tkText.setPosition(0, 10);
					cursor.tkText.setRotationDeg(-90);
					break;
				case 180:
					cursor.tkText.setPosition(cursor.getWidth() / 2 - 4, 10);
					cursor.tkText.setRotationDeg(180);
					break;
				case 270:
					cursor.tkText.setPosition(cursor.getWidth(), cursor.getHeight() - 10);
					cursor.tkText.setRotationDeg(90);
					break;
			}
					
			//assign to the nodename the elementId
			getNode({
				position: getPosition(cursor.tkCircleNegative.getAbsolutePosition()) 
			}).nodeName = elementId;
					
			getNode({
				position: getPosition(cursor.tkCirclePositive.getAbsolutePosition()) 
			}).nodeName = elementId;

			var newElement = cursor.clone();
			newElement.setName('placed');
			newElement.setAttr('elementId', elementId);
			newElement.setId(elementId);
			newElement.setAttr('value', $("#decimal_input").val());

			if(elementType == "VSC" || elementType == "CSC")
			{
				var previewElement = previewLayer.find('Group')[0];
				newElement.setAttr('ref_resistor', $("#ref_resistor select").val());
				newElement.setAttr('ref_var', $('#ref_var button.active').val());
				newElement.setAttr('ref_polarity', $("div.make-switch").bootstrapSwitch('status'));
				newElement.setAttr('positiveNode', previewElement.find('.positiveNode')[0].getAttr('polarity'));
				newElement.setAttr('negativeNode', previewElement.find('.negativeNode')[0].getAttr('polarity'));
			}

			newElement.get('.clickArea')[0].on('dblclick', changeValue);
			newElement.get('.clickArea')[0].on('click', elementClick);

			elementsLayer.add(newElement);
			newElement.draw();
			newElement.show();

			if(elementType == "R")
			{
				if(newElement.getRotationDeg() % 180 == 0)
				{
					for( var i = position.x - 10; i <= position.x - 10 + (cursor.getWidth()) ; i += 10)
					{
						for( var j = position.y - 20; j <= position.y - 40 + (cursor.getHeight()); j += 10)
						{
							getNode({
								position: getPosition( { x : i, y : j } ) 
							}).nodeName = elementId;
							testLayer.add(new Kinetic.Circle({radius:3, strokeWidth:1, fill:'gray', stroke:'black', x: i,	y: j }));
						}
					}	
				}
				else
				{
					for( var j = position.y - 10; j <= position.y - 10 + (cursor.getWidth()) ; j += 10)
					{
						for( var i = position.x - 20; i <= position.x - 40 + (cursor.getHeight()); i += 10)
						{
							getNode({
								position: getPosition( { x : i, y : j } ) 
							}).nodeName = elementId;
							testLayer.add(new Kinetic.Circle({radius:3, strokeWidth:1, fill:'gray', stroke:'black', x: i,	y: j }));
						}
					}	
				}
			}
			else
			{
				for( var i = position.x - 20; i <= position.x - 20 + (cursor.getWidth()) ; i += 10)
				{
					for( var j = position.y - 20; j <= position.y - 20 + (cursor.getWidth()); j += 10)
					{
						getNode({
							position: getPosition( { x : i, y : j } ) 
						}).nodeName = elementId;
						testLayer.add(new Kinetic.Circle({radius:3, strokeWidth:1, fill:'gray', stroke:'black', x: i,	y: j }));
					}
				}				
			}


			//hide and redraw
			cursor.tkText.setText('');
			cursor.hide();
			elementsLayer.draw();
			testLayer.draw();
			md_action = null;

			$("#decimal_input").val("");
		}
	});
}

function changeValue(){
	if(state != states.nothing) return;

	var element = this.parent;
	var elementType = element.getAttr('elementType');
	$("#modal_input div.dependent_controls").hide();

	//if it is a dependent source show controls options
	if(elementType == "VSC" || elementType == "CSC"){
		$("#modal_input div.dependent_controls").show();
		previewLayer.removeChildren();

		var placedElements = elementsLayer.get('.placed');
		
		$("#ref_resistor select option").remove();

		for(var i=0; i<placedElements.length; ++i){
			if(placedElements[i].getAttr("elementType") == "R")	
				$("#ref_resistor select").append('<option>' + placedElements[i].getAttr('elementId') + '</option>');
		}

		$("div.make-switch").bootstrapSwitch('setState', element.getAttr('ref_polarity'), false);
		$("#ref_resistor select").val(element.getAttr('ref_resistor')).change();
		console.log($("#ref_var button[value='" + element.getAttr('ref_var') + "']").length);
		$("#ref_var button[value='" + element.getAttr('ref_var') + "']").click();
	}

	showModal({
		header: "Valor de " + element.getAttr('elementId'),
		caption: "Ingrese el valor para " + texts[element.getAttr('elementType')].type,
		default_value: this.parent.getAttr('value'),
		callback: function(){
			element.setAttr('value', $("#decimal_input").val());

			if(elementType == "VSC" || elementType == "CSC")
			{
				var previewElement = previewLayer.find('Group')[0];
				element.setAttr('ref_resistor', $("#ref_resistor select").val());
				element.setAttr('ref_var', $('#ref_var button.active').val());
				element.setAttr('ref_polarity', $("div.make-switch").bootstrapSwitch('status'));
				element.setAttr('positiveNode', previewElement.find('.positiveNode')[0].getAttr('polarity'));
				element.setAttr('negativeNode', previewElement.find('.negativeNode')[0].getAttr('polarity'));
			}
		}
	})
}
 
function showModal(options){
	options.header = options.header || "Entrada de datos";
	options.caption = options.caption || "Ingrese un valor";
	options.example = options.example || "Ejemplo: 123.45";
	options.callback = options.callback || function(){};
	options.default_value = options.default_value || 1;

	$("#modal_input h4").text(options.header);
	$("#modal_input label.decimal_input").text(options.caption);
	$("#modal_input span.help-block").text(options.example);
	$("#modal_layer, #modal_input").show();
	$("#decimal_input").val(options.default_value);

	$("#modal_input a.btn.ok").unbind("click").click(function(){
		if(!$("#decimal_input").valid())
			return;
		options.callback();
		$("#modal_layer, #modal_input").hide();
	})
}

function getCircuit(){
	var circuit = {};
	//create circuitNode templates
	for(var nodeName in circuitNodes) 
		circuit[nodeName] = {
			nodeName: nodeName, 
			connectedElements: {}
		};

	var currentNode, adjacentNode, currentConnector, adjacentConnector, currentElement;
	for(var nodeName in circuitNodes){
		for(var elementName in circuitNodes[nodeName].connectedElements){
			currentNode = circuit[nodeName];
			currentConnector = circuitNodes[nodeName].connectedElements[elementName];

			currentElement = currentNode.connectedElements[elementName] = {
				polarity: parseInt(currentConnector.attrs.multiplier),
				elementName: currentConnector.parent.attrs.elementId,
				value: parseFloat(currentConnector.parent.attrs.value),
				elementType: currentConnector.parent.attrs.elementType
			};

			if(currentElement.polarity > 0)
				adjacentConnector = currentConnector.parent.find('.negativeNode')[0];
			else
				adjacentConnector = currentConnector.parent.find('.positiveNode')[0];

			currentElement.adjacentNode = circuit[adjacentConnector.attrs.nodeName];

			if(currentConnector.parent.attrs.ref_var){
				currentElement.ref_var = currentConnector.parent.attrs.ref_var;
				currentElement.ref_resistor = currentConnector.parent.attrs.ref_resistor;
				currentElement.ref_polarity = currentConnector.parent.attrs.ref_polarity;
				currentElement.positiveNodePolarity = currentConnector.parent.attrs.positiveNode;
				currentElement.negativeNodePolarity = currentConnector.parent.attrs.negativeNode;
			}
		}
	} 	
	return circuit;
}

function nodeAnalysis(circuit, groundNodeName){

	if( Object.keys(circuit).length == 0) return;

	var groundNode = circuit[groundNodeName];
	var currentNode, currentElement;
	var SP_name, EC_name;
	var orderedElements, orderedNodes = [];
	var SP_counter = 0;//supernode counter
	var ECs = {}; //Equations
	var X = {}; 

	//set voltage to groundnode
	groundNode.voltage = 0;

	//sort the nodes in order to process the ones adjacent to the ground node first
	for(var elementId in groundNode.connectedElements)
	{
		currentElement = groundNode.connectedElements[elementId];	
		
		switch(currentElement.elementType)
		{
			case "R":
			case "CS":
			case "CSC":
				if(orderedNodes.indexOf(currentElement.adjacentNode) == -1 && !currentElement.adjacentNode.voltage)
					orderedNodes.push(currentElement.adjacentNode);
				break;
			case "VS":
				currentElement.adjacentNode.voltage = currentElement.polarity * currentElement.value * -1;
				if(orderedNodes.indexOf(currentElement.adjacentNode) != -1)
					orderedNodes.splice(orderedNodes.indexOf(currentElement.adjacentNode), 1);
				break;
			default: //must to verify this logic
				orderedNodes.unshift(currentElement.adjacentNode);
		}
	}

	for(var nodeName in circuit)
		if(orderedNodes.indexOf(circuit[nodeName]) == -1 && circuit[nodeName] != groundNode && circuit[nodeName].voltage == null)
			orderedNodes.push(circuit[nodeName]);

	//start process to get the matrix
	for(nodeIndex=0; nodeIndex<orderedNodes.length;++nodeIndex)
	{
		currentNode = orderedNodes[nodeIndex];

		//get the nodes ordered in an array
		orderedElements = new Array();

		//sort elements to process the Voltage source first
		loop_sortNeighbors:
		for(var elementId in currentNode.connectedElements)
		{
			currentElement = currentNode.connectedElements[elementId];

			switch(currentElement.elementType)
			{
				case "R":
				case "CS":
				case "CSC":
					orderedElements.push(currentElement);
					break;
				case "VS":
					//if the adjacent node has voltage calculate current node voltage and break loop
					if(currentElement.adjacentNode.voltage != null)
					{
						currentNode.voltage = currentElement.polarity * currentElement.value + currentElement.adjacentNode.voltage;
						break loop_sortNeighbors;
					}
					orderedElements.unshift(currentElement);
					break;
				default:
					orderedElements.unshift(currentElement);
			}			
		}

		//if current node has voltage continue with next node
		if(currentNode.voltage != null) continue;

		SP_name = null;
		loop_connectedElements:
		for(var i=0; i<orderedElements.length; ++i)
		{
			currentElement = orderedElements[i];
			switch(currentElement.elementType)
			{
				case "VS":
					//if the voltage source is connected to ground assign the voltage to current node
					if(currentElement.adjacentNode == groundNode)
					{
						currentNode.voltage = currentElement.value * currentElement.polarity;
						break loop_connectedElements;
					}
					else //it is a supernode
					{
						//get the supernode name or create it if is not setted
						SP_name = currentNode.SP || currentElement.adjacentNode.SP;
						if(SP_name == null) SP_name = "SP" + (++SP_counter);

						currentNode.SP = currentElement.adjacentNode.SP = SP_name;

						//add ecuation if is hasnt created for this source
						if(!currentElement.SP)
						{
							ECs[currentElement.elementName] = {};
							ECs[currentElement.elementName][currentNode.nodeName] = currentElement.polarity;
							ECs[currentElement.elementName][currentElement.adjacentNode.nodeName] = currentElement.polarity * -1;
							X[currentElement.elementName] = parseFloat(currentElement.value);
						}

						currentElement.SP = SP_name;
					}
					break;
				case "VSC":
					var placedElements = elementsLayer.find('.placed');
					var n=0;
					for(; n < placedElements.length; ++n)
						if(placedElements[n].attrs.elementId == currentElement.ref_resistor) break;
					
					var ref_resistor = placedElements[n];
					var positiveNodeName = ref_resistor.find('.positiveNode')[0].getAttr('nodeName');
					var negativeNodeName = ref_resistor.find('.negativeNode')[0].getAttr('nodeName');
					var gain = currentElement.value * -1;

					if(currentElement.ref_var != "V"){
						gain /= ref_resistor.getAttr('value');
					}
					
					if(currentElement.adjacentNode == groundNode){
						EC_name = currentNode.nodeName;
						ECs[EC_name] = {};
						ECs[EC_name][EC_name] = currentElement.polarity;

						if(positiveNodeName != groundNodeName)
							ECs[EC_name][positiveNodeName] += gain * currentElement.positiveNodePolarity;

						if(negativeNodeName != groundNodeName)
							ECs[EC_name][negativeNodeName] += gain * currentElement.negativeNodePolarity;	

						break loop_connectedElements;
					}else{
						//must create a supernode
						//get the supernode name or create it if is not setted
						SP_name = currentNode.SP || currentElement.adjacentNode.SP;
						if(SP_name == null) SP_name = "SP" + (++SP_counter);

						currentNode.SP = currentElement.adjacentNode.SP = SP_name;

						//add ecuation if is hasnt created for this source
						if(!currentElement.SP)
						{
							ECs[currentElement.elementName] = {};
							ECs[currentElement.elementName][currentNode.nodeName] = currentElement.polarity;
							ECs[currentElement.elementName][currentElement.adjacentNode.nodeName] = currentElement.polarity * -1;
							
							if(positiveNodeName != groundNodeName)
								ECs[currentElement.elementName][positiveNodeName] += gain * currentElement.positiveNodePolarity;

							if(negativeNodeName != groundNodeName)
								ECs[currentElement.elementName][negativeNodeName] += gain * currentElement.negativeNodePolarity;	
						}

						currentElement.SP = SP_name;
					}
					break;
				case "CS":
					EC_name = currentNode.SP || currentNode.nodeName;

					X[EC_name] = X[EC_name] || 0;
					X[EC_name] = X[EC_name] + currentElement.polarity * parseFloat(currentElement.value);
					break;
				case "CSC":
					EC_name = currentNode.SP || currentNode.nodeName;

					//if the current element is parallel in the supernode cancel the process
					if(currentElement.adjacentNode.SP && currentElement.adjacentNode.SP == EC_name) continue;

					ECs[EC_name] = ECs[EC_name] || {};

					var placedElements = elementsLayer.find('.placed');
					var n=0;
					for(; n < placedElements.length; ++n)
						if(placedElements[n].attrs.elementId == currentElement.ref_resistor) break;
					
					//get the values of the dependent source
					var ref_resistor = placedElements[n];
					var positiveNodeName = ref_resistor.find('.positiveNode')[0].getAttr('nodeName');
					var negativeNodeName = ref_resistor.find('.negativeNode')[0].getAttr('nodeName');
					var gain = currentElement.value * currentElement.polarity * -1;

					if(currentElement.ref_var != "V"){
						gain /= ref_resistor.getAttr('value');
					}

					//apply the equations if the node is different to ground
					if(positiveNodeName != groundNodeName){
						ECs[EC_name][positiveNodeName] = ECs[EC_name][positiveNodeName] || 0;
						ECs[EC_name][positiveNodeName] = ECs[EC_name][positiveNodeName] + gain * currentElement.positiveNodePolarity;
					}

					if(negativeNodeName != groundNodeName){
						ECs[EC_name][negativeNodeName] = ECs[EC_name][negativeNodeName] || 0;
						ECs[EC_name][negativeNodeName] = ECs[EC_name][negativeNodeName] + gain * currentElement.negativeNodePolarity;
					}

					break;
				case "R":
					EC_name = currentNode.SP || currentNode.nodeName;

					//if the current element is parallel in the supernode cancel the process
					if(currentElement.adjacentNode.SP && currentElement.adjacentNode.SP == EC_name) continue;

					ECs[EC_name] = ECs[EC_name] || {};
					ECs[EC_name][currentNode.nodeName] = ECs[EC_name][currentNode.nodeName] || 0;
					ECs[EC_name][currentNode.nodeName] = ECs[EC_name][currentNode.nodeName] + 1 / currentElement.value;

					if(currentElement.adjacentNode != groundNode)
					{
						if(!currentElement.adjacentNode.voltage)
						{
							ECs[EC_name][currentElement.adjacentNode.nodeName] = ECs[EC_name][currentElement.adjacentNode.nodeName] || 0;
							ECs[EC_name][currentElement.adjacentNode.nodeName] = ECs[EC_name][currentElement.adjacentNode.nodeName] + (-1 / currentElement.value);
						}
						else
						{
							X[EC_name] = X[EC_name] || 0;
							X[EC_name] = X[EC_name] + currentElement.adjacentNode.voltage / currentElement.value;
						}

					}
					break;
			}
		}
	}

	var cols = {}, rows = {};
	var cols_count = 0, rows_count = 0;
	var matrix = [], xMatrix = [];

	for(var i in ECs){
		rows[i] = rows_count++;
		for(var j in ECs[i])
		{
			//if the node already has voltage sum the product to X vector
			if(circuit[j].voltage){
				X[i] = X[i] || 0;
				X[i] = X[i] - circuit[j].voltage * ECs[i][j];
				continue;
			}
			if(cols[j] == null)
				cols[j] = cols_count++;
		}
	}
	
	for(var i in rows){
		matrix[rows[i]] = [];
		xMatrix[rows[i]] = X[i] || 0;
		for(var j in cols)
		{
			matrix[rows[i]][cols[j]] = ECs[i][j] || 0;
		}
	}

	var solutionMatrix = numeric.dot(numeric.inv(matrix), xMatrix);
	
	for(i in cols)
	{
		circuit[i].voltage = solutionMatrix[cols[i]];
	}

	console.log(matrix);
	console.log(xMatrix);
	console.log(solutionMatrix);
}

function elementClick(){
	if(state == states.thevenin_analysis){
		thevenin(this.parent.getAttr('elementId'));
	}

	if(state != states.nothing) return;

	if(selectedObject && selectedObject.getClassName() == 'Line')
	{
		selectedObject.setStroke('black');
		selectedObject.draw();
	}

	elementsLayer.get('.placed').each(function(element){
		element.get('Path')[0].setStroke('black');
		element.draw();
	});

	selectedObject = this.parent;
	selectedObject.get('Path')[0].setStroke('red');
	selectedObject.draw();
	elementsLayer.draw();
	connectorsLayer.draw();
}

function lineClick(){
	if(state == states.node_analysis)
	{
		selectedObject = connectorsLayer.get('#' + this.getAttr('refLineId'))[0];
		console.log(selectedObject);
		var circuit = getCircuit();
		nodeAnalysis(circuit,selectedObject.getAttr("nodeName"));

		$("#analysis_results ul.nav-list li.node_result").remove();
		for(i in circuit)
			$("#label_results").after("<li class='node_result' data-node_name='"+ i +"'><a href='#'>"+ i + ": " + (Math.round(circuit[i].voltage*1000) / 1000) + "</a></li>");
		
		stage.draw();
	}
	if(state == states.nothing)
	{
		connectorsLayer.get('.drawnLine').each(function(line){
			line.setStroke('black');
		});

		if(selectedObject && selectedObject.getClassName() == "Group")
		{
			selectedObject.get('Path')[0].setStroke('black');
			selectedObject.get('Path')[0].draw();
			stage.draw();
		}

		selectedObject = connectorsLayer.get('#' + this.getAttr('refLineId'))[0];
		selectedObject.setStroke('red');
		selectedObject.moveToTop();
		this.moveToTop();
		stage.draw();
	}
}

function getAdjacentConnector(currentConnector){
	if(currentConnector.getName() == 'positiveNode')
		return currentConnector.parent.get('.negativeNode')[0];
	else
		return currentConnector.parent.get('.positiveNode')[0];
}

function deleteObject(){
	if(state != states.nothing) return;
	if(selectedObject)
	{
		if(selectedObject.getClassName() == "Line"){
			var circuitNode = circuitNodes[selectedObject.getAttr("nodeName")];
			var gridNodes = selectedObject.getAttr('gridNodes');
			var gridNode;

			for(i=0; i<gridNodes.length; ++i)
			{
				gridNode = grid[gridNodes[i]];
				//remove line id from the lines in the gridnode
				gridNode.lines.splice(gridNode.lines.indexOf(selectedObject.getId()),1)

				if(gridNode.lines.length == 0)
					gridNode.nodeName = "";
			}

			var startConnector = selectedObject.getAttr('startConnector');
			var endConnector = selectedObject.getAttr('endConnector');

			var divideNode=true;
			if(grid[gridNodes[0]].nodeName == "")
			{
				endConnector.setAttr('nodeName', endConnector.parent.getAttr('elementId'));
				grid[gridNodes[0]].nodeName = endConnector.parent.getAttr('elementId');
				delete circuitNode.connectedElements[endConnector.parent.getAttr('elementId')];
				divideNode = false;
			}

			if(grid[gridNodes[gridNodes.length-1]].nodeName == "")
			{
				startConnector.setAttr('nodeName', startConnector.parent.getAttr('elementId'));
				grid[gridNodes[gridNodes.length-1]].nodeName = startConnector.parent.getAttr('elementId');
				delete circuitNode.connectedElements[startConnector.parent.getAttr('elementId')];
				divideNode = false;
			}

			delete circuitNode.lines[selectedObject.getId()];

			//it is the only line of the circuitnode, must remove the node
			if($.isEmptyObject(circuitNode.lines))
				delete circuitNodes[circuitNode.nodeName];

			console.log(grid[gridNodes[0]]);
			console.log(endConnector.getAbsolutePosition());
			if(divideNode){
				var lineQueue = [];
				var adjacentConnector;
				var currentNode;
				var currentLine;
				var newCircuitNode = { 
					nodeName:'N' + (++counters.N), 
					connectedElements: {}, 
					lines:{}, 
					gridNodes:{}
				};

				currentConnector = endConnector;

				do
				{
					currentConnector.setAttr('nodeName', newCircuitNode.nodeName);
					currentNode = grid[getPosition(currentConnector.getAbsolutePosition()).hash];
					newCircuitNode.connectedElements[currentConnector.parent.getAttr('elementId')] = currentConnector;
					
					for(i=0; i<currentNode.lines.length;++i)
					{
						currentLine = connectorsLayer.get('#' + currentNode.lines[i])[0];
						if(currentLine.getAttr('nodeName') == newCircuitNode.nodeName) continue;

						newCircuitNode.lines[currentLine.getId()] = currentLine;
						delete circuitNodes[currentLine.getAttr('nodeName')].lines[currentLine.getId()];
						currentLine.setAttr('nodeName', newCircuitNode.nodeName);
						for( j = 0; j < currentLine.attrs.gridNodes.length; ++j )
							grid[currentLine.attrs.gridNodes[j]].nodeName = newCircuitNode.nodeName;

						if(getPosition(currentLine.getAttr('endConnector').getAbsolutePosition()).hash == currentNode.hash)
							adjacentConnector = currentLine.getAttr('startConnector');
						else
							adjacentConnector = currentLine.getAttr('endConnector');

						lineQueue.push(currentLine);
					}

					currentLine = lineQueue.shift();
					if(currentLine){
						currentConnector = currentLine.getAttr('startConnector');
						if(currentConnector.getAttr('nodeName') == newCircuitNode.nodeName)
							currentConnector = currentLine.getAttr('endConnector');
					}

				}while(currentConnector.getAttr('nodeName') != newCircuitNode.nodeName);
				circuitNodes[newCircuitNode.nodeName] = newCircuitNode;
			}

			console.log(circuitNodes);
			console.log(selectedObject);

			connectorsLayer.get( '#' + selectedObject.getAttr('hitLineId') )[0].destroy();
			selectedObject.destroy();
			selectedObject = null;

			stage.draw();
		}
	}
}

function showGroundMessage(){
	showModalMessage(
		"Analisis de nodos", 
		"A continuacion seleccione el nodo tierra para iniciar el analisis de nodos."
	);

	connectorsLayer.get(".drawnLine").each(function(path){
		path.setAttr('strokeWidth', '3');
	});

	connectorsLayer.moveToTop();
	stage.draw();

	$("#drawing_area").css("cursor","default");
	
	$("#design_options").slideUp(function(){
		$("#analysis_results").slideDown();
	});

	state = states.node_analysis;
}

function showTheveninMessage(){
	showModalMessage(
		"Equivalente de Thevenin", 
		"Seleccione la resistencia para obtener el equivalente de thevenin correspondiente."
	);

	connectorsLayer.get(".placed").each(function(path){
		path.setAttr('strokeWidth', '3');
	});

	elementsLayer.moveToTop();
	stage.draw();

	$("#drawing_area").css("cursor","default");
	
	$("#design_options").slideUp(function(){
		$("#analysis_results").slideDown();
	});

	state = states.thevenin_analysis;
}

function showModalMessage(header , body){
	$("#modal_message h3").html(header);
	$("#modal_message .modal-body p").html(body);
	$("#modal_message").modal();
}

$(function(){

	stage = new Kinetic.Stage({
      container: 'drawing_area',
      width: S_WIDTH,
      height: S_HEIGHT
   	});
	

	gridLayer = new Kinetic.Layer();
	elementsLayer = new Kinetic.Layer();
	connectorsLayer = new Kinetic.Layer();
	testLayer = new Kinetic.Layer();

	for(var i=10;i<S_HEIGHT;i+=10)
		gridLayer.add(new Kinetic.Line({ points:[0,i,S_WIDTH,i], stroke: 'gray', opacity:.3, strokeWidth: .5}));
	for(var i=10;i<S_WIDTH;i+=10)
		gridLayer.add(new Kinetic.Line({ points:[i,0,i,S_HEIGHT], stroke: 'gray', opacity:.3, strokeWidth: .5}));

	stage.add(gridLayer);
	stage.add(elementsLayer);
	stage.add(connectorsLayer);
	stage.add(testLayer);

	elementsLayer.moveToTop();
	elementsLayer.draw();
	testLayer.hide();

	// events assignments
	stage.on('contentMousedown',mousedown_h);
	stage.on('contentMousemove', moveActions);

	stage_preview = new Kinetic.Stage({
      container: 'resistor_preview',
      width: 80,
      height: 80
   	});

	gridLayer.draw();
	stage.draw();
	previewLayer = new Kinetic.Layer();

	stage_preview.add(previewLayer);

	//bizarre problem with kinetic event assignment must to use jquery events
	$("#drawing_area canvas").mouseleave(hideElement);
	$("#drawing_area canvas").mouseenter(showElement);

	//loadImage(0);
	loadCursors();

	//toolbox elements events
	$("div.toolbox li.element a").click(selectElementType);

	$("#tool_wire").click(showConnectors);
	$("#node_analysis").click(showGroundMessage);
	$("#thevenin_analysis").click(showTheveninMessage);
	
	$("div.toolbox li a[id!=tool_wire]").click(function(){
		hideConnectors();
	});

	$("#tool_pointer").click(function(){
		state = states.nothing;

		$("#drawing_area").css("cursor","default");
		hideConnectors();
	});

	$("div.toolbox li.tool a").click(function(){
		shortcut.remove('r');
	});

	$(".toolbox li").click(function(){
		if($(this).hasClass('active')) return;
		$(".toolbox li.active").removeClass('active');
		$(this).addClass('active');
	})

	$("#modal_input").draggable({
   		handle: ".modal-header",
   		containment: "parent"
	});

	$("#modal_layer, #modal_input").mouseenter(function(){
		if(state != states.placing) return;
		cursor.show();
		elementsLayer.draw();
	})

	validator = $( "#modal_input form" ).validate({
		submitHandler: function(){},
	  	rules: {
	    	decimal_input: {
	      	required: true,
	      	number: true
	    	}
	  	},
	  	messages:{
	  		decimal_input:{
	  			required: "Debe ingresar un valor",
	  			number: "Debe ingresar un valor decimal"
	  		}
	  	},
	  	errorElement: "div",
	  	errorClass: "alert alert-error"
	});

	$("#modal_input a.btn.cancel, #modal_input button.close").click(function(){
		$("#decimal_input").val("");
		validator.resetForm();
		$("#modal_layer, #modal_input").hide();
	});

	$('#modal_message button').click(function () {
	  $('#modal_layer, #modal_message').hide();
	});

	$("#analysis_results ul.nav-list").on('click','li.node_result',function(){
		var nodeName = $(this).data("node_name");
		connectorsLayer.get(".drawnLine").each(function(path){
			if(path.attrs.nodeName == nodeName)
				path.setAttr('stroke', 'blue');
			else
				path.setAttr('stroke', 'black');
			path.draw();
		});
	});

	$("#modal_message, #analysis_results").hide();

	$("#back_to_design").click(function(){
		$("#analysis_results").slideUp(function(){
			$("#analysis_results ul.nav-list li.node_result").remove();
			$("#design_options").slideDown();
			connectorsLayer.get(".drawnLine").each(function(path){
				path.setAttr('strokeWidth', '2');
				path.setStroke('black');
			});
			elementsLayer.moveToTop();
			stage.draw();
			state = states.nothing;
		});
	});

	$("#ref_resistor select").change(function(){
		var placedElements = elementsLayer.get('.placed');
		var selectedId = $(this).val();
		var i=0;
		
		previewLayer.removeChildren();

		for(; i<placedElements.length; ++i)
			if(placedElements[i].getAttr("elementId") == selectedId) break;	

		var previewElement = placedElements[i].clone({x:40, y:40});
		previewLayer.add(previewElement);
		updatePreview();
	});

	$("#ref_var button").click(function(){
		$('#ref_var button').addClass('active').not(this).removeClass('active');
		if($(this).val() == "V")
		{
			$("#ref_polarity div.make-switch label").text("V");
			$("#ref_polarity > label span").text("polaridad");
			$('div.make-switch').bootstrapSwitch('setOnLabel', '+ -');
			$('div.make-switch').bootstrapSwitch('setOffLabel', '- +');
		}else{
			$("#ref_polarity div.make-switch label").text("C");
			$("#ref_polarity > label span").text("direccion");
			$('div.make-switch').bootstrapSwitch('setOnLabel', '<i class="icon-arrow-right" style="color: #fff"></i>');
			$('div.make-switch').bootstrapSwitch('setOffLabel', '<i class="icon-arrow-left" style="color: #fff"></i>');
		}
		updatePreview();
	});

	$('div.make-switch').on('switch-change', function (e, data) {
	    updatePreview();
	});
	shortcut.add('Delete',deleteObject);
});

function updatePreview(){
	if(stage_preview.get('Group').length > 0){
		var previewElement = stage_preview.get('Group')[0];
		var firstConnector = previewElement.get('.positiveNode')[0];
		var secondConnector = previewElement.get('.negativeNode')[0];
		var pos1 = firstConnector.getAbsolutePosition();
		var pos2 = secondConnector.getAbsolutePosition();

		if( pos1.x + pos1.y > pos2.x + pos2.y)
		{
			var temp = firstConnector;
			firstConnector = secondConnector;
			secondConnector = temp;
 			temp = pos1;
 			pos1 = pos2;
 			pos2 = temp;
		}

		//determinate ...
		var vertical = pos1.x > pos1.y;

		//determinate the polarity/direction of the variable
		var polarity = ($('div.make-switch').bootstrapSwitch('status'))?1:-1;
		firstConnector.setAttr('polarity', 1 * polarity);
		secondConnector.setAttr('polarity', -1 * polarity);

		if($("#ref_var button.active").val() == "V")
		{
			//remove current direction arrow if it exists
			if(previewLayer.find('.direction').length != 0) previewLayer.find('.direction')[0].destroy() ;
			
			//if there isn't polarity signs create them
			if(previewLayer.find('.polarity+ , .polarity-').length == 0){
				previewLayer.add(
					new Kinetic.Text({
						name: "polarity+",
						fontSize: 20,
						fontFamily: "arial",
						fontStyle: 'bold',
						fill: 'blue',
						text: '+'
					})
				);

				previewLayer.add(
					new Kinetic.Text({
						fontSize: 20,
						fontFamily: "arial",
						fontStyle: 'bold',
						fill: 'blue',
						name: 'polarity-',
						text: '-'
					})
				);
			}			

			//set position according to 
			if(vertical)
			{
				previewLayer.find('.polarity+')[0].setPosition({x:pos1.x-20, y:pos1.y});
				previewLayer.find('.polarity-')[0].setPosition({x:pos2.x-20, y:pos2.y-20});
			}else{
				previewLayer.find('.polarity+')[0].setPosition({x:pos1.x,y:pos1.y+10});
				previewLayer.find('.polarity-')[0].setPosition({x:pos2.x-10,y:pos2.y+10});
			}

			//swap position of sign if the polarity is inverse
			if(!$('div.make-switch').bootstrapSwitch('status')){
				var temp = previewLayer.find('.polarity+')[0].getPosition();
				previewLayer.find('.polarity+')[0].setPosition( previewLayer.find('.polarity-')[0].getPosition() );
				previewLayer.find('.polarity-')[0].setPosition(temp);
			}

		}else{
			//remove polarity signs if they exist
			if(previewLayer.find('.polarity+ , .polarity-').length != 0){
				previewLayer.find('.polarity+')[0].destroy();
				previewLayer.find('.polarity-')[0].destroy();
			}

			if(previewLayer.find('.direction').length == 0){
				previewLayer.add(
					new Kinetic.Path({
			        	data: 'M3,0 L3,35 L0,35 L3,40L6,35L3,35z',
			        	fill: 'blue',
			        	stroke: 'blue',
						strokeWidth: 2,
			        	rotationDeg: 0,
			        	offset: {x:3,y:20},
			        	name:'direction'
			      	})
				);
			}

			//rotate 180 if the direction is invers
			var fixRotation = ( $('div.make-switch').bootstrapSwitch('status') )?0:180;

			//set position according to 
			if(vertical)
			{
				previewLayer.find('.direction')[0]
				.setPosition({x:pos1.x - 15,y:(pos1.y + pos2.y)/2})
				.setRotationDeg(0 + fixRotation);
			}else{
				previewLayer.find('.direction')[0]
				.setPosition({x:(pos1.x + pos2.x)/2, y: pos1.y + 20})
				.setRotationDeg(-90 + fixRotation);
			}
		}

		previewElement.moveToBottom();
		stage_preview.draw();
	}
}

function thevenin(elementId){
	var circuitOff = getCircuit();
	var circuitOn = getCircuit();
	var currentNode, currentElement, elements;
	var nodeA, nodeB, nodeAOn, nodeBOn;

	//find the voltage sources to merge nodes
	for(var nodeName in circuitOff){
		currentNode =  circuitOff[nodeName];
		elements = currentNode.connectedElements;
		for(var elementName in elements){
			currentElement = elements[elementName];
			if(currentElement.elementType == "VS"){
				//copy the connected elements on adjacent node to merge them
				for(var nodeElement in currentElement.adjacentNode.connectedElements){
					if(nodeElement == elementName) continue;
					currentElement.adjacentNode.connectedElements[nodeElement].adjacentNode.connectedElements[nodeElement].adjacentNode = currentNode;	
					currentNode.connectedElements[nodeElement] = currentElement.adjacentNode.connectedElements[nodeElement];
				}
				
				delete currentNode.connectedElements[elementName];
				delete circuitOff[currentElement.adjacentNode.nodeName];
			}

			if(elementName == elementId){
				nodeA = currentNode.nodeName;
				nodeB = currentElement.adjacentNode.nodeName;
			}
		}
	}

	//find the current source and the resistor to delete them
	for(var nodeName in circuitOff){
		currentNode =  circuitOff[nodeName];
		elements = currentNode.connectedElements;
		var nodeCount = Object.keys(currentNode.connectedElements).length;
		for(var elementName in elements){
			currentElement = elements[elementName];

			if(currentElement.elementName == elementId){
				delete currentNode.connectedElements[elementName];
			}

			if(currentElement.elementType == "CS"){
				delete currentNode.connectedElements[elementName];
				if(currentNode.nodeName == nodeA && nodeCount < 2)
					nodeA = currentElement.adjacentNode.nodeName;
				if(currentNode.nodeName == nodeB && nodeCount < 2)
					nodeB = currentElement.adjacentNode.nodeName;
			}
		}
	}

	//must add a extra iteration to assign the correct terminals for circuit on
	for(var nodeName in circuitOn){
		currentNode =  circuitOn[nodeName];
		elements = currentNode.connectedElements;
		for(var elementName in elements){
			currentElement = elements[elementName];
			if(elementName == elementId){
				nodeAOn = currentNode.nodeName;
				nodeBOn = currentElement.adjacentNode.nodeName;
			}
		}
	}

	delete circuitOff[nodeA].connectedElements[elementId];
	delete circuitOff[nodeB].connectedElements[elementId];
	delete circuitOn[nodeAOn].connectedElements[elementId];
	delete circuitOn[nodeBOn].connectedElements[elementId];	

	if(counters.VSC + counters.CSC == 0){
		circuitOff[nodeB].visited_eq = true;
		var RT = getEquivalentResistor(circuitOff, nodeA);
	
	}else{
		circuitOff[nodeA].connectedElements.CST = {
			polarity: 1,
			elementName: 'CST',
			value: 1,
			elementType: 'CS',
			adjacentNode: circuitOff[nodeB]
		}

		circuitOff[nodeB].connectedElements.CST = {
			polarity: -1,
			elementName: 'CST',
			value: 1,
			elementType: 'CS',
			adjacentNode: circuitOff[nodeA]
		}

		nodeAnalysis(circuitOff, nodeB);

		RT = circuitOff[nodeA].voltage;
	}

	var keys;
	var old;
	while((keys = Object.keys(circuitOn[nodeAOn].connectedElements)).length < 2){
		old = nodeAOn;
		nodeAOn = circuitOn[nodeAOn].connectedElements[keys[0]].adjacentNode.nodeName;
		delete circuitOn[old];
		delete circuitOn[nodeAOn].connectedElements[keys[0]];
	}		

	while((keys = Object.keys(circuitOn[nodeBOn].connectedElements)).length < 2){
		old = nodeBOn;
		nodeBOn = circuitOn[nodeBOn].connectedElements[keys[0]].adjacentNode.nodeName;
		delete circuitOn[old];
		delete circuitOn[nodeBOn].connectedElements[keys[0]];
	}	

	nodeAnalysis(circuitOn, nodeBOn);
	$("#analysis_results ul.nav-list li.node_result").remove();
	console.log(circuitOn);
	$("#label_results").after("<li class='node_result'><a href='#'>Rth: " + (Math.round(RT * 1000) / 1000) + "</a></li>");
	$("#label_results").after("<li class='node_result'><a href='#'>Vth: " + (Math.round(parseFloat(circuitOn[nodeAOn].voltage) * 1000) / 1000) + "</a></li>");
}

function getEquivalentResistor(circuit, nodeA){
	var equivalent = 0;
	var currentElement;
	var nextEquivalent=0;
	if(circuit[nodeA].visited_eq) return 0;

	for(var elementName in circuit[nodeA].connectedElements){
		currentElement = circuit[nodeA].connectedElements[elementName];
		if(circuit[currentElement.adjacentNode.nodeName] && !currentElement.visited_eq){
			currentElement.adjacentNode.connectedElements[elementName].visited_eq = true;
			currentElement.visited_eq = true;
			nextEquivalent = getEquivalentResistor(circuit, currentElement.adjacentNode.nodeName);
			console.log(nextEquivalent)
			equivalent += 1/(currentElement.value + nextEquivalent);
		}
	}

	circuit[nodeA].visited_eq= true;

	if(equivalent != 0)
		return 1 / equivalent;
	else
		return 0;
}
