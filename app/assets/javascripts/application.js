// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require materialize
//= require moment
//= require maskedinput  
//= require_tree .

function cleanCepForm() {
  $("#studio_address").val("");
  $("#studio_ngb").val("");
  $("#studio_city").val("");
  $("#studio_uf").val("");
}

$(document).ready(function(){
   	$(".button-collapse").sideNav();
   	$('.dropdown-button').dropdown();
   	
   	$('.modal').modal();
      
   	$('select').material_select();

   	$('.dropdown-hover').dropdown({
      inDuration: 300,
      outDuration: 225,
      hover: true, // Activate on hover
      belowOrigin: true, // Displays dropdown below the button
      alignment: 'right' // Displays dropdown with edge aligned to the left of button
    });

    $('#studio_name').change(function(){
      var studio_name = $(this).val(); 
      $.ajax({
         url: '/studios/getByName',
         data: { name: studio_name }
      });
    });

    $('.cnpj').mask("99.999.999/9999-99");

    $('.cep').mask("99999-999");

    $('.timepicker').pickatime({
      default: '8:00AM', // Set default time: 'now', '1:30AM', '16:30'
      fromnow: 0,       // set default time to * milliseconds from now (using with default = 'now')
      twelvehour: false, // Use AM/PM or 24-hour format
      donetext: 'OK', // text for done-button
      cleartext: 'Clear', // text for clear-button
      canceltext: 'Cancel', // Text for cancel-button
      autoclose: false, // automatic close timepicker
      ampmclickable: true, // make AM PM clickable
      aftershow: function(){} //Function for after opening timepicker
    });

    $('.cep').blur(function(){
      var cep = $(this).val().replace(/\D/g, '');
   
      if(cep != "") { 
        var validacep = /^[0-9]{8}$/;
      
        if(validacep.test(cep)) {
          $("#studio_address").val("...");
          $("#studio_ngb").val("...");
          $("#studio_city").val("...");
          $("#studio_uf").val("...");

          $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {
            if(!("erro" in dados)) {
              $("#studio_address").val(dados.logradouro);
              $("#studio_ngb").val(dados.bairro);
              $("#studio_city").val(dados.localidade);
              $("#studio_uf").val(dados.uf);
            } else {
              cleanCepForm();
              alert("CEP não encontrado.");
            }   
          });

        } else {
        
          cleanCepForm();
      
        }
      }
    });

});