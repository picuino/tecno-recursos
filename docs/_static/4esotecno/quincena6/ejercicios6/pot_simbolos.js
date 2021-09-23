

//<![CDATA[

<!--




function Client(){
//if not a DOM browser, hopeless
	this.min = false; if (document.getElementById){this.min = true;};

	this.ua = navigator.userAgent;
	this.name = navigator.appName;
	this.ver = navigator.appVersion;  

//Get data about the browser
	this.mac = (this.ver.indexOf('Mac') != -1);
	this.win = (this.ver.indexOf('Windows') != -1);

//Look for Gecko
	this.gecko = (this.ua.indexOf('Gecko') > 1);
	if (this.gecko){
		this.geckoVer = parseInt(this.ua.substring(this.ua.indexOf('Gecko')+6, this.ua.length));
		if (this.geckoVer < 20020000){this.min = false;}
	}
	
//Look for Firebird
	this.firebird = (this.ua.indexOf('Firebird') > 1);
	
//Look for Safari
	this.safari = (this.ua.indexOf('Safari') > 1);
	if (this.safari){
		this.gecko = false;
	}
	
//Look for IE
	this.ie = (this.ua.indexOf('MSIE') > 0);
	if (this.ie){
		this.ieVer = parseFloat(this.ua.substring(this.ua.indexOf('MSIE')+5, this.ua.length));
		if (this.ieVer < 5.5){this.min = false;}
	}
	
//Look for Opera
	this.opera = (this.ua.indexOf('Opera') > 0);
	if (this.opera){
		this.operaVer = parseFloat(this.ua.substring(this.ua.indexOf('Opera')+6, this.ua.length));
		if (this.operaVer < 7.04){this.min = false;}
	}
	if (this.min == false){
		alert('Your browser may not be able to handle this page.');
	}
	
//Special case for the horrible ie5mac
	this.ie5mac = (this.ie&&this.mac&&(this.ieVer<6));
}

var C = new Client();

//for (prop in C){
//	alert(prop + ': ' + C[prop]);
//}



//CODE FOR HANDLING NAV BUTTONS AND FUNCTION BUTTONS

//[strNavBarJS]
function NavBtnOver(Btn){
	if (Btn.className != 'NavButtonDown'){Btn.className = 'NavButtonUp';}
}

function NavBtnOut(Btn){
	Btn.className = 'NavButton';
}

function NavBtnDown(Btn){
	Btn.className = 'NavButtonDown';
}
//[/strNavBarJS]

function FuncBtnOver(Btn){
	if (Btn.className != 'FuncButtonDown'){Btn.className = 'FuncButtonUp';}
}

function FuncBtnOut(Btn){
	Btn.className = 'FuncButton';
}

function FuncBtnDown(Btn){
	Btn.className = 'FuncButtonDown';
}

function FocusAButton(){
	if (document.getElementById('CheckButton1') != null){
		document.getElementById('CheckButton1').focus();
	}
	else{
		if (document.getElementById('CheckButton2') != null){
			document.getElementById('CheckButton2').focus();
		}
		else{
			document.getElementsByTagName('button')[0].focus();
		}
	}
}




//CODE FOR HANDLING DISPLAY OF POPUP FEEDBACK BOX

var topZ = 1000;

function ShowMessage(Feedback){
	var Output = Feedback + '<br /><br />';
	document.getElementById('FeedbackContent').innerHTML = Output;
	var FDiv = document.getElementById('FeedbackDiv');
	topZ++;
	FDiv.style.zIndex = topZ;
	FDiv.style.top = TopSettingWithScrollOffset(30) + 'px';

	FDiv.style.display = 'block';

	ShowElements(false, 'input');
	ShowElements(false, 'select');
	ShowElements(false, 'object');
	ShowElements(true, 'object', 'FeedbackContent');

//Focus the OK button
	setTimeout("document.getElementById('FeedbackOKButton').focus()", 50);
	
//
//	RefreshImages();
//
}

