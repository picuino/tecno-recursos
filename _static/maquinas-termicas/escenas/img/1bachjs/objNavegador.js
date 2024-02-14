/************************************************************************************************************************
*   DETECCION DEL NAVEGADOR                                                                                                                                                        *
************************************************************************************************************************/
function Browser() {
        var b=navigator.appName;
        if (b=="Netscape") this.b="ns";
        else if (navigator.userAgent.indexOf("Opera")>0) this.b = "opera";
        else if (b=="Microsoft Internet Explorer") this.b="ie";
        if (!b) alert('Unidentified browser./nThis browser is not supported,');
        this.version=navigator.appVersion;
        this.v=parseInt(this.version);
        this.ns=(this.b=="ns" && this.v>=4);
        this.ns4=(this.b=="ns" && this.v==4);
        this.ns5=(this.b=="ns" && this.v==5);
        this.ie=(this.b=="ie" && this.v>=4);
        this.ie4=(this.version.indexOf('MSIE 4')>0);
        this.ie5=(this.version.indexOf('MSIE 5')>0);
        this.ie55=(this.version.indexOf('MSIE 5.5')>0);
        this.ie5=(this.ie && !this.ie4);
        this.opera=(this.b=="opera");
        this.dom=((document.createRange&&(document.createRange().createContextualFragment))?true:false);
        var ua=navigator.userAgent.toLowerCase();
        if (ua.indexOf("win")>-1) this.platform="win32";
        else if (ua.indexOf("mac")>-1) this.platform="mac";
        else this.platform="other";
}
is = new Browser();
/************************************************************************************************************************
*   FIN DETECCION DEL NAVEGADOR                                                                                                                                                        *
************************************************************************************************************************/

function openFullScreen(url) {
  //tamaños por defecto
  var aw = 800;
  var ah = 572;
  if (screen.width) {aw = screen.availWidth;}
  if (screen.height) {ah = screen.availHeight;}
  //opciones globales
  var opts = "toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizeable=no,copyhistory=no,menubar=no"
  if (is.ns) {opts = opts+",outerWidth="+screen.availWidth+",outerHeight="+screen.availHeight+",screenX=0,screenY=0";}
  else if (is.ie) {
    opts = opts+",left=0,top=0";
    if (is.platform=="mac") {
      //hay que restar los tamaños de los border y el titulo
      opts = opts+",width="+(aw - 13)+",height="+(ah - 32);
    } else if (is.platform=="win32") {
      //hay que restar los tamaños de los border y el titulo
      opts = opts+",width="+(aw - 12)+",height="+(ah - 25);
    } else {opts = opts+",width="+aw+",height="+ah;}
  } 
  else {return;}
  //Abrimos la ventana
  var newWin = window.open(url,"NewWindow",opts);
  if (is.v >= 4) {newWin.moveTo(0,0);}
  newWin.focus();
}

window.onerror = handleError;

function handleError () {return true;}