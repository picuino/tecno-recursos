//Creado con Ardora - www.webardora.net
//bajo licencia Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)
//para otros usos contacte con el autor
var api=null;var apiHandle = null;var apiAttempts = 0; var apiStatus = "";var apiInput=0; function loadPage(){cssColors(); startTime = new Date().getTime();api = getAPIHandle();
if (api == null){}else{api.LMSInitialize(""); apiStatus=api.LMSGetValue("cmi.core.lesson_status");if ((apiStatus!="failed") && (apiStatus!="passed")){
api.LMSSetValue("cmi.core.lesson_status", "failed");}else{if ((scoOk==0) && (scoWrong==0)){api.LMSSetValue("cmi.core.lesson_status", "failed");}
else{if (apiStatus=="passed"){if (scoOk==0){api.LMSSetValue("cmi.core.lesson_status", "failed");}else{
if (tiButtonTime){
clearInterval(interval);$("#ardoraActCanvas").unbind("mousedown");var canvas = document.getElementById("ardoraActCanvas");canvas.width = canvas.width;
}
document.getElementById("ardoraActSel").style["visibility"] = "hidden";
showMessage("Ok");apiInput=1;}}
if (apiStatus=="failed"){if (scoWrong==0){api.LMSSetValue("cmi.core.lesson_status", "failed");}else{
if (tiButtonTime){
clearInterval(interval);$("#ardoraActCanvas").unbind("mousedown");var canvas = document.getElementById("ardoraActCanvas");canvas.width = canvas.width;
}
document.getElementById("ardoraActSel").style["visibility"] = "hidden";
showMessage("scoMessage");apiInput=1;}}}}
var aluName = api.LMSGetValue("cmi.core.student_name");document.getElementById("ardoraAlumSCORM").innerHTML="<p>"+aluName+"</p>";
$("#ardoraAlumSCORM").click(function(){var widthAlum=$("#ardoraAlumSCORM").css("width");
if (widthAlum=="250px"){$("#ardoraAlumSCORM").css("width","15px");document.getElementById("ardoraAlumSCORM").innerHTML="";}
else{$("#ardoraAlumSCORM").css("width","250px");document.getElementById("ardoraAlumSCORM").innerHTML="<p>"+aluName+"</p>";}});
document.getElementById("ardoraAlumSCORM").style["visibility"]="visible";}}
function unloadPage(){ if ((api != null) && (apiInput==0)) {var currentTime = new Date();var endTime = currentTime.getTime()
var calculatedTime = endTime-startTime;var totalHours = Math.floor(calculatedTime/1000/60/60);calculatedTime = calculatedTime - totalHours*1000*60*60
if ( totalHours < 1000 && totalHours > 99 ) {totalHours = "0"+totalHours;} else if ( totalHours < 100 && totalHours > 9 ) {totalHours = "00"+totalHours;
} else if ( totalHours < 10 ) {totalHours = "000"+totalHours;}var totalMinutes = Math.floor(calculatedTime/1000/60);calculatedTime = calculatedTime - totalMinutes*1000*60;
if ( totalMinutes < 10 ) {totalMinutes = "0"+totalMinutes;}var totalSeconds = Math.floor(calculatedTime/1000);if ( totalSeconds < 10 ) {totalSeconds = "0"+totalSeconds;}
var sessionTime = totalHours+":"+totalMinutes+":"+totalSeconds;api.LMSSetValue("cmi.core.session_time", sessionTime);
var report=""; if (tiAttempts){if (attempts>attemptsMax) {report="(*) ";}else{report="( ) ";}report=report+"INTENTOS: "+attempts+"/"+attemptsMax;}
if (successes==successesMax){report=report+"  ( ) ACERTOS: "+successes+"/"+successesMax;}
else{report=report+"  (*) ACERTOS: "+successes+"/"+successesMax;}api.LMSSetValue( "cmi.core.lesson_location", report);
if (successes == successesMax) {api.LMSSetValue("cmi.core.lesson_status", "passed");if (scoOkDo==1){api.LMSSetValue("cmi.core.score.raw", scoPtos);}
else{if (score > 0) {api.LMSSetValue("cmi.core.score.raw", score)} else {api.LMSSetValue("cmi.core.score.raw", 0)}}}else{if (scoWrongDo==1){
api.LMSSetValue("cmi.core.score.raw", 0);}else{if (score > 0) {api.LMSSetValue("cmi.core.score.raw", score)} else {api.LMSSetValue("cmi.core.score.raw", 0)}}}api.LMSFinish("");}
else{}}
function getAPIHandle() {if (apiHandle == null) {apiHandle = getAPI();}return apiHandle;}
function getAPI() {var theAPI = findAPI(window);if ((theAPI == null) && (window.opener != null) && (typeof (window.opener) != "undefined")) {theAPI = findAPI(window.opener);}return theAPI}
function findAPI(win) {while ((win.API == null) && (win.parent != null) && (win.parent != win)) {apiAttempts++;if (apiAttempts > 5) {alert("Error API not found");return null;}win = win.parent;}return win.API;}
