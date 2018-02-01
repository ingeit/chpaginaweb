$(document).on('ready', function() {
    var _round = function(amount) {
        return Math.round(amount * 100) / 100;
    };

	
	var tasasVisa = {
		2:1.19516878661232,
		3:1.22043435802868,
		4:1.24618622965634,
		5:1.27243351829195,
		6:1.29918555090403,
		7:1.34696679453166,
		8:1.37782938064888,
		9:1.40934159330108,
		10:1.44151714525045,
		11:1.47437011846107,
		12:1.50791497849940
    };
	
	var tasasMaster = {
		2:1.19516878661232,
		3:1.22043435802868,
		4:1.24618622965634,
		5:1.27243351829195,
		6:1.29918555090403,
		7:1.34181504452872,
		8:1.37190215775790,
		9:1.40260879250556,
		10:1.43394772584297,
		11:1.46593207047838,
		12:1.49936782871000
    };
	
	var tasasAmex = {
		2:1.19175257254135,
		3:1.21751984398118,
		4:1.24379394175117,
		5:1.27058456187318,
		6:1.29790162833062,
		7:1.35071373052656,
		8:1.38295103522820,
		9:1.41589483828510,
		10:1.44956066927639,
		11:1.48396449387489,
		12:1.51912273159945
    };
	
	var tasasCabal = {
        2:1.19516878661232,
		3:1.22043435802868,
		4:1.24618622965634,
		5:1.27243351829195,
		6:1.29918555090403,
		7:1.34696679453166,
		8:1.37782938064888,
		9:1.40934159330108,
		10:1.44151714525045,
		11:1.47437011846107,
		12:1.50791497849940

    };
	
    var tasasNaranja = {
        3: 1.234406693,
		6: 1.235406693,
		12: 1.300406693

    };
    var $results = $('.results'),
        $form = $('form'),
        $inputImporte = $('#inputImporte'),
        $inputTarjeta = $('#inputTarjeta');

    $form.on('submit', function(e) {
		var	inputCuotas = $('#inputCuotasAll').val();
		
		if($('#inputTarjeta').val() === "0"){
			alert("Debe ingresar una tarjeta");
		}else if(inputCuotas !== "0"){
			e.preventDefault();
			var importe = $inputImporte.val(),
				tarjeta = $inputTarjeta.val(),
				tasas, htmlResponse = '';
			if(tarjeta === "Naranja"){
				var cuotas = $('#inputCuotasNar').val();
				console.log(cuotas);
			}else{
				var cuotas = $('#inputCuotasAll').val();
			}
			if (tarjeta !== 0 && importe > 0 && cuotas !== 0) {
				switch (tarjeta) {
					case 'Visa':
						tasas = tasasVisa;
						break;
					case 'Mastercard':
						tasas = tasasMaster;
						break;
					case 'American Express':
						tasas = tasasAmex;
						break;
					case 'Naranja':
						tasas = tasasNaranja;
						break;
					case 'Cabal':
						tasas = tasasCabal;
						break;
				}
				var importeTotal = importe * tasas[cuotas];
				importeTotal = (Math.ceil(importeTotal*20)/20).toFixed(2);
				var	precioCuotas = _round(importeTotal / cuotas);
				$('#linea').remove();
				$results.append('<div id="linea" class="well well-sm"><div class="row"><div class="col-md-3">Importe: $'+importe+'</div><div class="col-md-3">Tarjeta: '+tarjeta+'</div><div class="col-md-3">Valor de cuota: '+cuotas+' cuotas de $'+precioCuotas+'</div></div></div>');
			}
		}else{
			alert("Debe ingresar cantidad de cuotas");
		}
    });
	
	$inputTarjeta.on('change', function() {
		
		if ($inputTarjeta.val() === "0" ) {
			document.getElementById("inputCuotasAllDiv").style.display='none';
			document.getElementById("inputCuotasNarDiv").style.display='none';
		}else if ($inputTarjeta.val() === "Naranja" ) {
			document.getElementById("inputCuotasNarDiv").style.display='block';
			document.getElementById("inputCuotasAllDiv").style.display='none';
		}else{
			document.getElementById("inputCuotasNarDiv").style.display='none';
			document.getElementById("inputCuotasAllDiv").style.display='block';
		}
		
    });
	
});