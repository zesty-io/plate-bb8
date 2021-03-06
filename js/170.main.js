
$(function() {
	
	var	$window = $(window),
		$body = $('body');
	
	// Disable animations/transitions until the page has loaded.
	$body.addClass('is-loading');
	
	$window.on('load', function() {
		$body.removeClass('is-loading');
	});
	
	// Fix: Placeholder polyfill.
	$('form').placeholder();
	
	// Dropdowns.
	$('#nav').dropotron({
		offsetY: -22,
		mode: 'fade',
		noOpenerFade: true,
		speed: 300,
		detach: false
	});
	
	
	// Off-Canvas Navigation.
	// Title Bar.
	$(
		'<div id="titleBar">' +
		'<a href="#navPanel" class="toggle"></a>' +
		'<span class="title">' + $('#logo').html() + '</span>' +
		'</div>'
	)
	.appendTo($body);
	
	// Navigation Panel.
	$(
		'<div id="navPanel">' +
		'<nav>' +
		$('#nav').navList() +
		'</nav>' +
		'</div>'
	)
	.appendTo($body)
	.panel({
		delay: 500,
		hideOnClick: true,
		hideOnSwipe: true,
		resetScroll: true,
		resetForms: true,
		side: 'left',
		target: $body,
		visibleClass: 'navPanel-visible'
	});
	
	
});