// hashtable for storing the grid nodes
// this avoid to use unnecesary node of the graphic grid
var grid = {};

function findPath(from, to, circuitNode){
	var openList = {};
	var closeList = {};
	var parent={};
	var path="";
	var moveCost = 1;
	
	endNode = getNode({position:to});

	parent = getNode({position: from, endPoint: endNode});

	parent.g = 0;
	parent.f = parent.g + parent.h;
	parent.parent = null;

	closeList[parent.hash] = parent;

	var i=0,j;
	var tempNode;
	var index;

	// do while the endpoint is not reached
	main_loop:
	while(parent.hash != to.hash)
	{	
		//visit neighbors
		for(index in parent.neighbors)
		{
			//get current neighbor node
			tempNode = getNode({position: parent.neighbors[index], endPoint: endNode});
			
			//if it is already in the closeList or state is not possible to add continue with the next neighbor
			if(!!closeList[tempNode.hash] || ( !(tempNode.nodeName == circuitNode || tempNode.nodeName == "") && tempNode.hash != endNode.hash)) continue;

			// if it isn't in openList add it and set the parent to current procesed node
			if(!openList[tempNode.hash]){
				tempNode.g = parent.g + moveCost;
				tempNode.parent = parent;
			}else{
				//if it is in the openlist check if the current node is a shorter path
				tempNode = openList[tempNode.hash];
				if(tempNode.g > parent.g + moveCost){
					tempNode.g = parent.g + moveCost;
					tempNode.parent = parent;
				}
			}

			//verify if the neighbor is the endNode
			if(tempNode.h==0){
				parent = tempNode;
				break main_loop;
			}

			tempNode.f = tempNode.g + tempNode.h;
			openList[tempNode.hash] = tempNode;
		}
		
		//select the nearest node to destiny from the openlist
		tempNode = undefined;
		for(index in openList)
		{
			tempNode = tempNode || openList[index];
			if(tempNode.f > openList[index].f) tempNode = openList[index];
		}

		//if none is found return empty string
		if(tempNode == undefined)
		{
			/*for(index in openList)
				testLayer.add(new Kinetic.Circle({
					x: openList[index].x,
					y: openList[index].y,
					fill: 'green',
					stroke: 'black',
					strokeWidth: 1,
					radius: 2
				}));

			for(index in closeList)
				testLayer.add(new Kinetic.Circle({
					x: closeList[index].x - 1,
					y: closeList[index].y - 1,
					fill: '#5395ee',
					stroke: 'black',
					strokeWidth: 1,
					radius: 2
				}));

			testLayer.draw();*/
			return "";
		}

		//take out the node from the open list and add it to the close list
		delete openList[tempNode.hash];
		closeList[tempNode.hash] = tempNode;

		//process the current
		parent = tempNode;
	}

	
	/*for(index in openList)
		testLayer.add(new Kinetic.Circle({
			x: openList[index].x,
			y: openList[index].y,
			fill: 'green',
			stroke: 'black',
			strokeWidth: 1,
			radius: 2
		}));

	for(index in closeList)
		testLayer.add(new Kinetic.Circle({
			x: closeList[index].x - 1,
			y: closeList[index].y - 1,
			fill: '#5395ee',
			stroke: 'black',
			strokeWidth: 1,
			radius: 2
		}));
	*/
	var i=0;
	path = [];
	do{
		path[i] = parent.hash;
		parent = parent.parent;
		i++;
	}while(parent != null && i<1000)
	
	/*for(index in grid){
		if(grid[index].nodeName != "")
			testLayer.add(new Kinetic.Circle({
				x: grid[index].x - 1,
				y: grid[index].y - 1,
				fill: 'red',
				stroke: 'black',
				strokeWidth: 1,
				radius: 2
			}));
		else
			testLayer.add(new Kinetic.Circle({
				x: grid[index].x - 1,
				y: grid[index].y - 1,
				fill: 'blue',
				stroke: 'black',
				strokeWidth: 1,
				radius: 2
			}));
	}*/

	testLayer.draw();

	//path = path.replace(/^\s+|\s+$/g, '');
	//testLayer.draw();
	return path;
}

function getNode(data){
	var hash = data.position.hash || data.position;
	var pos_x=data.position.x || parseInt(data.position.slice(0,3)); 
	var pos_y=data.position.y || parseInt(data.position.slice(-3));	
	

	if(grid[hash] != undefined)
	{
		grid[hash].h = ((!!data.endPoint)?(Math.abs(pos_x - data.endPoint.x) + Math.abs(pos_y - data.endPoint.y)):0);
		return grid[hash];		
	}


	var new_node = {
		hash: hash,
		x:pos_x,
		y:pos_y,
		f:0,
		g:0,
		h:((!!data.endPoint)?(Math.abs(pos_x - data.endPoint.x) + Math.abs(pos_y - data.endPoint.y)):0),
		parent: null,
		neighbors: {},
		nodeName: "",
		state: 0,
		lines: []
	}
	if(new_node.x - 10 > 0)
		new_node.neighbors["left"] = ("00" + (new_node.x - 10)).slice(-3) + hash.slice(-3);

	if(new_node.x + 10 < S_WIDTH)
		new_node.neighbors["right"] = ("00" + (new_node.x + 10)).slice(-3) + hash.slice(-3);		

	if(new_node.y - 10 > 0)
		new_node.neighbors["up"] = hash.slice(0,3) + ("00" + (new_node.y - 10)).slice(-3);

	if(new_node.y + 10 < S_HEIGHT)
		new_node.neighbors["down"] = hash.slice(0,3) + ("00" + (new_node.y + 10)).slice(-3);

	grid[hash] = new_node;
	return new_node;
}