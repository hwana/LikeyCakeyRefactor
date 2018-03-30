$(function() {
    $('#findid').click(function(e) {
		$("#findid-form").delay(100).fadeIn(100);
 		$("#findpw-form").fadeOut(100);
		$('#findpw').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#findpw').click(function(e) {
		$("#findpw-form").delay(100).fadeIn(100);
 		$("#findid-form").fadeOut(100);
		$('#findid').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