function ShowElements(Show, TagName, ContainerToReverse){
// added third argument to allow objects in the feedback box to appear
//IE bug -- hide all the form elements that will show through the popup
//FF on Mac bug : doesn't redisplay objects whose visibility is set to visible
//unless the object's display property is changed

	//get container object (by Id passed in, or use document otherwise)
	TopNode = document.getElementById(ContainerToReverse);
	var Els;
	if (TopNode != null) {
		Els = TopNode.getElementsByTagName(TagName);
	} else {
		Els = document.getElementsByTagName(TagName);
	}

	for (var i=0; i<Els.length; i++){
		if (TagName == "object") {
			//manipulate object elements in all browsers
			if (Show == true){
				Els[i].style.visibility = 'visible';
				//get Mac FireFox to manipulate display, to force screen redraw
				if (C.mac && C.gecko) {Els[i].style.display = '';}
			}
			else{
				Els[i].style.visibility = 'hidden';
				if (C.mac && C.gecko) {Els[i].style.display = 'none';}
			}
		} 
		else {
			// tagName is either input or select (that is, Form Elements)
			// ie6 has a problem with Form elements, so manipulate those
			if (C.ie) {
				if (C.ieVer < 7) {
					if (Show == true){
						Els[i].style.visibility = 'visible';
					}
					else{
						Els[i].style.visibility = 'hidden';
					}
				}
			}
		}
	}
}



function HideFeedback(){
	document.getElementById('FeedbackDiv').style.display = 'none';
	ShowElements(true, 'input');
	ShowElements(true, 'select');
	ShowElements(true, 'object');
	if (Finished == true){
		Finish();
	}
}


//GENERAL UTILITY FUNCTIONS AND VARIABLES

//PAGE DIMENSION FUNCTIONS
function PageDim(){
//Get the page width and height
	this.W = 600;
	this.H = 400;
	this.W = document.getElementsByTagName('body')[0].clientWidth;
	this.H = document.getElementsByTagName('body')[0].clientHeight;
}

var pg = null;

function GetPageXY(El) {
	var XY = {x: 0, y: 0};
	while(El){
		XY.x += El.offsetLeft;
		XY.y += El.offsetTop;
		El = El.offsetParent;
	}
	return XY;
}

function GetScrollTop(){
	if (typeof(window.pageYOffset) == 'number'){
		return window.pageYOffset;
	}
	else{
		if ((document.body)&&(document.body.scrollTop)){
			return document.body.scrollTop;
		}
		else{
			if ((document.documentElement)&&(document.documentElement.scrollTop)){
				return document.documentElement.scrollTop;
			}
			else{
				return 0;
			}
		}
	}
}

function GetViewportHeight(){
	if (typeof window.innerHeight != 'undefined'){
		return window.innerHeight;
	}
	else{
		if (((typeof document.documentElement != 'undefined')&&(typeof document.documentElement.clientHeight !=
     'undefined'))&&(document.documentElement.clientHeight != 0)){
			return document.documentElement.clientHeight;
		}
		else{
			return document.getElementsByTagName('body')[0].clientHeight;
		}
	}
}

function TopSettingWithScrollOffset(TopPercent){
	var T = Math.floor(GetViewportHeight() * (TopPercent/100));
	return GetScrollTop() + T; 
}

//CODE FOR AVOIDING LOSS OF DATA WHEN BACKSPACE KEY INVOKES history.back()
var InTextBox = false;

function SuppressBackspace(e){ 
	if (InTextBox == true){return;}
	if (C.ie) {
		thisKey = window.event.keyCode;
	}
	else {
		thisKey = e.keyCode;
	}

	var Suppress = false;

	if (thisKey == 8) {
		Suppress = true;
	}

	if (Suppress == true){
		if (C.ie){
			window.event.returnValue = false;	
			window.event.cancelBubble = true;
		}
		else{
			e.preventDefault();
		}
	}
}

if (C.ie){
	document.attachEvent('onkeydown',SuppressBackspace);
	window.attachEvent('onkeydown',SuppressBackspace);
}
else{
	if (window.addEventListener){
		window.addEventListener('keypress',SuppressBackspace,false);
	}
}

