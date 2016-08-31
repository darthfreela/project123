(function() {
  // Iniciliazar combobox select2
  $(".select2").select2();
alert('s');
  // Formatar campos
  $(".telefone").inputmask("(99) 9999-9999");
  $(".cpf").inputmask("999.999.999/99");
  $(".cep").inputmask("99999-999");

  // Formatar campo data
  $(".data").inputmask("99/99/9999");
  $('.data').datepicker({
    autoclose: true
  });

}).call(this);
