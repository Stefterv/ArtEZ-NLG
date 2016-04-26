function initiModuleForm() {

	$("#save_master_module #delete").on('click', function(event) {
		$('#save_master_module input[name=action]').val('delete');
		$('#save_master_module').submit();		
	});

	$('#save_master_module').on('submit', function(event) {
		event.preventDefault();
		var form = $(this);
		var data = $(this).serialize();
		data += "&submit=edit";
		$.ajax({
			url: 'api/module.php',
			type: 'POST',
			data: data
		})
		.done(function(result) {
			$(".module_preview").html(result);
			console.log('ok!!!!!!!!!!!!!!!!!!');
			$.ajax({
				url: 'pages/modules_list.php',
				success: function(data) {
					console.log(data);
					$('.document_container').html(data);
					initModulesList();
				},
				error: function(a, b, c) {
					console.error([a, b, c]);
				}
			});
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
		
	});
}

function initModulesList() {
	$( '.module_item' ).on( 'click', function () { // on click module
		$(".module_selected").removeClass('module_selected');
		$(this).addClass('module_selected');
		var id = $(this).data("id");


		var selection = $('.document_container .module_item.selected');
		if (selection.length > 1) {
			$('.module_preview').html('<a href="#" id="modulescreate">Create new from selection</a>');
		}
		if (selection.length <= 1) {
			$('.module_preview').show();
			id = $('.document_container .module_selected').data("id");
			$.ajax({
				url : 'api/get_modules.php', // url of php file
				type : 'POST', // post
				data: {
					id: id
				},
				success : function (result) { // when succesful
					$(".module_preview").html(result);
				},
				error : function () {
				  $('.module_preview').html('Unable to load'); // if unable to load display this error message
				}
			});
		}
	});

	$('.module_preview').on('click', '.module_edit_button', function(){
		
		var id = $(this).data("id");
		$.ajax({
				url : 'api/get_form_module.php', // url of php file
				type : 'POST', // post
				data: {
					id: id
				},
				success : function (data) { // when succesful
					var result = $(data);
					result.find("[data-input]").on('input', function(event) {
						event.preventDefault();
						var inputName = $(this).data("input");
						$(this).closest("form").find("[name="+inputName+"]").val($(this).val());
					});
					$(".module_preview").html(result);

					initiModuleForm();
				},
				error : function () {
				  $('.module_preview').html('Unable to load'); // if unable to load display this error message
				}
			});
	});

	$("#modulesbutton").on('click', '.createnew', function(event) {
		event.preventDefault();
		$.ajax({
			url : 'api/get_form_module.php', // url of php file
			type : 'POST', // post
			data: {
				id: "new"
			},
			success : function (data) { // when succesful
				var result = $(data);
				result.find("[data-input]").on('input', function(event) {
					event.preventDefault();
					var inputName = $(this).data("input");
					$(this).closest("form").find("[name="+inputName+"]").val($(this).val());
				});
				$(".module_preview").html(result);

				initiModuleForm();
			}
		});
	});

	$(".search").on('input', function() {
	  var search = $(this).val().toLowerCase();
	  
	  var list = $(".module_item");
	  $(".document_container").addClass('filtered');
	  $(".documentVisible").removeClass("documentVisible");
	  $(list).each(function() {
		var documentName = $(this).data("title").toString().toLowerCase();
		if (documentName.indexOf(search) >= 0) {
		  $(this).addClass('documentVisible');
		}
	  });
	});

	$(".tag").click(function() {
		$(this).toggleClass('selected');
		$(".document_container").addClass('filtered');
		$(".documentVisible").removeClass("documentVisible");
		var tagString = "";
		$(".tag.selected").each(function(index, el) {
			var selectedTag = $(this).text();
			tagString += ".tag_"+selectedTag;
		});
		$(".module_item"+tagString).addClass('documentVisible');
	});

	$(".document").click(function() {
		$(".document_selected").removeClass('document_selected');
		$(this).addClass('document_selected');
		$(".preview_buttons").addClass('show');
		var id = $(this).data("id");
		$.ajax({
			url: 'api/get_document.php',
			type: 'GET',
			data: {"id": id},
		}).done(function(data) {
			$(".module_preview").remove();
			$(".document_preview_container").append(data);
		});
	});

	$(".sortdocuments").click(function(event) {

		$(".sortdocuments").each(function( index ) {
			$(this).removeClass('selected');
		});
		
		$(this).addClass('selected');
		event.preventDefault();
		// var list = $(".document").get();
		var sorttype = $(this).data("sorttype");
		var list = $('.document_container .module_item').detach();
		list.sort(function (a, b) {
			var aTitle = $(a).data(sorttype)+"";
			var bTitle = $(b).data(sorttype)+"";
			var sortedList = aTitle.localeCompare(bTitle);

			if(sorttype == "created" || sorttype == "modified"){
				sortedList = sortedList *-1;
			}

			return sortedList;

			// return + - +b.data("title");
		});

		$(".document_container").empty();
		$(".document_container").append(list);
		// .appendTo( $list );
	});

	$(".module_preview").on('click',"#modulescreate", function(event) {
		event.preventDefault();
		var data = {
			"fromModule": true
		};
		data.modules = [];
		$(".document_container .module_item.selected").each(function(index, el) {
			data.modules[index] = $(this).data("id");
		});
		makePostRequest("document_edit",data);
	});

	$(".module_selection").on('click', function(event) {
		event.preventDefault();
		$(this).closest('.module_item').toggleClass('selected');
	});

}
initModulesList();
function makePostRequest(url, data) {
	var jForm = $('<form></form>');
	jForm.attr('action', url);
	jForm.attr('method', 'post');
	for (var name in data) {
		var jInput = $("<input>");
		jInput.attr('name', name);
		jInput.attr('value', data[name]);
		jForm.append(jInput);
	}
	jForm.submit();
}