function ReduceItems(InArray, ReduceToSize){
	var ItemToDump=0;
	var j=0;
	while (InArray.length > ReduceToSize){
		ItemToDump = Math.floor(InArray.length*Math.random());
		InArray.splice(ItemToDump, 1);
	}
}

function Shuffle(InArray){
	var Num;
	var Temp = new Array();
	var Len = InArray.length;

	var j = Len;

	for (var i=0; i<Len; i++){
		Temp[i] = InArray[i];
	}

	for (i=0; i<Len; i++){
		Num = Math.floor(j  *  Math.random());
		InArray[i] = Temp[Num];

		for (var k=Num; k < (j-1); k++) {
			Temp[k] = Temp[k+1];
		}
		j--;
	}
	return InArray;
}

function WriteToInstructions(Feedback) {
	document.getElementById('InstructionsDiv').innerHTML = Feedback;

	RefreshImages();

}



Imgs = new Array();

function PreloadImages(){
	var a = PreloadImages.arguments;
	for (var i=0; i<a.length; i++){
		Imgs[i] = new Image();
		Imgs[i].src = a[i];
	}
}

function RefreshImages(){
	for (var i=0; i<document.images.length; i++){
		if (document.images[i].name.substring(0,6) != 'NavBar'){
			document.images[i].src = document.images[i].src;
		}
	}
}


