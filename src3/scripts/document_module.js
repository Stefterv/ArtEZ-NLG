$(".document_search_module_field").keydown(function(e) {
	if(e.which == 13){
		// alert("NO ENTER!");
		event.preventDefault();
		$.ajax({
			url: 'api/search_module.php',
			data: { query: $(this).html()},
		})
		.done(function(result) {
			result = $(result);
			$(".document_search_result").html(result);
			console.log(result.find(".result"));
			result.on('click', function(event) {
				event.preventDefault();
				var id = $(this).data('id');
				// $("#nodes").append()
				$.ajax({
					url: 'api/new_module.php',
					data: {
						module_id: id 
					},
				})
				.done(function(result) {
					result = $(result);
					$("#nodes").append(result);
					moduleEvent(result);
				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete");
				});
					
				$(".document_search_result").empty();
			});
		})
		.fail(function() {
			console.log("error");
		});
		
	}

});

$(".document_search_module_field").focusout(function(event) {
	// alert("NOFOCUS");
	if($(this).html() == "" || $(this).html() == "<br>"){
		$(".document_search_result").empty();
	}
});