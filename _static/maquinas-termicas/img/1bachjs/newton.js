var ALTURA_eltoMenuHead = 39;
var ALTURA_eltoMenu = 31;
var POSY_eltoMenuHead = 88;

var DELTA_MENU = 5;
var arrayMenu = null;

var resaltadoMenu = "#ecf8f9";

	function mantenAbierto(enlace) {		
		query = document.location.search;
		if (query == "") {
			return true;
		}
		else {
			document.location.href = enlace + query;
			return false;
		}	
	}

	function posicionaMenu(numMenus) {		
		if (document.getElementById) {
			if (document.getElementById("aRetroceder"))
				document.getElementById("aRetroceder").onclick = new Function("return mantenAbierto(document.getElementById('aRetroceder').href)");
			if (document.getElementById("aAvanzar"))
				document.getElementById("aAvanzar").onclick = new Function("return mantenAbierto(document.getElementById('aAvanzar').href)");
			if (document.getElementById("CapaCurso")) {				
				strCurso = document.getElementById("CapaCurso").innerHTML;
				strQuery = "?curso=";
				if (strCurso.indexOf("1") > -1 && strCurso.toUpperCase().indexOf("ESO") > -1) {
					strQuery += "ESO1";
				}
				else if (strCurso.indexOf("2") > -1 && strCurso.toUpperCase().indexOf("ESO") > -1) {
					strQuery += "ESO2";
				}
				else if (strCurso.indexOf("3") > -1 && strCurso.toUpperCase().indexOf("ESO") > -1) {
					strQuery += "ESO3";
				}
				else if (strCurso.indexOf("4") > -1 && strCurso.toUpperCase().indexOf("ESO") > -1) {
					strQuery += "ESO4";
				}
				else if (strCurso.indexOf("1") > -1 && strCurso.toUpperCase().indexOf("BAC") > -1) {
					strQuery += "BAC1";
				}
				else if (strCurso.indexOf("2") > -1 && strCurso.toUpperCase().indexOf("BAC") > -1) {
					strQuery += "BAC2";
				}
				
			}
		}
		
		arrayMenu = new Array(numMenus + 1);
		var oAux = new AsignaLayer("eltoMenuHead", null, null);
		ALTURA_eltoMenuHead = oAux.getH();
		var acumulador = POSY_eltoMenuHead + ALTURA_eltoMenuHead;		
		for (i=0; i<numMenus; i++) {
			arrayMenu[i] = new AsignaLayer("eltoMenu" + i, null, null);
			arrayMenu[i].setY(acumulador);			
			arrayMenu[i].initH = arrayMenu[i].getH() - DELTA_MENU;
			if (is.ie5 || is.dom) ALTURA_eltoMenu = arrayMenu[i].capa.getElementsByTagName("TABLE")[0].offsetHeight;			
			arrayMenu[i].setH(ALTURA_eltoMenu);			
			acumulador += ALTURA_eltoMenu;
			arrayMenu[i].cH = ALTURA_eltoMenu;
		}
		arrayMenu[numMenus] = new AsignaLayer("eltoMenuFoot", null, null);
		arrayMenu[numMenus].setX(0);
		arrayMenu[numMenus].setY(acumulador);
		arrayMenu[numMenus].setZ(3);		
		arrayMenu.abierto = -1;
		oAux.show();
		oAux = null;
		for (i=0; i<numMenus; i++) {
			arrayMenu[i].show();
		}
		arrayMenu[numMenus].show();
		if (is.ns5) DELTA_MENU = 10;
		var queryString = location.search;
		if (queryString != "") {
			var arrQuery = queryString.split("&");
			var eltoMenu = parseInt(arrQuery[0].substr(1, arrQuery[0].length));
			var eltoSubmenu = parseInt(arrQuery[1]);
			if (is.ie5 || is.dom) {
				if (document.getElementById("CapaCurso").GBLCOLORON)
					resaltadoMenu = document.getElementById("CapaCurso").GBLCOLORON;
				if (document.getElementById("eltoMenuHead" + eltoMenu)) 
					document.getElementById("eltoMenuHead" + eltoMenu).bgColor = resaltadoMenu;
				if (document.getElementById("eltoSubMenuHead" + eltoMenu + eltoSubmenu))
					document.getElementById("eltoSubMenuHead" + eltoMenu + eltoSubmenu).children[0].className="clsSubMenuRes";
			}
			if(eltoMenu <= arrayMenu.length)gestionMenu(eltoMenu);
		}
	}

	
	function gestionMenu(numMenu) {
		if (arrayMenu.moving) return;
		arrayMenu.moving = true;
		if (arrayMenu.abierto != -1) {
			if (arrayMenu.abierto != numMenu) {
				arrayMenu.timer = setInterval("cerrarMenu(" + arrayMenu.abierto + ", " + numMenu + ")", 1);
			}
			else {
				arrayMenu.timer = setInterval("cerrarMenu(" + arrayMenu.abierto + ", -1)", 1);
			}
		}
		else {
			arrayMenu.timer = setInterval("abrirMenu(" + numMenu + ")", 1);
		}
	}

	function abrirMenu(intMenu) {
		if (arrayMenu[intMenu].getH() < arrayMenu[intMenu].initH) {
			arrayMenu[intMenu].setH(arrayMenu[intMenu].getH() + DELTA_MENU);
			for (i=intMenu + 1; i<arrayMenu.length; i++) {
				arrayMenu[i].setY(arrayMenu[i].getY() + DELTA_MENU);
			}
		}
		else {
			clearInterval(arrayMenu.timer);
			desfas = arrayMenu[intMenu].initH + DELTA_MENU - arrayMenu[intMenu].getH();
			arrayMenu[intMenu].setH(arrayMenu[intMenu].initH + DELTA_MENU);
			for (i=intMenu + 1; i<arrayMenu.length; i++) {
				arrayMenu[i].setY(arrayMenu[i].getY() + desfas);			
			}
			arrayMenu.abierto = intMenu;
			arrayMenu.moving = false;			
		}
	}	
	
	function cerrarMenu(intMenu, intAbrir) {
		if (arrayMenu[intMenu].getH() > arrayMenu[intMenu].cH + DELTA_MENU) {
			arrayMenu[intMenu].setH(arrayMenu[intMenu].getH() - DELTA_MENU);
			for (i=intMenu + 1; i<arrayMenu.length; i++) {
				arrayMenu[i].setY(arrayMenu[i].getY() - DELTA_MENU);			
			}
		}
		else {
			clearInterval(arrayMenu.timer);
			desfas = arrayMenu[intMenu].getH() - arrayMenu[intMenu].cH;
			arrayMenu[intMenu].setH(arrayMenu[intMenu].cH);
			for (i=intMenu + 1; i<arrayMenu.length; i++) {
				arrayMenu[i].setY(arrayMenu[i].getY() - desfas);			
			}			
			arrayMenu.abierto = -1;
			if (intAbrir != -1) {
				arrayMenu.timer = setInterval("abrirMenu(" + intAbrir + ")", 1);			
			}
			else {
				arrayMenu.moving = false;
			}
		}
	}		
	
	function enlace(url, menu, submenu) {		
		document.location.href = url + "?" + menu + "&" + submenu;
	}
	
	function rollOver(imagen, capa, target) {
		if (is.ns4) document.layers[capa].document.images[imagen].src = target;
		else document.images[imagen].src = target;
	}
	
	function imprimir() {
		if (is.ns4) self.print();
		else {
			winP = window.open("", "", "width=650,height=400,menu=no,status=no,toolbar=no,scrollbars=1,resizeable=yes");	
			winP.document.open();
			strHTML = "<HTML><HEAD><LINK REL=\"stylesheet\" TYPE=\"text/css\" HREF=\"../css/newton.css\">"
				+ "</HEAD>"				
				+ "<BODY marginleft=0 margintop=0 marginright=0>" + document.getElementById("tbMenuVTitulo").innerHTML
				+ "<FONT CLASS=clsMenuHead> - " + document.getElementById("CapaCurso").innerHTML + "</FONT><br><br>"
				+ document.getElementById("CapaCont").innerHTML
				+ "</BODY></HTML>";
			winP.document.open("text/html");
			winP.document.write(strHTML);
			winP.document.close();
			winP.print();
			winP.close();
		}
	}