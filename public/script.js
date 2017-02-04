$(document).ready(function() {

	$('#menu-icon').on('mousedown', function() {
		$(this).toggleClass('change');
		$('.menu-screen').toggleClass('active');
	});
});

