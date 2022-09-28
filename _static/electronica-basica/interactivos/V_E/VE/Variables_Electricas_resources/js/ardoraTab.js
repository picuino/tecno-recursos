//Creado con Ardora - www.webardora.net
//bajo licencia Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)
//para otros usos contacte con el autor
var timeInterval; $(document).ready(function() {randomSort();timeInterval=setInterval("paintTab()",1000);
var canWidth=$("#ardoraAct").css("width").replace("px","");var canHeight=$("#ardoraAct").css("height").replace("px","");$("#ardoraActCanvas").attr({"width": canWidth,"height": canHeight})
$("#ardoraActCanvasAnim").attr({"width": canWidth,"height": canHeight});
initAct();})
function paintTab(){if (document.getElementById("ardoraTabCanvas")!=null){var canvas = document.getElementById("ardoraTabCanvas");var contexto = canvas.getContext("2d");contexto.fillStyle =$(canvas).css("background-color");
contexto.clearRect(0,0,canvas.width,canvas.height); contexto.lineWidth = 1; contexto.strokeStyle = "black";contexto.fillStyle = "black";if (!isShowMessage){timeAct-=1;}contexto.font="8px Verdana";
var profundidade=1; var x = canvas.width / 2; var y = canvas.width / 2+19;
if (tiTime){profundidade=19;contexto.beginPath();contexto.lineWidth = 1;contexto.fillStyle =colorButton;contexto.fillRect(1,1,68,85);
contexto.fillStyle =colorBack;contexto.fillRect(3,3,64,18);contexto.strokeStyle =colorBack;contexto.strokeRect(3,3,64,18);
contexto.stroke();contexto.beginPath();contexto.textAlign = "left";contexto.fillStyle =colorText;
contexto.fillText("TIEMPO:",8,15);contexto.lineWidth = 5;contexto.stroke();var radius = 25;
var startAngle = ((2*timeAct/timeIni)+1.5) * Math.PI;var endAngle = 1.5*Math.PI;contexto.beginPath();grd = contexto.createRadialGradient(x, y,4, x, y, radius);
grd.addColorStop(0,colorBack);grd.addColorStop(1,colorButton);contexto.fillStyle = grd;contexto.arc(x,y,radius,0,2*Math.PI,false);contexto.fill();;
contexto.lineWidth = 5; if (timeAct>timeIni/4){contexto.strokeStyle =colorSele;}else{contexto.strokeStyle = "red";}
contexto.stroke();if (timeAct<timeIni){contexto.beginPath();contexto.arc(x,y,radius,startAngle,endAngle,false);
if(timeAct>timeIni/4){contexto.strokeStyle =colorButton;}else{contexto.strokeStyle =colorSele;}
contexto.lineWidth = 2;contexto.stroke();}contexto.beginPath();contexto.fillStyle =colorText;contexto.textAlign = "center";
contexto.fillText(timeAct,x,y+4);contexto.stroke();contexto.lineWidth = 1;profundidade=canvas.width+profundidade;if (timeAct==0){goTime();}}
}}
 function printJustify(context, text, x, y, lineHeight, fitWidth) { fitWidth = fitWidth || 0; lineHeight = lineHeight || 20; var outLines=[]; var currentLine = 0;
var lines = text.split(/\r\n|\r|\n/); for (var line = 0; line < lines.length; line++) { if (fitWidth <= 0) { context.fillText(lines[line], x, y + (lineHeight * currentLine));
} else { var words = lines[line].split(" "); var idx = 1; while (words.length > 0 && idx <= words.length) { var str = words.slice(0, idx).join(" ");
var w = context.measureText(str).width; if (w > fitWidth) { if (idx == 1) { idx = 2;} outLines.push(words.slice(0, idx - 1).join(" "));
currentLine++; words = words.splice(idx - 1); idx = 1;} else { idx++; }} if (idx > 0){ outLines.push(words.join(" "));}} currentLine++;}
var maxW=0; for (i=0; i<outLines.length; i++){ if (context.measureText(outLines[i]).width>maxW){maxW=context.measureText(outLines[i]).width}}
for (i=0; i<outLines.length-1; i++){ var wordsLine = outLines[i].split(" "); var indexB=1; var space="  "; while (context.measureText(outLines[i]).width<maxW && indexB>0){ var newLine=""; for (j=0; j<wordsLine.length; j++){ if (j<indexB){
newLine=newLine+wordsLine[j]+space;} else{ newLine=newLine+wordsLine[j]+" ";}} outLines[i]=$.trim(newLine);indexB+=1;if (indexB>wordsLine.length){
indexB=1; space=space+" "} if (i==outLines.length-2){indexB=0;}}} return outLines;}
function roundedRect(ctx,x,y,width,height,radius,color){ ctx.beginPath(); ctx.moveTo(x,y+radius); ctx.lineTo(x,y+height-radius); ctx.quadraticCurveTo(x,y+height,x+radius,y+height);ctx.lineTo(x+width-radius,y+height);
ctx.quadraticCurveTo(x+width,y+height,x+width,y+height-radius); ctx.lineTo(x+width,y+radius); ctx.quadraticCurveTo(x+width,y,x+width-radius,y); ctx.lineTo(x+radius,y); ctx.quadraticCurveTo(x,y,x,y+radius);ctx.closePath();ctx.stroke();
if (color!=""){ if (color.substr(0,9)=="gradient_"){ var my_gradient=ctx.createLinearGradient(x+width/2,y,x+width/2,y+height); my_gradient.addColorStop(0,color.substr(9,20)); my_gradient.addColorStop(1,"white");
ctx.fillStyle=my_gradient; ctx.fill();} else{ ctx.fillStyle=color; ctx.fill();}}}
 function drawDashedLine(context, fromX, fromY, toX, toY, dashPattern) {context.beginPath();var dx = toX - fromX;var dy = toY - fromY;var angle = Math.atan2(dy, dx);var x = fromX;var y = fromY;context.moveTo(fromX, fromY);var idx = 0;var draw = true;
while (!((dx < 0 ? x <= toX : x >= toX) && (dy < 0 ? y <= toY : y >= toY))) {var dashLength = dashPattern[idx++ % dashPattern.length];var nx = x + (Math.cos(angle) * dashLength);x = dx < 0 ? Math.max(toX, nx) : Math.min(toX, nx);var ny = y + (Math.sin(angle) * dashLength);y = dy < 0 ? Math.max(toY, ny) : Math.min(toY, ny);
if (draw) {context.lineTo(x, y);} else { context.moveTo(x, y);} draw = !draw;} context.closePath();context.stroke();};
function paintBubble(ctx, x, y, w, h, xPointer, radius) {if (xPointer == 0) {var xP = x + w / 2;} else {var xP = xPointer;}ctx.fillStyle = colorSele;ctx.globalAlpha = 0.7;ctx.beginPath();ctx.strokeStyle = colorSele;
ctx.lineWidth = "2";roundedRect(ctx, x, y, w, h - 10, 10, colorSele);ctx.moveTo(xP, y + h - 10);ctx.lineTo(xP + 10, y + h - 10);ctx.lineTo(xP + 5, y + h);ctx.lineTo(xP, y + h - 10);ctx.shadowColor = "#999";ctx.shadowBlur = 5;ctx.shadowOffsetX = 3;ctx.shadowOffsetY = 3;ctx.fill();ctx.stroke();}
function showMessage(typeMessage){ var oldTypeGame=typeGame;typeGame=99;isShowMessage=true;
if (typeMessage=="Ok"){ var textMessage=messageOk; var urlMessage=urlOk; var goURLTarget= goURLOk; var borderColor=borderOk;$("#ardoraActCanvas").unbind();}
if (typeMessage == "scoMessage") {var textMessage = scoMessage; var urlMessage = "";var goURLTarget = "";var borderColor = borderAttempts;
}
if (typeMessage=="Time"){var textMessage=messageTime;var urlMessage=urlTime; var goURLTarget= goURLTime; var borderColor=borderTime;}
if (typeMessage=="Error"){var textMessage=messageError;var urlMessage=urlError; var goURLTarget= goURLError; var borderColor=borderError;}
if (typeMessage=="Attempts"){ if (tiTime || tiAttempts || tiScore || tiSuccesses ){clearInterval(timeInterval);}var textMessage=messageAttempts;var urlMessage=urlAttempts; var goURLTarget= goURLAttempts; var borderColor=borderAttempts;}
var canvas = document.getElementById("ardoraActCanvas"); document.getElementById("ardoraActCanvas").style.zIndex=5;
document.getElementById("ardoraActCanvas").style["visibility"]="visible";canvas.width = canvas.width;
var contexto = canvas.getContext("2d"); contexto.globalAlpha = 0.50;contexto.fillStyle = colorBack;
contexto.fillRect(0,0,canvas.width,canvas.height); contexto.font="14px " + fMenssage; var metricsW = contexto.measureText(textMessage).width;var x=(canvas.width / 2)-(metricsW / 2);var y=(canvas.height / 2);
if (metricsW<canvas.width-20){ contexto.beginPath(); contexto.globalAlpha = 1; contexto.lineWidth = 2; contexto.fillStyle = "white"; var xAnim=canvas.width/2; var wAnim=0;
interval = setInterval(function () { contexto.strokeStyle = borderColor; roundedRect(contexto,xAnim,y-20,wAnim,30,5,"white"); xAnim-=1; wAnim+=2; if (wAnim>metricsW+30){ clearInterval(interval); contexto.shadowColor = "black";
contexto.shadowBlur = 20; contexto.shadowOffsetX = 10; contexto.shadowOffsetY = 10; contexto.stroke(); contexto.beginPath(); contexto.textAlign = "left"; contexto.fillStyle = "black"; contexto.fillText(textMessage,x,y);
contexto.lineWidth = 5; contexto.stroke(); messagePlayAudio(typeMessage);
goURL(urlMessage,timeOnMessage,goURLTarget,typeMessage,tiTimeType);}},1);
}else{outLines=printJustify(contexto,textMessage, 50, canvas.height/2, 30, canvas.width-100);contexto.beginPath(); contexto.globalAlpha = 1; contexto.lineWidth = 2; contexto.fillStyle = "white"; var xAnim=canvas.width/2;var wAnim=0;
interval = setInterval(function () { contexto.strokeStyle = borderColor;roundedRect(contexto,xAnim,(canvas.height/2)-(30*outLines.length/2),wAnim,30*outLines.length+20,5,"white");
xAnim-=1;wAnim+=2;if (wAnim>canvas.width-80){clearInterval(interval);contexto.shadowColor = "black";contexto.shadowBlur = 20;contexto.shadowOffsetX = 10;contexto.shadowOffsetY = 10;
contexto.stroke();contexto.beginPath();contexto.textAlign = "left";contexto.fillStyle = "black";for (i=0; i<outLines.length; i++){contexto.fillText(outLines[i], 50,(canvas.height/2)-(30*outLines.length/2)+((i+1)*30));
} contexto.lineWidth = 5; contexto.stroke(); messagePlayAudio(typeMessage);
goURL(urlMessage,timeOnMessage,goURLTarget,typeMessage,tiTimeType);}},1);}
if (typeMessage=="Error"){backAct(timeOnMessage,oldTypeGame);} if (typeMessage=="Time"){if (tiTimeType==1){timeAct=timeIni;backTime(timeOnMessage);backAct(timeOnMessage,oldTypeGame);}if (tiTimeType==2){backSol(timeOnMessage,oldTypeGame);}}
}
function goURL(url,seg,tar,tM,tT){
var state;
if (tM == "Ok") {state="ok";}
if (tM == "Attempts"){state="erro";}
if (tM == "Error"){state="erro";}
if (tM == "Time"){state="temp";}
if (tiAval){parent.actualizaInfoAct(score,attempts,state);}
newWin = setTimeout("opURL('"+url+"','"+seg+"','"+tar+"','"+tM+"','"+tT+"')",seg*1000);}
function opURL(url, seg, tar, tM,tT) {
if (url != "") {window.open(url,tar)};
if (tM == "Ok" && goURLNext ) {parent.avanza();}
if (tM == "Attempts" && goURLRepeat){parent.recarga()}
if (tM == "Time" && tT==0 && goURLRepeat){parent.recarga()}
if (tM == "Time" && tT==2 && goURLRepeat){parent.recarga()}
}
function messagePlayAudio(typeMessage){}
function backAct(seg,oldTypeGame){setTimeout(function(){paintBack();isShowMessage=false;
document.getElementById("ardoraActCanvas").style.zIndex=0; document.getElementById("ardoraActCanvas").style["visibility"]="hidden";typeGame=oldTypeGame;
},seg*1000);}
function backTime(seg){ setTimeout(function(){timeInterval=setInterval("paintTab()",1000);isShowMessage=false;},seg*1000);}
function backSol(seg,oldTypeGame){setTimeout(function(){showSol(oldTypeGame);},seg*1000);}
function paintButtonTime(){var actArea=document.getElementById("ardoraActCanvas"); document.getElementById("ardoraActCanvas").style.zIndex=5;document.getElementById("ardoraActCanvas").style["visibility"]="visible";
document.getElementById("ardoraTab").style["visibility"]="hidden";
$("#ardoraActCanvas").css("cursor", "pointer");if (tiTime || tiAttempts || tiScore || tiSuccesses ){clearInterval(timeInterval);}var canvas = document.getElementById("ardoraActCanvas");
var contexto = canvas.getContext("2d");canvas.width = canvas.width;contexto.globalAlpha = 0.98;contexto.fillStyle = colorButton;contexto.fillRect(0,0,canvas.width,canvas.height);
contexto.lineWidth = 2;contexto.strokeStyle = colorSele;contexto.rect(5,5,canvas.width-10,canvas.height-10);contexto.stroke();
contexto.font="14px " + fMenssage ;var metricsW = contexto.measureText(textButtonTime).width;var x=(canvas.width / 2)-(metricsW / 2);var y=(canvas.height / 2);
contexto.beginPath(); contexto.globalAlpha = 1;contexto.lineWidth = 2;contexto.fillStyle = colorBack;var xAnim=canvas.width/2;var wAnim=0;interval = setInterval(function () {
contexto.strokeStyle = colorText;roundedRect(contexto,xAnim,y-20,wAnim,30,5,colorBack);xAnim-=1;wAnim+=2;if (wAnim>metricsW+30){
clearInterval(interval);contexto.shadowColor = "black";contexto.shadowBlur = 20;contexto.shadowOffsetX = 10;contexto.shadowOffsetY = 10;
contexto.stroke();contexto.beginPath();contexto.textAlign = "left";contexto.fillStyle = colorText;contexto.fillText(textButtonTime,x,y);contexto.lineWidth = 5;contexto.stroke();}},1);
$("#ardoraActCanvas").mousedown(function(e){if (tiTime || tiAttempts || tiScore || tiSuccesses ){timeInterval=setInterval("paintTab()",1000);$("#ardoraActCanvas").css("cursor", "default");
$("#ardoraActCanvas").unbind("mousedown");document.getElementById("ardoraActCanvas").style.zIndex=0;document.getElementById("ardoraActCanvas").style["visibility"]="hidden";document.getElementById("ardoraTab").style["visibility"]="visible";paintBack();}});}
function cssColors(){
$("body").css("background-color",colorBack);
$("#ardoraMain").css("color",colorText);
if ($(".txtCell_input").length !=0) { $(".txtCell_input").css("background-color",colorBack); $(".txtCell_input").css("color",colorText);}
if ($(".txtCell_txt").length !=0) { $(".txtCell_txt").css("background-color",colorBack)}
$("#ardoraMain").css("font-family",fEnun); $(".txtCell").css("font-family",fActi);
}
