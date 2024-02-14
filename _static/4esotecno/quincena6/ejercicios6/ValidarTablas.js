 // Scrit realizado por Miguel e María
 // http://www.tecnoloxia.org
 // Licenza Creative commons
 // Pódese copiar, modificar e distribuír baixo a mesma licenza
 // Sinalando a autoría

 
 
 function compruebaEjTabla(f1,strResultado) {

	
	// metemos un espazo en brano Ã³ principio para que coincida o Ã­ndice
	var cadenaSolucion = ' '+f1.solucion.value;
	// o prefixo que deben levar todos los id dentro do formulario
	var prefixo = f1.name + '_';
	var erros = 0;
	var acertos = 0;
	var codigoHtmlBien = 'Bien';
	var codigoHtmlMal = '<span class="rojo">Mal</span>';

	if( f1.edit1.value == cadenaSolucion.charAt(1)) { 
		document.getElementById(prefixo+'res1').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res1').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit2.value == cadenaSolucion.charAt(2)) { 
		document.getElementById(prefixo+'res2').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res2').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit3.value == cadenaSolucion.charAt(3)) { 
		document.getElementById(prefixo+'res3').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res3').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit4.value == cadenaSolucion.charAt(4)) { 
		document.getElementById(prefixo+'res4').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res4').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit5.value == cadenaSolucion.charAt(5)) { 
		document.getElementById(prefixo+'res5').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res5').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit6.value == cadenaSolucion.charAt(6)) { 
		document.getElementById(prefixo+'res6').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res6').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit7.value == cadenaSolucion.charAt(7)) { 
		document.getElementById(prefixo+'res7').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res7').innerHTML = codigoHtmlMal;
		erros++;
	}

	if( f1.edit8.value == cadenaSolucion.charAt(8)) { 
		document.getElementById(prefixo+'res8').innerHTML = codigoHtmlBien;
		acertos++;
	}
	else {
		document.getElementById(prefixo+'res8').innerHTML = codigoHtmlMal;
		erros++;
	}


	document.getElementById(prefixo+'sol1').innerHTML = '<b>' + cadenaSolucion.charAt(1) + '</b>';
	document.getElementById(prefixo+'sol2').innerHTML = '<b>' + cadenaSolucion.charAt(2) + '</b>';
	document.getElementById(prefixo+'sol3').innerHTML = '<b>' + cadenaSolucion.charAt(3) + '</b>';
	document.getElementById(prefixo+'sol4').innerHTML = '<b>' + cadenaSolucion.charAt(4) + '</b>';
	document.getElementById(prefixo+'sol5').innerHTML = '<b>' + cadenaSolucion.charAt(5) + '</b>';
	document.getElementById(prefixo+'sol6').innerHTML = '<b>' + cadenaSolucion.charAt(6) + '</b>';
	document.getElementById(prefixo+'sol7').innerHTML = '<b>' + cadenaSolucion.charAt(7) + '</b>';
	document.getElementById(prefixo+'sol8').innerHTML = '<b>' + cadenaSolucion.charAt(8) + '</b>';
	
	var porcentaxe = 100.0 * acertos / (acertos + erros);
	var resultadoTotal = 'Puntuaci&oacute;n: <b>' + porcentaxe + '%</b>';

	var divResultado = document.getElementById(strResultado);
	if(divResultado != null) // Si existe o div para amosar o reultado, sacÃ¡molo
		divResultado.innerHTML = resultadoTotal;

	
		
   }

function borraEjTabla(f1,strResultado) {

	var prefixo = f1.name + '_';
	document.getElementById(prefixo+'res1').innerHTML = " ";
	document.getElementById(prefixo+'res2').innerHTML = " ";
	document.getElementById(prefixo+'res3').innerHTML = " ";
	document.getElementById(prefixo+'res4').innerHTML = " ";
	document.getElementById(prefixo+'res5').innerHTML = " ";
	document.getElementById(prefixo+'res6').innerHTML = " ";
	document.getElementById(prefixo+'res7').innerHTML = " ";
	document.getElementById(prefixo+'res8').innerHTML = " ";


	document.getElementById(prefixo+'sol1').innerHTML = " ";
	document.getElementById(prefixo+'sol2').innerHTML = " ";
	document.getElementById(prefixo+'sol3').innerHTML = " ";
	document.getElementById(prefixo+'sol4').innerHTML = " ";
	document.getElementById(prefixo+'sol5').innerHTML = " ";
	document.getElementById(prefixo+'sol6').innerHTML = " ";
	document.getElementById(prefixo+'sol7').innerHTML = " ";
	document.getElementById(prefixo+'sol8').innerHTML = " ";
	

	var divResultado = document.getElementById(strResultado);
	if(divResultado != null) // 
		divResultado.innerHTML = " ";

	
		
   }


