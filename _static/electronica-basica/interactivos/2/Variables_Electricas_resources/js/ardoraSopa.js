//Creado con Ardora - www.webardora.net
//bajo licencia Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)
//para otros usos contacte con el autor
var posX=-1;var posY=-1;var posXEnd=-1;var posYEnd=-1;var clicking=false; var currentWord="";var pL;var iL=0;var indexSolved=-1;
function initAct(){
var canLeft=document.getElementById("ardoraAct").offsetLeft;var canTop=document.getElementById("ardoraAct").offsetTop;
var canWidth=$("#ardoraAct").css("width").replace("px","");var canHeight=$("#ardoraAct").css("height").replace("px","");
if (iL<16){pL = setInterval("paintLoader('ardoraActBoard')", 1000/30);}
$("#ardoraActCanvas").attr({"width": canWidth,"height": canHeight})
$("#ardoraActSel").mousedown(function(e){if (posX==-1 && posY==-1){posX=(Math.floor((e.pageX - this.offsetLeft-canLeft)/sizeCell))*sizeCell;posY=(Math.floor((e.pageY - this.offsetTop-canTop)/sizeCell))*sizeCell;}
if (posX>sizeCell*(numCols-1) || posY>sizeCell*(numRows-1)){posX=-1; posY=-1;clicking=false;}else{clicking=true;}});
$("#ardoraActSel").mousemove(function(e){if(clicking){posXEnd=(Math.floor((e.pageX - this.offsetLeft-canLeft)/sizeCell))*sizeCell;posYEnd=(Math.floor((e.pageY - this.offsetTop-canTop)/sizeCell))*sizeCell;
doClick(posXEnd,posYEnd);makeCurrentWord(posX,posY,posXEnd,posYEnd);}});
$("#ardoraActSel").mouseup(function(e){posXEnd = (Math.floor((e.pageX - this.offsetLeft - canLeft) / sizeCell)) * sizeCell;
posYEnd = (Math.floor((e.pageY - this.offsetTop - canTop) / sizeCell)) * sizeCell;checkWord(posX, posY, posXEnd, posYEnd);clicking=false;posX=-1; posY=-1;});
$("#ardoraActSel").bind("touchstart",function(e) {e.preventDefault();var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];
if (posX == -1 && posY == -1) {posX = (Math.floor((touch.pageX - this.offsetLeft - canLeft) / sizeCell)) * sizeCell;posY = (Math.floor((touch.pageY - this.offsetTop - canTop) / sizeCell)) * sizeCell;}
if (posX > sizeCell * (numCols - 1) || posY > sizeCell * (numRows - 1)) {posX = -1;posY = -1;clicking = false;} else {clicking = true;}});
$("#ardoraActSel").bind("touchmove",function(e) {e.preventDefault();var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];
if (clicking) {posXEnd = (Math.floor((touch.pageX - this.offsetLeft - canLeft) / sizeCell)) * sizeCell;posYEnd = (Math.floor((touch.pageY - this.offsetTop - canTop) / sizeCell)) * sizeCell;
doClick(posXEnd, posYEnd);makeCurrentWord(posX, posY, posXEnd, posYEnd);}});
$("#ardoraActSel").bind("touchend",function(e) {e.preventDefault();var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];posXEnd = (Math.floor((touch.pageX - this.offsetLeft - canLeft) / sizeCell)) * sizeCell;
posYEnd = (Math.floor((touch.pageY - this.offsetTop - canTop) / sizeCell)) * sizeCell;checkWord(posX, posY, posXEnd, posYEnd);clicking = false;posX = -1;posY = -1;});
if (tiAval){parent.iniciaActividade()}if ((tiTime) && (tiButtonTime)){paintButtonTime();}}
function checkWord(sx,sy,ex,ey){var ok=true;var acW=""; var acW1="";for (i = 0; i < words.length; i++) {
var ans =$.trim(SopaWords(words[i]));var isOk=true; if (ans.substring(0,c[i]).localeCompare(currentWord)!=0){{isOk=false;}}
if (isOk){for (j = 0; j < answers.length; j++) {
if ($.trim(currentWord).localeCompare(answers[j])==0){ok=false}}if (ok){answers.push($.trim(currentWord));solved1X.push(sx);
solved1Y.push(sy);solved2X.push(ex);solved2Y.push(ey);indexSolved++;timeAct=timeAct+timeBon;}}}paintSelected();
if (indexSolved==words.length-1){$("#ardoraActSel").unbind();score = scoreInc;successes=1;showMessage("Ok");}}
function paintSelected(){var canvas1 = document.getElementById("ardoraActSel");canvas1.width = canvas1.width;
var canvas = document.getElementById("ardoraActBoard");var context = canvas.getContext("2d");context.lineWidth=0.3;var i=indexSolved;
if (paintSolved[i]=="N"){paintSolved[i]="Y";if (solved1X[i] == solved2X[i]) {if (solved2Y[i] < solved1Y[i]) {
selRectV(context, solved1X[i], solved1Y[i], solved2X[i], solved2Y[i],colorButton);} else {selRectV(context, solved2X[i], solved2Y[i], solved1X[i], solved1Y[i],colorButton);}}
if (solved1Y[i] == solved2Y[i]) {if (solved2X[i] < solved1X[i]) {selRectH(context, solved1X[i], solved1Y[i], solved2X[i], solved2Y[i],colorButton);} else {
selRectH(context, solved2X[i], solved2Y[i], solved1X[i], solved1Y[i],colorButton);}}
if (solved1X[i] != solved2X[i] && solved1Y[i] != y) {if (solved2X[i] < solved1X[i] && solved2Y[i] < solved1Y[i]) {selRectD1(context, solved2X[i], solved2Y[i], solved1X[i], solved1Y[i],colorButton);
}if (solved2X[i] > solved1X[i] && solved2Y[i] > solved1Y[i]) {selRectD1(context, solved1X[i], solved1Y[i], solved2X[i], solved2Y[i],colorButton);}
if (solved2X[i] < solved1X[i] && solved2Y[i] > solved1Y[i]) {selRectD2(context, solved1X[i], solved1Y[i], solved2X[i], solved2Y[i],colorButton);}
if (solved2X[i] > solved1X[i] && solved2Y[i] < solved1Y[i]) {selRectD2(context, solved2X[i], solved2Y[i], solved1X[i], solved1Y[i],colorButton);}}
paintCheckOnWord(context,answers[i]);
}}
function paintCheckOnWord(ctx,selWord){var lineWord=2*sizeCell;for (j = 0; j < words.length; j++) {for (i=0;i<answers.length;i++) {
if ($.trim(SopaWords(words[j]).substring(0,c[j])).localeCompare(selWord)==0){
paintCheckOk(ctx,numCols*sizeCell+10,lineWord,sizeCell-2);
}}lineWord=lineWord+sizeCell;}}
function doClick(x,y){var canvas = document.getElementById("ardoraActSel");var context = canvas.getContext("2d");var centerX = posX+sizeCell-5;var centerY = posY+sizeCell-5;
var radius = sizeCell/2;canvas.width=canvas.width;context.beginPath();context.fillStyle = "rgba(0, 0, 200, 0.3)";
context.fill();context.lineWidth = 2;context.strokeStyle = "#003300";
if (posX==x){var rectWidth=sizeCell; var rectHeight=Math.abs(y-posY);if (y<posY){selRectV(context,posX,posY,x,y,colorSele);}else{selRectV(context,x,y,posX,posY,colorSele);}}
if (posY==y){var rectHeight=sizeCell; var rectWidth=Math.abs(x-posX);if (x<posX){selRectH(context,posX,posY,x,y,colorSele);}
else{selRectH(context,x,y,posX,posY,colorSele);}}
if (posX!=x && posY!=y){if (x<posX && y<posY){selRectD1(context,x,y,posX,posY,colorSele);}if (x>posX && y>posY){selRectD1(context,posX,posY,x,y,colorSele);}
if (x<posX && y>posY){selRectD2(context,posX,posY,x,y,colorSele);}if (x>posX && y<posY){selRectD2(context,x,y,posX,posY,colorSele);}}context.stroke();}
function resetBoard(){for (j = 0; j < numCols; j++) {for (i = 0; i < numRows; i++) {boardGame[i][j]=".";}}}
function randomSort() {var numPlaced=0;var maxRound=0;
while (numPlaced<words.length && maxRound<1000){numPlaced=0;maxRound++;resetBoard();x1=[];y1=[];x2=[];y2=[];for (i = 0; i < words.length; i++) {
var selDirection=Math.floor(Math.random()*direction.length);var randDirection=direction[selDirection];var randX=Math.floor(Math.random()*numRows);var randY=Math.floor(Math.random()*numCols);
var placed=false;var attMax=numRows*numCols;var att=0;var attWord=0;var go=true;var indexWord=0;var contin=true;var actualWord="";
for (y = 0; y < SopaWords(words[i]).length; y++) {if(wordsStr.indexOf(removeDiacritics(SopaWords(words[i]).substr(indexWord,1)))>-1){
actualWord=actualWord+SopaWords(words[i]).substr(indexWord,1);}indexWord++;}
while (!placed && attWord<direction.length ){contin=true;if ((randDirection=="HD" || randDirection=="HI")  && actualWord.length>numCols){contin=false;}
if ((randDirection=="VD" || randDirection=="VI")  && actualWord.length>numRows){contin=false;}
if ((randDirection=="X1D" || randDirection=="X1I" || randDirection=="X2D" || randDirection=="X2I")  && (actualWord.length>numRows || actualWord.length>numCols)){contin=false;}att=0;
if (contin){if (randDirection=="HD" || randDirection=="HI"){while (randY+actualWord.length>numCols){ randY--;}
if (randY<0){randY=0;}while (!placed && att<attMax){go=true;if (randDirection=="HD"){indexWord=0;for (y = randY; y < randY+actualWord.length; y++) {
if (boardGame[randX][y]!="."){if (boardGame[randX][y]!=actualWord.substr(indexWord,1)){go=false;}}indexWord++;}}
if (randDirection=="HI"){indexWord=actualWord.length-1;for (y = randY; y < randY+actualWord.length; y++) {if (boardGame[randX][y]!="."){
if (boardGame[randX][y]!=actualWord.substr(indexWord,1)){go=false;}}indexWord--;}}if (go){indexWord=0;if (randDirection=="HD"){
for (y = randY; y < randY+actualWord.length; y++) {boardGame[randX][y]=actualWord.substr(indexWord,1);
if (y==randY){x1.push(randX);y1.push(y)}if (y==randY+actualWord.length-1){x2.push(randX);y2.push(y)}indexWord++;}}if (randDirection=="HI"){
for (y = randY+actualWord.length-1; y > randY-1; y--) {boardGame[randX][y]=actualWord.substr(indexWord,1);
if (y==randY){x2.push(randX);y2.push(y)}if (y==randY+actualWord.length-1){x1.push(randX);y1.push(y)}indexWord++;}}placed=true;numPlaced++;}
else{att++;if (randY>0){randY--}else{randY=numCols-actualWord.length;if (randX>0){randX--;}else{randX=numRows-1;}}}}}
if (randDirection=="VD" || randDirection=="VI"){while (randX+actualWord.length>numRows){ randX--;}if (randX<0){randX=0;}while (!placed && att<attMax){
go=true;if (randDirection=="VD"){indexWord=0;for (x = randX; x < randX+actualWord.length; x++) {if (boardGame[x][randY]!="."){
if (boardGame[x][randY]!=actualWord.substr(indexWord,1)){go=false;}}indexWord++;}}if (randDirection=="VI"){indexWord=actualWord.length-1;
for (x = randX; x < randX+actualWord.length; x++) {if (boardGame[x][randY]!="."){if (boardGame[x][randY]!=actualWord.substr(indexWord,1)){go=false;}}indexWord--;}}
if (go){indexWord=0;if (randDirection=="VD"){for (x = randX; x < randX+actualWord.length; x++) {boardGame[x][randY]=actualWord.substr(indexWord,1);
if (x==randX){x1.push(x);y1.push(randY)} if (x==randX+actualWord.length-1){x2.push(x);y2.push(randY)}; indexWord++;}}
if (randDirection=="VI"){for (x = randX+actualWord.length-1; x > randX-1; x--) {
boardGame[x][randY]=actualWord.substr(indexWord,1);if (x==randX){x2.push(x);y2.push(randY)}
if (x==randX+actualWord.length-1){x1.push(x);y1.push(randY)} indexWord++;}}placed=true;numPlaced++;}else{att++;if (randX>0){randX--}
else{randX=numRows-actualWord.length;if (randY>0){randY--;}else{randY=numCols-1;}}}}}
if (randDirection=="X1D" || randDirection=="X2I"){
while (randX+actualWord.length>numRows-1){ randX--;}while (randY+actualWord.length>numCols-1){ randY--;}if (randX>=0 && randY>=0){
while (!placed && att<attMax){go=true;if (randDirection=="X1D"){indexWord=0;for (x = randX; x < randX+actualWord.length; x++) {
if (boardGame[x][randY+indexWord]!="."){if (boardGame[x][randY+indexWord]!=actualWord.substr(indexWord,1)){go=false;}}indexWord++;}}
if (randDirection=="X2I"){indexWord=actualWord.length-1;for (x = randX; x < randX+actualWord.length; x++) {if (boardGame[x][randY+indexWord]!="."){
if (boardGame[x][randY+indexWord]!=actualWord.substr(indexWord,1)){go=false;}}indexWord--;}}if (go){indexWord=0;
if (randDirection=="X1D"){for (x = randX; x < randX+actualWord.length; x++) {boardGame[x][randY+indexWord]=actualWord.substr(indexWord,1);
if (x==randX){x1.push(x);y1.push(randY + indexWord)} if (x==randX+actualWord.length-1){x2.push(x);y2.push(randY + indexWord)}indexWord++;}}
if (randDirection=="X2I"){for (x = randX+actualWord.length-1; x > randX-1; x--) {boardGame[x][randY+indexWord]=actualWord.substr(indexWord,1);
if (x==randX){x2.push(x);y2.push(randY + indexWord)} if (x==randX+actualWord.length-1){x1.push(x);y1.push(randY + indexWord)} indexWord++;}}placed=true;numPlaced++;}
else{att++;if (randX>0){randX--}else{randX=numRows-actualWord.length;if (randY>0){randY--;}else{randY=numCols-1;}}}}}}
if (randDirection=="X2D"){while (randX+actualWord.length>numRows-1){ randX--;}while (randY-actualWord.length<0){ randY++;}if (randX>=0 && randY>=0 && randX<numRows && randY<numCols){
while (!placed && att<attMax){go=true;indexWord=0;for (x = randX; x < randX+actualWord.length; x++) {if (boardGame[x][randY-indexWord]!="."){
if (boardGame[x][randY-indexWord]!=actualWord.substr(indexWord,1)){go=false;}}indexWord++;}if (go){indexWord=0;
if (randDirection=="X2D"){for (x = randX; x < randX+actualWord.length; x++) {boardGame[x][randY-indexWord]=actualWord.substr(indexWord,1);
if (x==randX){x1.push(x);y1.push(randY - indexWord)} if (x==randX+actualWord.length-1){x2.push(x);y2.push(randY - indexWord)}indexWord++;}}
if (randDirection=="X1I"){for (x = randX; x > randX-actualWord.length; x--) {boardGame[x][randY-indexWord]=actualWord.substr(indexWord,1); indexWord++;}}placed=true;numPlaced++;}
else{att++;if (randX>0){randX--}else{randX=0;if (randY>0){randY--;}else{randY=numCols-1;}}}}}}
if (randDirection=="X1I"){while (randX-actualWord.length<0){ randX++;}while (randY-actualWord.length<0){ randY++;}
if (randX>=0 && randY>=0 && randX<numRows && randY<numCols){while (!placed && att<attMax){go=true;indexWord=0;for (x = randX; x > randX-actualWord.length; x--) {
if (boardGame[x][randY-indexWord]!="."){if (boardGame[x][randY-indexWord]!=actualWord.substr(indexWord,1)){go=false;}}indexWord++;}
if (go){indexWord=0;for (x = randX; x > randX-actualWord.length; x--) {boardGame[x][randY-indexWord]=actualWord.substr(indexWord,1);
if (x==randX){x2.push(x);y2.push(randY - indexWord)} if (x==randX-actualWord.length+1){x1.push(x);y1.push(randY - indexWord)} indexWord++;}placed=true;numPlaced++;}
else{att++;if (randX>actualWord.length){randX--}else{randX=numRows-1;if (randY>actualWord.length){randY--;}else{randY=numCols-1;}}}}}}
attWord++;}else{if (selDirection<direction.length-1){selDirection++;
}else{selDirection=0;}attWord++;randDirection=direction[selDirection];}}}}
fillingGame();
paintBoard();
}
function fillingGame() {var rL=0; fillLetter.replace(/\s/g,"");for (j = 0; j < numCols; j++) {for (i = 0; i < numRows; i++) {
if ($.trim(boardGame[i][j]).localeCompare(".") == 0) {rL=Math.floor(Math.random() * fillLetter.length);boardGame[i][j]= fillLetter.substr(rL,1);}}}}
function paintBoard(){
clearInterval(pL);iL=50;
var canvas = document.getElementById("ardoraActBoard");var context = canvas.getContext("2d");
var title="Definición";
context.font = "12px "+fActi;var widthWords=context.measureText(title).width+20;
var lineWord=sizeCell;lineWord=lineWord+sizeCell;for (j = 0; j < words.length; j++) {
if (context.measureText(words[j]).width>widthWords){widthWords=context.measureText(words[j]).width+20}lineWord=lineWord+sizeCell;}
$("#ardoraAct").css("width",(numCols*sizeCell+20+widthWords).toString()+"px");var actH=(numRows+1)*sizeCell;if (lineWord>actH){actH=lineWord;}
$("#ardoraAct").css("height",(actH).toString()+"px");canvas = document.getElementById("ardoraActCanvas");canvas.width=numCols*sizeCell+20+widthWords;
canvas.height=actH;canvas = document.getElementById("ardoraActBoard");canvas.width=numCols*sizeCell+20+widthWords;canvas.height=actH;
canvas = document.getElementById("ardoraActSel");canvas.width=numCols*sizeCell+20+widthWords;canvas.height=actH;
var canvas = document.getElementById("ardoraActBoard");var context = canvas.getContext("2d");
var marL=sizeCell/2;canvas.width=canvas.width;
canvas.width = canvas.width;context.globalAlpha = 1;context.save();context.beginPath();context.lineWidth=0.3;context.strokeStyle = colorText;context.fillStyle = colorBack;
roundedRect(context, 1, 1, numCols*sizeCell, numRows*sizeCell+2, 4, colorBack);
context.shadowColor = "#999";context.shadowBlur = 20;context.shadowOffsetX = 3;context.shadowOffsetY = 3;
context.fill();context.stroke();context.restore();
for (j = 0; j < numCols; j++) {for (i = 0; i < numRows; i++) {
context.lineWidth = 0.1;context.fillStyle=colorText;
context.font="14px "+fActi;
context.textAlign = "right";marL=marL-context.measureText(boardGame[i][j]).width/2;
context.fillText(boardGame[i][j],j*sizeCell+sizeCell-marL,i*sizeCell+sizeCell-2);marL=sizeCell/2;}}
paintList(context);
}
function paintList(context){var title="Definición";context.font = "12px "+fActi;var widthWords=context.measureText(title).width+20;
var lineWord=sizeCell;context.fillStyle = colorText;context.textAlign = "left";lineWord=lineWord+sizeCell;
for (j = 0; j < words.length; j++) {if (context.measureText(words[j]).width>widthWords){widthWords=context.measureText(words[j]).width+20}
context.save();context.beginPath();context.lineWidth=0.3;context.fillStyle =colorBack;context.rect(numCols*sizeCell+10,lineWord-sizeCell+5,sizeCell-5,sizeCell-5);
context.fill();context.stroke();context.restore();
context.fillText(SopaWords(words[j]).substring(0,c[j]),numCols*sizeCell+10+sizeCell,lineWord);lineWord=lineWord+sizeCell;}
context.save();context.beginPath();context.lineWidth=0.3;context.strokeStyle = colorText;context.fillStyle = colorButton;
roundedRect(context, numCols*sizeCell+10,0,widthWords,sizeCell, 4, colorButton);
context.shadowColor="#999";context.shadowBlur = 20;context.shadowOffsetX = 3;context.shadowOffsetY = 3;
context.fill();context.stroke();
context.fillStyle = colorText;context.font = "bold 12px "+fActi;context.fillText(title,numCols*sizeCell+20,sizeCell-4);context.restore();
}
function isCorrect(){ var correct=true;
}
function goTime(){clearInterval(timeInterval);showMessage("Time");}
function showSol(oldTypeGame) {var canvas1 = document.getElementById("ardoraActSel");canvas1.width = canvas1.width;
var canvas = document.getElementById("ardoraActBoard");var context = canvas.getContext("2d");context.lineWidth=0.3;
for (i = 0; i < x1.length; i++) {x1[i]=x1[i]*sizeCell;x2[i]=x2[i]*sizeCell;y1[i]=y1[i]*sizeCell;y2[i]=y2[i]*sizeCell;}for (i = 0; i < x1.length; i++) {
if (x1[i] == x2[i]) {if (y2[i] < y1[i]) {selRectH(context, y1[i], x1[i], y2[i], x2[i],colorButton);} else {selRectH(context, y2[i], x2[i], y1[i], x1[i],colorButton);}}
if (y1[i] == y2[i]) {if (x2[i] < x1[i]) {selRectV(context, y1[i], x1[i], y2[i], x2[i],colorButton);
} else {selRectV(context, y2[i], x2[i], y1[i], x1[i],colorButton);}}if (x1[i] != x2[i] && y1[i] != y2[i]) {
if (x2[i] < x1[i] && y2[i] < y1[i]) {selRectD1(context, y2[i], x2[i], y1[i], x1[i],colorButton);}
if (x2[i] > x1[i] && y2[i] > y1[i]){selRectD1(context, y1[i], x1[i], y2[i], x2[i],colorButton);}
if (x2[i] < x1[i] && y2[i] > y1[i]){selRectD2(context, y2[i], x2[i], y1[i], x1[i],colorButton);}
if (x2[i] > x1[i] && y2[i] < y1[i]) {selRectD2(context, y1[i], x1[i], y2[i], x2[i],colorButton);}}}$("#ardoraActSel").unbind();}
function paintBack(){}
function makeCurrentWord(posX,posY,posXEnd,posYEnd){var selected="";if (posY==posYEnd){if (posX<posXEnd){for (x = posX/sizeCell; x < posXEnd/sizeCell+1; x++) {
selected=selected+boardGame[posY/sizeCell][x];}}if (posXEnd<posX){for (x = posX/sizeCell; x > posXEnd/sizeCell-1; x--) {selected=selected+boardGame[posY/sizeCell][x];}}}
if (posX==posXEnd){if (posY<posYEnd){for (y = posY/sizeCell; y < posYEnd/sizeCell+1; y++) {selected=selected+boardGame[y][posX/sizeCell];}}
if (posYEnd<posY){for (y = posY/sizeCell; y > posYEnd/sizeCell-1; y--) {selected=selected+boardGame[y][posX/sizeCell];}}}
if (posY != posYEnd && posX != posXEnd) {
if (posXEnd>posX && posYEnd>posY){if (posX-posY==posXEnd-posYEnd){for (i = 0; i < (Math.abs(posXEnd-posX)/sizeCell)+1 ; i++) {selected = selected + boardGame[posY/sizeCell+i][posX/sizeCell+i];}}}
if (posXEnd<posX && posYEnd<posY){if (posX-posY==posXEnd-posYEnd){for (i = (Math.abs(posXEnd-posX)/sizeCell); i >-1 ; i--) {selected = selected + boardGame[posYEnd/sizeCell+i][posXEnd/sizeCell+i];}}}
if (posXEnd<posX && posYEnd>posY){if (posX+posY==posXEnd+posYEnd){for (i = 0; i < (Math.abs(posXEnd-posX)/sizeCell)+1; i++){selected = selected + boardGame[posY/sizeCell+i][posX/sizeCell-i];}}}
if (posXEnd>posX && posYEnd<posY){if (posX+posY==posXEnd+posYEnd){for (i = (Math.abs(posXEnd-posX)/sizeCell); i>-1 ; i--){selected = selected + boardGame[posYEnd/sizeCell+i][posXEnd/sizeCell-i];}}}
}
currentWord=selected;}
function SopaWords(input) {return decodeURIComponent(escape(window.atob( input )));}
Array.prototype.in_array=function(){ for(var j in this){ if(this[j]==arguments[0]){return true;}}return false;}
var defaultDiacriticsRemovalMap = [{"base":"A", "letters":/[\u0041\u24B6\uFF21\u00C0\u00C1\u00C2\u1EA6\u1EA4\u1EAA\u1EA8\u00C3\u0100\u0102\u1EB0\u1EAE\u1EB4\u1EB2\u0226\u01E0\u00C4\u01DE\u1EA2\u00C5\u01FA\u01CD\u0200\u0202\u1EA0\u1EAC\u1EB6\u1E00\u0104\u023A\u2C6F]/g},
{"base":"AA","letters":/[\uA732]/g},{"base":"AE","letters":/[\u00C6\u01FC\u01E2]/g},{"base":"AO","letters":/[\uA734]/g},{"base":"AU","letters":/[\uA736]/g},
{"base":"AV","letters":/[\uA738\uA73A]/g},{"base":"AY","letters":/[\uA73C]/g},{"base":"B", "letters":/[\u0042\u24B7\uFF22\u1E02\u1E04\u1E06\u0243\u0182\u0181]/g},
{"base":"C", "letters":/[\u0043\u24B8\uFF23\u0106\u0108\u010A\u010C\u00C7\u1E08\u0187\u023B\uA73E]/g},{"base":"D", "letters":/[\u0044\u24B9\uFF24\u1E0A\u010E\u1E0C\u1E10\u1E12\u1E0E\u0110\u018B\u018A\u0189\uA779]/g},
{"base":"DZ","letters":/[\u01F1\u01C4]/g},{"base":"Dz","letters":/[\u01F2\u01C5]/g},{"base":"E", "letters":/[\u0045\u24BA\uFF25\u00C8\u00C9\u00CA\u1EC0\u1EBE\u1EC4\u1EC2\u1EBC\u0112\u1E14\u1E16\u0114\u0116\u00CB\u1EBA\u011A\u0204\u0206\u1EB8\u1EC6\u0228\u1E1C\u0118\u1E18\u1E1A\u0190\u018E]/g},
{"base":"F", "letters":/[\u0046\u24BB\uFF26\u1E1E\u0191\uA77B]/g},{"base":"G", "letters":/[\u0047\u24BC\uFF27\u01F4\u011C\u1E20\u011E\u0120\u01E6\u0122\u01E4\u0193\uA7A0\uA77D\uA77E]/g},
{"base":"H", "letters":/[\u0048\u24BD\uFF28\u0124\u1E22\u1E26\u021E\u1E24\u1E28\u1E2A\u0126\u2C67\u2C75\uA78D]/g},
{"base":"I", "letters":/[\u0049\u24BE\uFF29\u00CC\u00CD\u00CE\u0128\u012A\u012C\u0130\u00CF\u1E2E\u1EC8\u01CF\u0208\u020A\u1ECA\u012E\u1E2C\u0197]/g},
{"base":"J", "letters":/[\u004A\u24BF\uFF2A\u0134\u0248]/g},{"base":"K", "letters":/[\u004B\u24C0\uFF2B\u1E30\u01E8\u1E32\u0136\u1E34\u0198\u2C69\uA740\uA742\uA744\uA7A2]/g},
{"base":"L", "letters":/[\u004C\u24C1\uFF2C\u013F\u0139\u013D\u1E36\u1E38\u013B\u1E3C\u1E3A\u0141\u023D\u2C62\u2C60\uA748\uA746\uA780]/g},
{"base":"LJ","letters":/[\u01C7]/g},{"base":"Lj","letters":/[\u01C8]/g},{"base":"M", "letters":/[\u004D\u24C2\uFF2D\u1E3E\u1E40\u1E42\u2C6E\u019C]/g},
{"base":"N", "letters":/[\u004E\u24C3\uFF2E\u01F8\u0143\u00D1\u1E44\u0147\u1E46\u0145\u1E4A\u1E48\u0220\u019D\uA790\uA7A4]/g},{"base":"NJ","letters":/[\u01CA]/g},{"base":"Nj","letters":/[\u01CB]/g},
{"base":"O", "letters":/[\u004F\u24C4\uFF2F\u00D2\u00D3\u00D4\u1ED2\u1ED0\u1ED6\u1ED4\u00D5\u1E4C\u022C\u1E4E\u014C\u1E50\u1E52\u014E\u022E\u0230\u00D6\u022A\u1ECE\u0150\u01D1\u020C\u020E\u01A0\u1EDC\u1EDA\u1EE0\u1EDE\u1EE2\u1ECC\u1ED8\u01EA\u01EC\u00D8\u01FE\u0186\u019F\uA74A\uA74C]/g},
{"base":"OI","letters":/[\u01A2]/g},{"base":"OO","letters":/[\uA74E]/g},{"base":"OU","letters":/[\u0222]/g},
{"base":"P", "letters":/[\u0050\u24C5\uFF30\u1E54\u1E56\u01A4\u2C63\uA750\uA752\uA754]/g},{"base":"Q", "letters":/[\u0051\u24C6\uFF31\uA756\uA758\u024A]/g},
{"base":"R", "letters":/[\u0052\u24C7\uFF32\u0154\u1E58\u0158\u0210\u0212\u1E5A\u1E5C\u0156\u1E5E\u024C\u2C64\uA75A\uA7A6\uA782]/g},
{"base":"S", "letters":/[\u0053\u24C8\uFF33\u1E9E\u015A\u1E64\u015C\u1E60\u0160\u1E66\u1E62\u1E68\u0218\u015E\u2C7E\uA7A8\uA784]/g},
{"base":"T", "letters":/[\u0054\u24C9\uFF34\u1E6A\u0164\u1E6C\u021A\u0162\u1E70\u1E6E\u0166\u01AC\u01AE\u023E\uA786]/g},{"base":"TZ","letters":/[\uA728]/g},
{"base":"U", "letters":/[\u0055\u24CA\uFF35\u00D9\u00DA\u00DB\u0168\u1E78\u016A\u1E7A\u016C\u00DC\u01DB\u01D7\u01D5\u01D9\u1EE6\u016E\u0170\u01D3\u0214\u0216\u01AF\u1EEA\u1EE8\u1EEE\u1EEC\u1EF0\u1EE4\u1E72\u0172\u1E76\u1E74\u0244]/g},
{"base":"V", "letters":/[\u0056\u24CB\uFF36\u1E7C\u1E7E\u01B2\uA75E\u0245]/g},{"base":"VY","letters":/[\uA760]/g},
{"base":"W", "letters":/[\u0057\u24CC\uFF37\u1E80\u1E82\u0174\u1E86\u1E84\u1E88\u2C72]/g},{"base":"X", "letters":/[\u0058\u24CD\uFF38\u1E8A\u1E8C]/g},
{"base":"Y", "letters":/[\u0059\u24CE\uFF39\u1EF2\u00DD\u0176\u1EF8\u0232\u1E8E\u0178\u1EF6\u1EF4\u01B3\u024E\u1EFE]/g},
{"base":"Z", "letters":/[\u005A\u24CF\uFF3A\u0179\u1E90\u017B\u017D\u1E92\u1E94\u01B5\u0224\u2C7F\u2C6B\uA762]/g},
{"base":"a", "letters":/[\u0061\u24D0\uFF41\u1E9A\u00E0\u00E1\u00E2\u1EA7\u1EA5\u1EAB\u1EA9\u00E3\u0101\u0103\u1EB1\u1EAF\u1EB5\u1EB3\u0227\u01E1\u00E4\u01DF\u1EA3\u00E5\u01FB\u01CE\u0201\u0203\u1EA1\u1EAD\u1EB7\u1E01\u0105\u2C65\u0250]/g},
{"base":"aa","letters":/[\uA733]/g},{"base":"ae","letters":/[\u00E6\u01FD\u01E3]/g},{"base":"ao","letters":/[\uA735]/g},
{"base":"au","letters":/[\uA737]/g},{"base":"av","letters":/[\uA739\uA73B]/g},{"base":"ay","letters":/[\uA73D]/g},
{"base":"b", "letters":/[\u0062\u24D1\uFF42\u1E03\u1E05\u1E07\u0180\u0183\u0253]/g},
{"base":"c", "letters":/[\u0063\u24D2\uFF43\u0107\u0109\u010B\u010D\u00E7\u1E09\u0188\u023C\uA73F\u2184]/g},
{"base":"d", "letters":/[\u0064\u24D3\uFF44\u1E0B\u010F\u1E0D\u1E11\u1E13\u1E0F\u0111\u018C\u0256\u0257\uA77A]/g},
{"base":"dz","letters":/[\u01F3\u01C6]/g},
{"base":"e", "letters":/[\u0065\u24D4\uFF45\u00E8\u00E9\u00EA\u1EC1\u1EBF\u1EC5\u1EC3\u1EBD\u0113\u1E15\u1E17\u0115\u0117\u00EB\u1EBB\u011B\u0205\u0207\u1EB9\u1EC7\u0229\u1E1D\u0119\u1E19\u1E1B\u0247\u025B\u01DD]/g},
{"base":"f", "letters":/[\u0066\u24D5\uFF46\u1E1F\u0192\uA77C]/g},
{"base":"g", "letters":/[\u0067\u24D6\uFF47\u01F5\u011D\u1E21\u011F\u0121\u01E7\u0123\u01E5\u0260\uA7A1\u1D79\uA77F]/g},
{"base":"h", "letters":/[\u0068\u24D7\uFF48\u0125\u1E23\u1E27\u021F\u1E25\u1E29\u1E2B\u1E96\u0127\u2C68\u2C76\u0265]/g},
{"base":"hv","letters":/[\u0195]/g},
{"base":"i", "letters":/[\u0069\u24D8\uFF49\u00EC\u00ED\u00EE\u0129\u012B\u012D\u00EF\u1E2F\u1EC9\u01D0\u0209\u020B\u1ECB\u012F\u1E2D\u0268\u0131]/g},
{"base":"j", "letters":/[\u006A\u24D9\uFF4A\u0135\u01F0\u0249]/g},
{"base":"k", "letters":/[\u006B\u24DA\uFF4B\u1E31\u01E9\u1E33\u0137\u1E35\u0199\u2C6A\uA741\uA743\uA745\uA7A3]/g},
{"base":"l", "letters":/[\u006C\u24DB\uFF4C\u0140\u013A\u013E\u1E37\u1E39\u013C\u1E3D\u1E3B\u017F\u0142\u019A\u026B\u2C61\uA749\uA781\uA747]/g},
{"base":"lj","letters":/[\u01C9]/g},
{"base":"m", "letters":/[\u006D\u24DC\uFF4D\u1E3F\u1E41\u1E43\u0271\u026F]/g},
{"base":"n", "letters":/[\u006E\u24DD\uFF4E\u01F9\u0144\u00F1\u1E45\u0148\u1E47\u0146\u1E4B\u1E49\u019E\u0272\u0149\uA791\uA7A5]/g},
{"base":"nj","letters":/[\u01CC]/g},
{"base":"o", "letters":/[\u006F\u24DE\uFF4F\u00F2\u00F3\u00F4\u1ED3\u1ED1\u1ED7\u1ED5\u00F5\u1E4D\u022D\u1E4F\u014D\u1E51\u1E53\u014F\u022F\u0231\u00F6\u022B\u1ECF\u0151\u01D2\u020D\u020F\u01A1\u1EDD\u1EDB\u1EE1\u1EDF\u1EE3\u1ECD\u1ED9\u01EB\u01ED\u00F8\u01FF\u0254\uA74B\uA74D\u0275]/g},
{"base":"oi","letters":/[\u01A3]/g},
{"base":"ou","letters":/[\u0223]/g},
{"base":"oo","letters":/[\uA74F]/g},
{"base":"p","letters":/[\u0070\u24DF\uFF50\u1E55\u1E57\u01A5\u1D7D\uA751\uA753\uA755]/g},
{"base":"q","letters":/[\u0071\u24E0\uFF51\u024B\uA757\uA759]/g},
{"base":"r","letters":/[\u0072\u24E1\uFF52\u0155\u1E59\u0159\u0211\u0213\u1E5B\u1E5D\u0157\u1E5F\u024D\u027D\uA75B\uA7A7\uA783]/g},
{"base":"s","letters":/[\u0073\u24E2\uFF53\u00DF\u015B\u1E65\u015D\u1E61\u0161\u1E67\u1E63\u1E69\u0219\u015F\u023F\uA7A9\uA785\u1E9B]/g},
{"base":"t","letters":/[\u0074\u24E3\uFF54\u1E6B\u1E97\u0165\u1E6D\u021B\u0163\u1E71\u1E6F\u0167\u01AD\u0288\u2C66\uA787]/g},
{"base":"tz","letters":/[\uA729]/g},
{"base":"u","letters":/[\u0075\u24E4\uFF55\u00F9\u00FA\u00FB\u0169\u1E79\u016B\u1E7B\u016D\u00FC\u01DC\u01D8\u01D6\u01DA\u1EE7\u016F\u0171\u01D4\u0215\u0217\u01B0\u1EEB\u1EE9\u1EEF\u1EED\u1EF1\u1EE5\u1E73\u0173\u1E77\u1E75\u0289]/g},
{"base":"v","letters":/[\u0076\u24E5\uFF56\u1E7D\u1E7F\u028B\uA75F\u028C]/g},
{"base":"vy","letters":/[\uA761]/g},
{"base":"w","letters":/[\u0077\u24E6\uFF57\u1E81\u1E83\u0175\u1E87\u1E85\u1E98\u1E89\u2C73]/g},
{"base":"x","letters":/[\u0078\u24E7\uFF58\u1E8B\u1E8D]/g},
{"base":"y","letters":/[\u0079\u24E8\uFF59\u1EF3\u00FD\u0177\u1EF9\u0233\u1E8F\u00FF\u1EF7\u1E99\u1EF5\u01B4\u024F\u1EFF]/g},
{"base":"z","letters":/[\u007A\u24E9\uFF5A\u017A\u1E91\u017C\u017E\u1E93\u1E95\u01B6\u0225\u0240\u2C6C\uA763]/g}
];var changes;
function removeDiacritics (str) {if(!changes) {changes = defaultDiacriticsRemovalMap;}
for(var i=0; i<changes.length; i++) {str = str.replace(changes[i].letters, changes[i].base);}return str;}
function paintLoader(canvasDiv){var canvas = document.getElementById(canvasDiv);var context = canvas.getContext("2d");context.font = "14px "+fActi;
var wC = canvas.width/2;var hC = canvas.height/2;var started = new Date();var rotationsSinceStarted = (new Date() - started) / 1000;var rotationInTwelfths = parseInt(rotationsSinceStarted * 12) / 12;
context.save();context.clearRect(0, 0, context.canvas.width, context.canvas.height);context.translate(wC, hC);context.rotate(Math.PI * 2 * rotationInTwelfths);
for (var i = 0; i < 16; i++) {context.rotate(Math.PI * 2 / 12);context.beginPath();if (i==iL){context.lineWidth = 8;context.strokeStyle = "rgba(145,150,47," + i / 12 + ")";}
else{context.lineWidth = 3;context.strokeStyle = "rgba(50,50,50," + i / 12 + ")";}
context.moveTo(20, 0);context.lineTo(28, 0);context.stroke();}context.restore();iL++;if (iL>15){iL=0;}}
function selRectH(ctx,sx,sy,ex,ey,color) {var r=sizeCell/2;ctx.beginPath();ex=ex+sizeCell;sy=sy+2;ey=ey+2;
ctx.fillStyle = "rgba("+hexToRgb(color).r+","+hexToRgb(color).g+","+hexToRgb(color).b+",0.3)";
ctx.moveTo(sx+r,sy);ctx.quadraticCurveTo(sx+sizeCell+r,sy+r,sx+r,sy+sizeCell);ctx.lineTo(ex-r,ey+sizeCell);ctx.quadraticCurveTo(ex-sizeCell-r,ey+r,ex-r,ey);ctx.lineTo(sx+r,sy)
ctx.closePath();ctx.stroke();ctx.fill();}
function selRectV(ctx, sx, sy, ex, ey,color){var r = sizeCell / 2;ctx.beginPath();ey = ey + sizeCell;sy = sy + 2;ey = ey + 2;
ctx.fillStyle = "rgba("+hexToRgb(color).r+","+hexToRgb(color).g+","+hexToRgb(color).b+",0.3)";
ctx.moveTo(sx, sy + r);ctx.quadraticCurveTo(sx + r, sy + r + sizeCell, sx + sizeCell, sy + r);ctx.lineTo(ex + sizeCell, ey - r);
ctx.quadraticCurveTo(ex + r, ey - r - sizeCell, ex, ey - r);ctx.lineTo(sx, sy + r);ctx.closePath();ctx.stroke();ctx.fill();}
function selRectD1(ctx, sx, sy, ex, ey, color) {var r = sizeCell / 2;ex = ex + sizeCell;ey = ey + sizeCell;sy = sy + 2;ey = ey + 2;ctx.beginPath();
ctx.fillStyle = "rgba("+hexToRgb(color).r+","+hexToRgb(color).g+","+hexToRgb(color).b+",0.3)";
ctx.moveTo(sx + r, sy);ctx.quadraticCurveTo(sx, sy, sx, sy + r);ctx.lineTo(ex - r, ey);
ctx.quadraticCurveTo(ex, ey, ex, ey - r);ctx.lineTo(sx + r, sy);ctx.closePath();ctx.stroke();ctx.fill();}
function selRectD2(ctx, sx, sy, ex, ey,color) {var r = sizeCell / 2;sx = sx + sizeCell;ey = ey + sizeCell;sy = sy + 2;ey = ey + 2;ctx.beginPath();
ctx.fillStyle = "rgba("+hexToRgb(color).r+","+hexToRgb(color).g+","+hexToRgb(color).b+",0.3)";
ctx.moveTo(sx - r, sy);ctx.quadraticCurveTo(sx, sy, sx, sy + r);ctx.lineTo(ex + r, ey);
ctx.quadraticCurveTo(ex, ey, ex, ey - r);ctx.lineTo(sx - r, sy);ctx.closePath();ctx.stroke();ctx.fill();}
function paintCheckOk(ctx,x,y,w){ctx.save();ctx.beginPath();ctx.moveTo(x,y-w/2);
ctx.fillStyle = "rgba(0,128,0,1)";ctx.quadraticCurveTo(x+w/3,y-w/3, x+w/2,y);
ctx.quadraticCurveTo(x+7*w/10,y-w/2,x+w,y-w);ctx.quadraticCurveTo(x+7*w/10,y-7*w/10,x+w/2,y-w/3);ctx.quadraticCurveTo(x+w/3,y-w/2,x,y-w/2);
ctx.closePath();ctx.stroke();ctx.fill();ctx.restore();}
function hexToRgb(hex) {var shorthandRegex = /^#?([a-f\d])([a-f\d])([a-f\d])$/i;hex = hex.replace(shorthandRegex, function(m, r, g, b) {
return r + r + g + g + b + b;});var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
return result ? {r: parseInt(result[1], 16),g: parseInt(result[2], 16),b: parseInt(result[3], 16)} : null;}
