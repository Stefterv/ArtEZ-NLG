$(".edit_box").on('input', function(event) {
	event.preventDefault();
	var submitButton = $("<a></a>");
	submitButton.attr("href","#");
	submitButton.on('click', function(event) {
		event.preventDefault();
		alert($(this).closest('.edit_box').find("[contenteditable]").html());
	});
	$(this).append(submitButton);
});