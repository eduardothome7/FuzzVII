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

function validateEmail(email) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

$(document).ready(function(){
   	$(".button-collapse").sideNav();
   	$('.dropdown-button').dropdown();
   	
   	$('.modal').modal();
      
   	$('select').material_select();

    Materialize.updateTextFields();

   	$('.dropdown-hover').dropdown({
      inDuration: 300,
      outDuration: 225,
      hover: true,  
      belowOrigin: true, 
      alignment: 'right' 
    });
    
    $('.required').keyup(function() {

        var empty = false;

        $('.required').each(function() {
            if ($(this).val() == '') {
              empty = true;
            }           
        });
        
        if($(this).attr('class').indexOf("email") > 0){
          empty = !validateEmail($(this).val());            
        }               
      
        if(empty) {
            $('input[type=submit]').attr('disabled', 'disabled');
        } else {
            $('input[type=submit]').removeAttr('disabled'); 
        }
    });
  
    $('#studio_name').change(function(){
      var studio_name = $(this).val(); 
      $.ajax({
        url: '/studios/get_by_name',
        data: { name: studio_name },
        type: 'post',
        async: false
        error: function(){
          
        }
      });
    });

    $('.cnpj').mask("99.999.999/9999-99");

    $('.cep').mask("99999-999");

    $('.timepicker').pickatime({
      default: '8:00AM', 
      fromnow: 0,       
      twelvehour: false, 
      donetext: 'OK', 
      cleartext: 'Clear', 
      canceltext: 'Cancel', 
      autoclose: false, 
      ampmclickable: true, 
      aftershow: function(){} 
    });

    $('.cep').blur(function(){
      var cep = $(this).val().replace(/\D/g, '');
   
      if(cep != "") { 
        var validacep = /^[0-9]{8}$/;
      
        if(validacep.test(cep)) {
          $('#lbl-studio-address, #lbl-studio-ngb, #lbl-studio-city, #lbl-studio-uf').addClass("active");
          $("#studio_address").val("...");
          $("#studio_ngb").val("...");
          $("#studio_city").val("...");
          $("#studio_uf").val("...");

          $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {
            if(!("erro" in dados)) {
              $('#lbl-studio-address, #lbl-studio-ngb, #lbl-studio-city, #lbl-studio-uf').addClass("active");
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