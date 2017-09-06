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

});