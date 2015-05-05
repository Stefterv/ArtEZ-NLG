$(".edit_box").on('input', function(event) {
	event.preventDefault();
	if($(this).find("#submitButton").length<1){
		var submitButton = $("<a></a>");
		submitButton.attr("href","#");
		submitButton.attr("id","submitButton");
		submitButton.on('click', function(event) {
			event.preventDefault();
			var edit_box = $(this).closest('.edit_box');
			console.log(edit_box);
			var data = {};
			data['class'] = edit_box.data('class');
			data['objectID'] = edit_box.data('objectid');
			$(edit_box).find("[data-variable]").each(function(index, el) {
				data[$(this).data("variable")] = $(this).html();
			});
			console.log(data);
			$.ajax({
			  method: "POST",
			  url: "/api/edit.php",
			  data: data
			});
			$(this).remove();

		});
		submitButton.text("Save");
		$(this).append(submitButton);
	}
});