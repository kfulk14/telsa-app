// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}




function changeImage(thisDiv){
	  document.getElementById('my_image').src = thisDiv.id+".png"
	}



function cycleImages() {
    var images = $('#banner_area asset:img'),
        now = images.filter(':visible'),
        next = now.next().length ? now.next() : images.first(),
        speed = 1000;

    now.fadeOut(speed);
    next.fadeIn(speed);
}

$(function () {
    setInterval(cycleImages, 1400);
});