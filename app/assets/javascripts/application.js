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
// = require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	$('.loc').hover(function(){
		$(this).children().fadeIn(200);
	}, function(){
		$(this).children().fadeOut(200);
	});

	// $('.boat_name').hover(function(){
	// 	$('.boat_hide').slideDown(300);
	// }, function(){
	// 	$('.boat_hide').slideUp(300);
	// });
	$('.boat_name').on('click', function(){

		if($(this).hasClass('open')){
			
			$(this).removeClass('open');
			$(this).children().slideUp(200);
		} else {
			$(this).addClass('open');
			$(this).children().slideDown(200);
		};
		
	});



});


