$( '.document_container' ).on( 'click', '.module_item', function () { // on click module
	$(this).toggleClass('module_selected');
	var id = $(this).data("id");
	
	if ($('.document_container .module_selected').length > 1) {
		$('.module_preview').hide();
	}
	if ($('.document_container .module_selected').length == 1) {
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
		})
	}
	if ($('.document_container .selected').length < 1) {
		$('.module_preview').html('<p>Click on a module on the left hand side to select it for editing.</p><p>Or select more modules to be able to create a new document containing the selected modules.</p>'); // if unable to load display this error message
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
			success : function (result) { // when succesful
				var result = $(result);
				result.find("[data-input]").on('input', function(event) {
					event.preventDefault();
					var inputName = $(this).data("input");
					console.log(inputName);
					$(this).closest("form").find("[name="+inputName+"]").val($(this).html());
				});
				$(".module_preview").html(result);
			},
			error : function () {
			  $('.module_preview').html('Unable to load'); // if unable to load display this error message
			}
		})
});

$("#modulesbutton").on('click', '.createnew', function(event) {
	event.preventDefault();
	$.ajax({
		url : 'api/get_form_module.php', // url of php file
		type : 'POST', // post
		data: {
			id: "new"
		},
		success : function (result) { // when succesful
			$(".module_preview").html(result);
		}
	});
});
$(".search").on('input', function() {
  var search = $(this).text();
  var list = $(".module_item").get();
  console.log(list);
	if(row_order == null){
		row_order = list;
	}
	if(search == ""){
		list = row_order;
	} else {
		var compare = function(a,b){
			var aValue = similar_text($(a).data("title"),search,100);
			var bValue = similar_text($(b).data("title"),search,100);
			if(aValue > bValue) return -1;
			if(aValue < bValue) return 1;
			if(aValue == bValue) return 0;
		}
		list.sort(compare);
	}
	for(var i = 0; i<list.length; i++){
		$(list[i]).appendTo('.document_container');
	}
});
$("#modulescreate").on('click', function(event) {
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

function makePostRequest(url, data) {
    var jForm = $('<form></form>');
    jForm.attr('action', url);
    jForm.attr('method', 'post');
    for (name in data) {
        var jInput = $("<input>");
        jInput.attr('name', name);
        jInput.attr('value', data[name]);
        jForm.append(jInput);
    }
    jForm.submit();
}