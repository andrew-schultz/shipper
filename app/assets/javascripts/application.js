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
	$('.flash').fadeOut(5000);


	$('.loc').hover(function(){
		$(this).children().fadeIn(200);
	}, function(){
		$(this).children().fadeOut(200);
	});

	$('.boat_name').on('click', function(){
		if($(this).hasClass('open')){
			$(this).removeClass('open');
			$(this).children().slideUp(200);
		} else {
			$(this).addClass('open');
			$(this).children().slideDown(200);
		};
	});

	$('.thumb').on('click', function(){
		if($(this).hasClass('out')){
			$(this).removeClass('out');
			$(this).children().show().animate({
				'left': '300px',
				'height': '300px',
				'width': '300px',
			});
		}
	});

	$('#img_pop').on('click', function(){
		$('#hide').show().animate({
			'width': '250px',
			'height': '100px',
			'top': '-175px',
			'left': '5px',
		})
	});

	$('#follow').on('click', function(){
		if($(this).hasClass('active')){
			$('#followboat').show();
		} else {
			$('#all').removeClass('active')
			$('#allboat').hide();
			$('#follow').addClass('active');
			$('#followboat').show();
		};
	});

	$('#all').on('click', function(){
		if($(this).hasClass('active')){
			$('allboat').show();
		} else {
			$('#follow').removeClass('active');
			$('#followboat').hide();
			$('#all').addClass('active');
			$('#allboat').show();
		};
	});


});


