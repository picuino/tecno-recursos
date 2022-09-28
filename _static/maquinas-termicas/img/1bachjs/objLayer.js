<!--
function AsignaLayer(nombreCapa,nombreCapaPadre,posIzq,posSup,ancho,alto,visibilidad,zIndex){
	if (is.ns4) {
		if (!nombreCapaPadre) {this.capa = document.layers[nombreCapa];}
		else {this.capa = document.layers[nombreCapaPadre].document.layers[nombreCapa]}
		this.estilo=this.capa;
		//this.images=this.capa.document.images;this.forms=this.capa.document.forms;
		this.x = this.capa.x;
		this.y = this.capa.y;
		this.w = this.capa.clip.width;
		this.h = this.capa.clip.height;		
	}
	else if(is.ns5 || is.ie5){
			this.capa = document.getElementById(nombreCapa);
			this.estilo=this.capa.style;
			this.clip = this.estilo;
			//this.images=document.images;this.forms=document.forms;
			this.x = this.capa.offsetLeft;
			this.y = this.capa.offsetTop;
			this.w = this.capa.offsetWidth;
			this.h = this.capa.offsetHeight;
	}
	else if(is.ie4){
				this.capa = document.all[nombreCapa]
				this.estilo=this.capa.style;
				//this.images=document.images;this.forms=document.forms;
				this.x = this.capa.offsetLeft;
				this.y = this.capa.offsetTop;
				this.w = this.capa.offsetWidth;
				this.h = this.capa.offsetHeight;				
	}
	this.capa.nombre=nombreCapa;
	this.timer="";
	this.moving=false;
	if (posIzq != null) {
		this.estilo.visibility=visibilidad;
		this.x(posIzq);this.y(posSup);this.w(ancho);this.h(alto);this.z(zIndex);
	}




	return this;
}	


AsignaLayer.prototype.escribe = function (contenido){if(is.ns4){this.capa.document.open();this.capa.document.write(contenido);this.capa.document.close();this.images=this.capa.document.images;this.forms=this.capa.document.forms;}else{this.capa.innerHTML=contenido};}
AsignaLayer.prototype.hide = function () {this.estilo.visibility="hidden"}
AsignaLayer.prototype.show = function () {this.estilo.visibility="visible"}

AsignaLayer.prototype.setX = function (x){this.estilo.left = x; this.x = x;}
AsignaLayer.prototype.setY = function (y){this.estilo.top = y; this.y = y;}
AsignaLayer.prototype.setW = function (w){this.clip.width=w; this.w = w;}
AsignaLayer.prototype.setH = function (h){this.clip.height=h; this.h = h;}
AsignaLayer.prototype.setZ = function (z){this.estilo.zIndex=z;}

AsignaLayer.prototype.getX = function (){return this.x;}
AsignaLayer.prototype.getY = function (){return this.y;}
AsignaLayer.prototype.getW = function (){return this.w;}
AsignaLayer.prototype.getH = function (){return this.h;}
AsignaLayer.prototype.getZ = function (){return this.estilo.zIndex;}
AsignaLayer.prototype.getVisibility = function (){return this.estilo.visibility;}

AsignaLayer.prototype.clip = function (t,r,b,l){
	if (is.ie) {this.estilo.clip="rect("+t+" "+r+" "+b+" "+l+")";}
	if (is.ns4) {this.capa.clip.top=t;this.capa.clip.right=r;this.capa.clip.bottom=b;this.capa.clip.left=l;}
	this.clipL = l;
	this.clipR = r;
	this.clipB = b;
	this.clipT = t;
}

if(is.ns4){	
	var origWidth = window.top.innerWidth;
	var origHeight = window.top.innerHeight;
	window.top.captureEvents(Event.RESIZE);
    window.top.onResize = function resizeHandler() {
	        if(is.ns4){
	                if (top.innerWidth != origWidth || top.innerHeight != origHeight) {
	                        origWidth = innerWidth;
	                        origHeight = innerHeight;
	                        document.location.href = document.location.href;
	                }
	        }
	}
}
//-->