function EscapeDoubleQuotes(InString){
	return InString.replace(/"/g, '&quot;')
}

function TrimString(InString){
        var x = 0;

        if (InString.length != 0) {
                while ((InString.charAt(InString.length - 1) == '\u0020') || (InString.charAt(InString.length - 1) == '\u000A') || (InString.charAt(InString.length - 1) == '\u000D')){
                        InString = InString.substring(0, InString.length - 1)
                }

                while ((InString.charAt(0) == '\u0020') || (InString.charAt(0) == '\u000A') || (InString.charAt(0) == '\u000D')){
                        InString = InString.substring(1, InString.length)
                }

                while (InString.indexOf('  ') != -1) {
                        x = InString.indexOf('  ')
                        InString = InString.substring(0, x) + InString.substring(x+1, InString.length)
                 }

                return InString;
        }

        else {
                return '';
        }
}

function FindLongest(InArray){
	if (InArray.length < 1){return -1;}

	var Longest = 0;
	for (var i=1; i<InArray.length; i++){
		if (InArray[i].length > InArray[Longest].length){
			Longest = i;
		}
	}
	return Longest;
}

//UNICODE CHARACTER FUNCTIONS
function IsCombiningDiacritic(CharNum){
	var Result = (((CharNum >= 0x0300)&&(CharNum <= 0x370))||((CharNum >= 0x20d0)&&(CharNum <= 0x20ff)));
	Result = Result || (((CharNum >= 0x3099)&&(CharNum <= 0x309a))||((CharNum >= 0xfe20)&&(CharNum <= 0xfe23)));
	return Result;
}

function IsCJK(CharNum){
	return ((CharNum >= 0x3000)&&(CharNum < 0xd800));
}

//SETUP FUNCTIONS
//BROWSER WILL REFILL TEXT BOXES FROM CACHE IF NOT PREVENTED
function ClearTextBoxes(){
	var NList = document.getElementsByTagName('input');
	for (var i=0; i<NList.length; i++){
		if ((NList[i].id.indexOf('Guess') > -1)||(NList[i].id.indexOf('Gap') > -1)){
			NList[i].value = '';
		}
		if (NList[i].id.indexOf('Chk') > -1){
			NList[i].checked = '';
		}
	}
}

//EXTENSION TO ARRAY OBJECT
function Array_IndexOf(Input){
	var Result = -1;
	for (var i=0; i<this.length; i++){
		if (this[i] == Input){
			Result = i;
		}
	}
	return Result;
}
Array.prototype.indexOf = Array_IndexOf;

//IE HAS RENDERING BUG WITH BOTTOM NAVBAR
function RemoveBottomNavBarForIE(){
	if ((C.ie)&&(document.getElementById('Reading') != null)){
		if (document.getElementById('BottomNavBar') != null){
			document.getElementById('TheBody').removeChild(document.getElementById('BottomNavBar'));
		}
	}
}




//HOTPOTNET-RELATED CODE

var HPNStartTime = (new Date()).getTime();
var SubmissionTimeout = 30000;
var Detail = ''; //Global that is used to submit tracking data

function Finish(){
//If there's a form, fill it out and submit it
	if (document.store != null){
		Frm = document.store;
		Frm.starttime.value = HPNStartTime;
		Frm.endtime.value = (new Date()).getTime();
		Frm.mark.value = Score;
		Frm.detail.value = Detail;
		Frm.submit();
	}
}



function Card(ID, OverlapTolerance){
	this.elm=document.getElementById(ID);
	this.name=ID;
	this.css=this.elm.style;
	this.elm.style.left = 0 +'px';
	this.elm.style.top = 0 +'px';
	this.HomeL = 0;
	this.HomeT = 0;
	this.tag=-1;
	this.index=-1;
	this.OverlapTolerance = OverlapTolerance;
}

function CardGetL(){return parseInt(this.css.left)}
Card.prototype.GetL=CardGetL;

function CardGetT(){return parseInt(this.css.top)}
Card.prototype.GetT=CardGetT;

function CardGetW(){return parseInt(this.elm.offsetWidth)}
Card.prototype.GetW=CardGetW;

function CardGetH(){return parseInt(this.elm.offsetHeight)}
Card.prototype.GetH=CardGetH;

function CardGetB(){return this.GetT()+this.GetH()}
Card.prototype.GetB=CardGetB;

function CardGetR(){return this.GetL()+this.GetW()}
Card.prototype.GetR=CardGetR;

function CardSetL(NewL){this.css.left = NewL+'px'}
Card.prototype.SetL=CardSetL;

function CardSetT(NewT){this.css.top = NewT+'px'}
Card.prototype.SetT=CardSetT;

function CardSetW(NewW){this.css.width = NewW+'px'}
Card.prototype.SetW=CardSetW;

function CardSetH(NewH){this.css.height = NewH+'px'}
Card.prototype.SetH=CardSetH;

function CardInside(X,Y){
	var Result=false;
	if(X>=this.GetL()){if(X<=this.GetR()){if(Y>=this.GetT()){if(Y<=this.GetB()){Result=true;}}}}
	return Result;
}
Card.prototype.Inside=CardInside;

function CardSwapColours(){
	var c=this.css.backgroundColor;
	this.css.backgroundColor=this.css.color;
	this.css.color=c;
}
Card.prototype.SwapColours=CardSwapColours;

function CardHighlight(){
	this.css.backgroundColor='#000000';
	this.css.color='#FFFFFF';
}
Card.prototype.Highlight=CardHighlight;

function CardUnhighlight(){
	this.css.backgroundColor='#FFFFFF';
	this.css.color='#000000';
}
Card.prototype.Unhighlight=CardUnhighlight;

function CardOverlap(OtherCard){
	var smR=(this.GetR()<(OtherCard.GetR()+this.OverlapTolerance))? this.GetR(): (OtherCard.GetR()+this.OverlapTolerance);
	var lgL=(this.GetL()>OtherCard.GetL())? this.GetL(): OtherCard.GetL();
	var HDim=smR-lgL;
	if (HDim<1){return 0;}
	var smB=(this.GetB()<OtherCard.GetB())? this.GetB(): OtherCard.GetB();
	var lgT=(this.GetT()>OtherCard.GetT())? this.GetT(): OtherCard.GetT();
	var VDim=smB-lgT;
	if (VDim<1){return 0;}
	return (HDim*VDim);	
}
Card.prototype.Overlap=CardOverlap;

function CardDockToR(OtherCard){
	this.SetL(OtherCard.GetR() + 5);
	this.SetT(OtherCard.GetT());
}

Card.prototype.DockToR=CardDockToR;

function CardSetHome(){
	this.HomeL=this.GetL();
	this.HomeT=this.GetT();
}
Card.prototype.SetHome=CardSetHome;

function CardGoHome(){
	this.SetL(this.HomeL);
	this.SetT(this.HomeT);
}

Card.prototype.GoHome=CardGoHome;

//Fix for 6.2.5.2: avoid image dragging problem in draggable cards
function CardSetHTML(HTML){
	this.elm.innerHTML = HTML;
	var DragImgs = this.elm.getElementsByTagName('img');
	if (DragImgs.length > 0){
		for (var i=0; i<DragImgs.length; i++){
			DragImgs[i]. onmousedown = function(){return false;}
		}
	}
}

Card.prototype.SetHTML = CardSetHTML;

function doDrag(e) {
	if (CurrDrag == -1) {return};
	if (C.ie){var Ev = window.event}else{var Ev = e}
	var difX = Ev.clientX-window.lastX; 
	var difY = Ev.clientY-window.lastY; 
	var newX = DC[CurrDrag].GetL()+difX; 
	var newY = DC[CurrDrag].GetT()+difY; 
	DC[CurrDrag].SetL(newX); 
	DC[CurrDrag].SetT(newY);
	window.lastX = Ev.clientX; 
	window.lastY = Ev.clientY; 
	return false;
} 

function beginDrag(e, DragNum) { 
	CurrDrag = DragNum;
	if (C.ie){
		var Ev = window.event;
		document.onmousemove=doDrag;
		document.onmouseup=endDrag;
	}
	else{
		var Ev = e;
		window.onmousemove=doDrag; 
		window.onmouseup=endDrag;
	} 
	DC[CurrDrag].Highlight();
	topZ++;
	DC[CurrDrag].css.zIndex = topZ;
	window.lastX=Ev.clientX; 
	window.lastY=Ev.clientY;
	return false;  
} 

function endDrag(e) { 
	if (CurrDrag == -1) {return};
	DC[CurrDrag].Unhighlight();
	if (C.ie){document.onmousemove=null}else{window.onmousemove=null;}
	onEndDrag();	
	CurrDrag = -1;
//Need a bugfix for Opera focus problem here
	if (C.opera){FocusAButton();}
	return true;
} 

var CurrDrag = -1;
var topZ = 100;






//JMATCH-SPECIFIC CORE JAVASCRIPT CODE

var CorrectResponse = 'Muy bien!';
var IncorrectResponse = 'Lo siento. Prueba de nuevo. Las respuestas incorrectas han sido borradas';
var YourScoreIs = 'Tu puntuaci&#x00F3;n es:';
var DivWidth = 600; //default value
var FeedbackWidth = 200; //default
var ExBGColor = '#FFFFFF';
var PageBGColor = '#C0C0C0';
var TextColor = '#000000';
var TitleColor = '#000000';
var Penalties = 0;
var Score = 0;
var TimeOver = false;
var Locked = false;
var ShuffleQs = false;
var QsToShow = 5;

var DragWidth = 200;
var LeftColPos = 100;
var RightColPos = 500;
var DragTop = 120;
var Finished = false;
var AnswersTried = '';

//Fixed and draggable card arrays
FC = new Array();
DC = new Array();

function onEndDrag(){ 
//Is it dropped on any of the fixed cards?
	var Docked = false;
	var DropTarget = DroppedOnFixed(CurrDrag);
	if (DropTarget > -1){
//If so, send home any card that is currently docked there
		for (var i=0; i<DC.length; i++){
			if (DC[i].tag == DropTarget+1){
				DC[i].GoHome();
				DC[i].tag = 0;
				D[i][2] = 0;
			}
		}
//Dock the dropped card
		DC[CurrDrag].DockToR(FC[DropTarget]);
		D[CurrDrag][2] = F[DropTarget][1];
		DC[CurrDrag].tag = DropTarget+1;
		Docked = true;
	}

	if (Docked == false){
		DC[CurrDrag].GoHome();
		DC[CurrDrag].tag = 0;
		D[CurrDrag][2] = 0;
	}
} 

function DroppedOnFixed(DNum){
	var Result = -1;
	var OverlapArea = 0;
	var Temp = 0;
	for (var i=0; i<FC.length; i++){
		Temp = DC[DNum].Overlap(FC[i]);
		if (Temp > OverlapArea){
			OverlapArea = Temp;
			Result = i;
		}
	}
	return Result;
}


function StartUp(){






	PreloadImages('120px-Logic-gate-and-iec.png','120px-Logic-gate-or-iec.png','120px-Logic-gate-inv-iec.png','120px-Logic-gate-nand-iec.png','120px-Logic-gate-nor-iec.png');


//Calculate page dimensions and positions
	pg = new PageDim();
	DivWidth = Math.floor((pg.W*4)/5);
	DragWidth = Math.floor((DivWidth*3)/10);
	LeftColPos = Math.floor(pg.W/15);
	RightColPos = pg.W - (DragWidth + LeftColPos);
	DragTop = parseInt(document.getElementById('CheckButtonDiv').offsetHeight) + parseInt(document.getElementById('CheckButtonDiv').offsetTop) + 10;

	if (C.ie){
		DragTop += 15;
	}
	
//Reduce array if required
	if (QsToShow < F.length){
		ReduceItems2();
	}
	
//Shuffle the left items if required
	if (ShuffleQs == true){
		F = Shuffle(F);
	}

//Shuffle the items on the right
	D = Shuffle(D);

	var CurrTop = DragTop;
	var TempInt = 0;
	var DropHome = 0;
	var Widest = 0;
	var CardContent = '';
	for (var i=0; i<F.length; i++){
		CardContent = F[i][0];
		FC[i] = new Card('F' + i, 10);
		FC[i].elm.innerHTML = CardContent; 
		if (FC[i].GetW() > Widest){
			Widest = FC[i].GetW();
		}
	}
	if (Widest > DragWidth){Widest = DragWidth;}

	CurrTop = DragTop;

	DragWidth = Math.floor((DivWidth-Widest)/2) - 24;
	RightColPos = DivWidth + LeftColPos - (DragWidth + 14);
	var Highest = 0;
	var WidestRight = 0;

	for (i=0; i<D.length; i++){
		DC[i] = new Card('D' + i, 10);
		CardContent = D[i][0];
		
//Fix for 6.2.5.2 problem with dragging images.
		DC[i].SetHTML(CardContent);
		//DC[i].elm.innerHTML = CardContent;  //old version
		if (DC[i].GetW() > DragWidth){DC[i].SetW(DragWidth);}
		DC[i].css.cursor = 'move';
		DC[i].css.backgroundColor = '#FFFFFF';
		DC[i].css.color = '#000000';
		TempInt = DC[i].GetH();
		if (TempInt > Highest){Highest = TempInt;}
		TempInt = DC[i].GetW();
		if (TempInt > WidestRight){WidestRight = TempInt;}
	}

//Fix for 6.2: the reduction by 12 seems to be required -- no idea why!
	var HeightToSet = Highest-12;
	var WidthToSet = WidestRight-12;

	for (i=0; i<D.length; i++){
		DC[i].SetT(CurrTop);
		DC[i].SetL(RightColPos);
		if (DC[i].GetH() < Highest){
			DC[i].SetH(HeightToSet);
		}
		if (DC[i].GetW() < WidestRight){
			DC[i].SetW(WidthToSet);
		}
		DC[i].SetHome();
		DC[i].tag = -1;
		CurrTop = CurrTop + DC[i].GetH() + 5;
	}

	CurrTop = DragTop;

	for (var i=0; i<F.length; i++){
		FC[i].SetW(Widest);
		if (FC[i].GetH() < Highest){
			FC[i].SetH(HeightToSet);
		}
		FC[i].SetT(CurrTop);
		FC[i].SetL(LeftColPos);
		FC[i].SetHome();
		TempInt = FC[i].GetH();
		CurrTop = CurrTop + TempInt + 5;
	}



}



F = new Array();
F[0] = new Array();
F[0][0]='AND';
F[0][1] = 1;
F[1] = new Array();
F[1][0]='OR';
F[1][1] = 2;
F[2] = new Array();
F[2][0]='NOT';
F[2][1] = 3;
F[3] = new Array();
F[3][0]='NAND';
F[3][1] = 4;
F[4] = new Array();
F[4][0]='NOR';
F[4][1] = 5;


D = new Array();
D[0] = new Array();
D[0][0]='<img src="120px-Logic-gate-and-iec.png" alt="../imagenes6/120px-Logic-gate-and-iec.png" title="120px-Logic-gate-and-iec" width="120" height="53"></img>';
D[0][1] = 1;
D[0][2] = 0;
D[1] = new Array();
D[1][0]='<img src="120px-Logic-gate-or-iec.png" alt="120px-Logic-gate-or-iec.png" title="120px-Logic-gate-or-iec" width="120" height="53"></img>';
D[1][1] = 2;
D[1][2] = 0;
D[2] = new Array();
D[2][0]='<img src="120px-Logic-gate-inv-iec.png" alt="120px-Logic-gate-inv-iec.png" title="120px-Logic-gate-inv-iec" width="120" height="53"></img>';
D[2][1] = 3;
D[2][2] = 0;
D[3] = new Array();
D[3][0]='<img src="120px-Logic-gate-nand-iec.png" alt="120px-Logic-gate-nand-iec.png" title="120px-Logic-gate-nand-iec" width="120" height="53"></img>';
D[3][1] = 4;
D[3][2] = 0;
D[4] = new Array();
D[4][0]='<img src="120px-Logic-gate-nor-iec.png" alt="120px-Logic-gate-nor-iec.png" title="120px-Logic-gate-nor-iec" width="120" height="53"></img>';
D[4][1] = 5;
D[4][2] = 0;


function ReduceItems2(){
	var ItemToDump=0;
	var j=0;
	while (F.length > QsToShow){
		ItemToDump = Math.floor(F.length*Math.random());
		for (j=ItemToDump; j<(F.length-1); j++){
			F[j] = F[j+1];
		}
		for (j=ItemToDump; j<(D.length-1); j++){
			D[j] = D[j+1];
		}		
		F.length = F.length-1;
		D.length = D.length-1;
	}
}

function TimerStartUp(){
	setTimeout('StartUp()', 300);
}

function CheckAnswers(){
	if (Locked == true){return;}
//Set the default score and response
	var TotalCorrect = 0;
	Score = 0;
	var Feedback = '';

//for each fixed, check to see if the tag value for the draggable is the same as the fixed
	if (AnswersTried.length > 0){AnswersTried += ' | ';}
	var i, j;
	for (i=0; i<D.length; i++){
		if (i>0){AnswersTried += ',';}
		AnswersTried += D[i][1] + '.' + D[i][2] + '';
		if ((D[i][2] == D[i][1])&&(D[i][2] > 0)){
			TotalCorrect++;
		}
		else{
//Change made for version 6.0.3.41: don't send wrong items home, 
//show them in a more conspicuous way.
//			DC[i].GoHome();
				DC[i].SetL(DC[i].GetL() + 10);
				DC[i].Highlight();
		}
	}

	Score = Math.floor((100*(TotalCorrect-Penalties))/F.length);

	var AllDone = false;

	if (TotalCorrect == F.length) {
		AllDone = true;
	}

	if (AllDone == true){
		Feedback = YourScoreIs + ' ' + Score + '%.';
		ShowMessage(Feedback + '<br />' + CorrectResponse);
	}
	else {
		Feedback = YourScoreIs + ' ' + Score + '%.' + '<br />' + IncorrectResponse;
		ShowMessage(Feedback);
		Penalties++; // Penalty for inaccurate check
	}
//If the exercise is over, deal with that
	if ((AllDone == true)||(TimeOver == true)){


		TimeOver = true;
		Locked = true;
		Finished = true;
		setTimeout('Finish()', SubmissionTimeout);
		WriteToInstructions(Feedback);
	}

}









//-->

//]]>


