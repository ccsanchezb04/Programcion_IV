window.onload = function() {
	document.getElementById("calcular").onclick = calcularIMC;
	valoresEn0();
}

function valoresEn0() {
	document.getElementById("peso").value = 0;
	document.getElementById("estatura").value = 0; 
}

function calcularIMC() {
	var msg = "";
	var alerta = document.getElementById("alerta");
	var peso = parseInt(document.getElementById("peso").value);
	var estatura = parseFloat(document.getElementById("estatura").value);

	var imc = peso/Math.pow(estatura,2);

	if (imc<18) {
		msg = "Necesario valorar signos de desnutrición";
		alerta.className = "alert alert-danger mostrar";
	} else if (imc>=18 && imc<=24.9) {
		msg = "Su IMC es Normal";
		alerta.className = "alert alert-success mostrar";
	} else if (imc>=25 && imc<=26.9) {
		msg = "Usted tiene Sobrepeso";
		alerta.className = "alert alert-warning mostrar";
	} else if (imc>=27 && imc<=29.9) {
		msg = "Obecidad Grado I";
		alerta.className = "alert alert-danger mostrar";
	} else if (imc>=30 && imc<=39.9) {
		msg = "Obecidad Grado II";
		alerta.className = "alert alert-danger mostrar";
	} else if (imc>=40) {
		msg = "Obecidad Grado III";
		alerta.className = "alert alert-danger mostrar";
	}

	valoresEn0();
	alerta.innerHTML = "Su IMC es: "+imc.toFixed(2)+"<br /><b>"+msg+"</b>";
}
