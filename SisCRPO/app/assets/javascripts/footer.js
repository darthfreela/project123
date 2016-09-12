// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require js/bootstrap.min.js
//= require plugins/jQueryUI/jquery-ui.js
//= require dist/js/app.min.js
//= require plugins/iCheck/icheck.min.js
//= require plugins/select2/select2.full.min.js
//= require plugins/input-mask/jquery.inputmask.js
//= require plugins/datepicker/bootstrap-datepicker.js
//= require plugins/timepicker/bootstrap-timepicker.js
$('#calendar').fullCalendar({});
$(function () {
	// Iniciliazar combobox select2
	$(".select2").select2();

	// Formatar campos
	$(".telefone").inputmask("(99) 9999-9999");
	$(".cpf").inputmask("999.999.999/99");
	$(".cpf").blur(function(){
		var cpf = $('.cpf').val().replace(/[^0-9]/g, '').toString();
		if( cpf.length == 11 ){
			var v = [];

			//Calcula o primeiro dígito de verificação.
			v[0] = 1 * cpf[0] + 2 * cpf[1] + 3 * cpf[2];
			v[0] += 4 * cpf[3] + 5 * cpf[4] + 6 * cpf[5];
			v[0] += 7 * cpf[6] + 8 * cpf[7] + 9 * cpf[8];
			v[0] = v[0] % 11;
			v[0] = v[0] % 10;

			//Calcula o segundo dígito de verificação.
			v[1] = 1 * cpf[1] + 2 * cpf[2] + 3 * cpf[3];
			v[1] += 4 * cpf[4] + 5 * cpf[5] + 6 * cpf[6];
			v[1] += 7 * cpf[7] + 8 * cpf[8] + 9 * v[0];
			v[1] = v[1] % 11;
			v[1] = v[1] % 10;

			//Retorna Verdadeiro se os dígitos de verificação são os esperados.
			if ( (v[0] != cpf[9]) || (v[1] != cpf[10]) ){
				alert('CPF inválido: ' + cpf);

				$(".cpf").val('');
				$(".cpf").focus();
			}
		} else {
			alert('CPF inválido:' + cpf);
			$(".cpf").val('');
			$(".cpf").focus();
		}
	});

	$(".cep").inputmask("99999-999");

      $(".vigencia").inputmask("99 meses");

      $(".bancoAg").inputmask("999 - 9999-9/99999999-9");

      $("#diasTrabalhados").keyup(function(){
        $("#valeTransporte").val($("#diasTrabalhados").val()*2);
        $("#horasTrabalhadas").val($("#diasTrabalhados").val()*6);
        $("#valeTransporte").removeProp("disabled");
        $("#horasTrabalhadas").removeProp("disabled");
      });


	// Formata'r cam'po data
	$(".data").inputmask("99/99/9999");
	$('.data').datepicker({
		autoclose: true,
		isRTL: false,
    		format: 'dd.mm.yyyy hh:ii',
    		autoclose:true,
    		language: 'br'
	});

	$(".time").inputmask("99:99:99");

	$(".autocompleteFunc" ).autocomplete({
		source: "users/findIdFunc",
		minLength: 2,
		select: function( event, ui ) {
			alert('sad');
		}
	});
});



