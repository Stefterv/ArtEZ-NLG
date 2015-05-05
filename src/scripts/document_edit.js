$(".edit_box").on('input', function(event) {
	event.preventDefault();
	var submitButton = $("<a></a>");
	submitButton.attr("href","#");
	submitButton.on('click', function(event) {
		event.preventDefault();
		var className;
		var objectId;
		var objectVar;
		alert($(this).closest('.edit_box').find("[contenteditable]").html());
		$(this).remove();
	});
	submitButton.text("Save");
	$(this).append(submitButton);
});

$(".add_module").on('click', function(event) {
	event.preventDefault();
	$.get( "editbox.php", function( data ) {
		$('.add_module').before( data );
	});
});