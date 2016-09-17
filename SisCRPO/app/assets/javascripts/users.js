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

	// Formata'r cam'po data
	$(".data").inputmask("99/99/9999");
	$('.data').datepicker({
		autoclose: true
	});
});