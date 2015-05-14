$(document).ready(function() {
	var scale =  ($(document).width() / 2) / $('.document_preview').width();
	var size = 
	$('.document_preview').css({
		'-webkit-transform' : 'scale(' + scale + ',' + scale + ') translate(' + scale/2 + 'px,0px)',
	  '-moz-transform'    : 'scale(' + scale + ',' + scale + ') translate(' + scale/2 + 'px,0px)',
	  '-ms-transform'     : 'scale(' + scale + ',' + scale + ') translate(' + scale/2 + 'px,0px)',
	  '-o-transform'      : 'scale(' + scale + ',' + scale + ') translate(' + scale/2 + 'px,0px)',
	  'transform'         : 'scale(' + scale + ',' + scale + ') translate(' + scale/2 + 'px,0px)'
	});
});