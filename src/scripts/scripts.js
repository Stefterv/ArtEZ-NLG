$(document).ready(function() {
	var size =  ($(document).width() / 2) / $('.document_preview').width();
	$('.document_preview').css({
		'-webkit-transform' : 'scale(' + size + ',' + size + ')',
	  '-moz-transform'    : 'scale(' + size + ',' + size + ')',
	  '-ms-transform'     : 'scale(' + size + ',' + size + ')',
	  '-o-transform'      : 'scale(' + size + ',' + size + ')',
	  'transform'         : 'scale(' + size + ',' + size + ')'
	});
});