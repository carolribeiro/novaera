//////////////////////////////////////////
// INDEX ////////////////////////////////
// TABLE OF CONTENT ////////////////////
// 2. Scroll Effect code /////////////
// 4. Background slider ////////////
// 5. Contact Form Validation /////
//////////////////////////////////
/////////// END OF INDEX ////////


(function ($) {

"use strict";


//////////////////////////////////////////////////////////////////
///////////////// 2. navigation scroll effect ///////////////////
////////////////////////////////////////////////////////////////


$(window).on('scroll', function(event) {
	Scroll();
});	

$('.main_navigation ul > li > a').click(function() {  
	$(this).addClass('active');
	$('html, body').animate({scrollTop: $(this.hash).offset().top -145}, 1000);
	return false;
});

// User define function
function Scroll() {
	var contentTop      =   [];
	var contentBottom   =   [];
	var winTop      =   $(window).scrollTop();
	var rangeTop    =   200;
	var rangeBottom =   500;
	$('.main_navigation > ul').find('.scroll > a').each(function(){
		contentTop.push( $( $(this).attr('href') ).offset().top);
		contentBottom.push( $( $(this).attr('href') ).offset().top + $( $(this).attr('href') ).height() );
	})
	$.each( contentTop, function(i){
		if ( winTop > contentTop[i] - rangeTop ){
			$('.main_navigation > ul > li.scroll')
			.removeClass('active')
			.eq(i).addClass('active');			
		}
	})

};



//////////////////////////////////////////////////////////
///////////////// 4. code for Background Slider /////////
////////////////////////////////////////////////////////


$(document).on('ready', function() { 
  
  //pretty photo activator
  $("a[data-gal^='prettyPhoto']").prettyPhoto();    

  var i =0; 
  var images = [
  	// add your image url here
	'images/slider/image-1.jpg',
	'images/slider/image-2.jpg',
	'images/slider/image-3.jpg',
	'images/slider/image-4.jpg'
  ];
  // grabing the container of slider
  var image = $('#slider');
  //Change image at regular intervals
  setInterval(function(){   
   image.fadeOut(500, function () {
   image.css('background-image', 'url(' + images [i++] +')');
   image.fadeIn(500);
   });
   if(i == images.length)
    i = 0;
  }, 6000);            
 });




///////////////////////////////////////////////////
////////////// 5. contact form validation ////////
/////////////////////////////////////////////////


// Function that validates email address through a regular expression.
function validateEmail(email_val) {
	var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (filter.test(email_val)) {
		return true;
	}
	else {
		return false;
	}
}

// getting input fields.
var name = $('.contact-form input.name');
var guest = $('.contact-form input.guest');
var attend = $('.contact-form input.attend');
var email = $('.contact-form input.email');

// removing response 
name.on('focus', function () {
	name.removeClass('error');
	$('.contact-form p.output').remove();
});
email.on('focus', function () {
	email.removeClass('error');
	$('.contact-form p.output').remove();
});
guest.on('focus', function () {
	guest.removeClass('error');
	$('.contact-form p.output').remove();
});
attend.on('focus', function () {
	attend.removeClass('error');
	$('.contact-form p.output').remove();
});



// making validation while form submission
$('.contact-form').on('submit', function () {


	var email_val = email.val();

	if (name.val() === '') {
		name.addClass('error');
		return false;
	}
	else if ( validateEmail(email_val) === false ) {
		email.addClass('error');
		return false;
	}
	else if ( guest.val() === '' ) {
		guest.addClass('error');
		return false;
	}
	else if ( attend.val() === '' ) {
		attend.addClass('error');
		return false;
	}
	else if (name.val()!=='' && guest.val()!=='' && attend.val()!=='' &&  validateEmail(email_val)==true) {

		// sending value with ajax request
		$.post('sendemail.php', $(this).serialize(), function (response) {
			$('.contact-form').append(response);
		});
		$(this).find('input').val('');

		return false;
	}
});




})(jQuery);