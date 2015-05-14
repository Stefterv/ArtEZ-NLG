$(".edit_box").each(function(index, el) {
	edit_box_event(el);
});


$(".add_module").on('click', function(event) {
	event.preventDefault();

	// TODO Make this work for multiple types not just modules
	var data = {};
	data.class = "Module";
	var el = this;
	$.ajax({
	  method: "POST",
	  // getting the form from the server
	  url: "/api/edit_box.php",
	  data: data
	})
	.done(function(data){
		var newEl = $(data)
		$(el).before( newEl );
		// adding the event again because a brand new element misses those
		edit_box_event(newEl);
	});
});


// Keep the events for the edit boxes updated
function edit_box_event(el){
	$(el).on('input', function(event) {
		event.preventDefault();
		// check if button doesn't exist yet
		if($(this).find(".submitButton").length<1){
			// create button element
			var submitButton = $("<a></a>");
			// add href to make it clickable
			submitButton.attr("href","#");
			// add class to check if it exists
			submitButton.addClass('submitButton');
			// click event
			submitButton.on('click', function(event) {
				// disable going to /#
				event.preventDefault();
				// get the edit box
				var edit_box = $(this).closest('.edit_box');
				// create POST data for ajax request
				var data = {};
				// set class
				data['class'] = edit_box.data('class');
				// set database ID
				data['objectID'] = edit_box.data('objectid');
				// get all variables that have been changed in the edit box
				$(edit_box).find("[data-variable]").each(function(index, el) {
					data[$(this).data("variable")] = $(this).html();
				});

				// perform the database mutation
				$.ajax({
				  method: "POST",
				  url: "/api/edit.php",
				  data: data
				});

				// if sucessful remove the button
				$(this).remove();

				// TODO add notifcations if database communication fails
			});
			// button text
			submitButton.text("Save");
			// add the button to the DOM
			$(this).append(submitButton);
		}
	});
}