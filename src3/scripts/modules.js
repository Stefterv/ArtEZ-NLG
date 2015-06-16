$( '.document_container' ).on( 'click', '.module_item', function () { // on click module
	$(this).toggleClass('module_selected');
	var id = $(this).data("id");
	
	if ($('.document_container .module_selected').length > 1) {
		$('.module_preview').html('<a href="#" id="modulescreate">Create new from selection</a>');
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
	if ($('.document_container .module_selected').length < 1) {
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

$(".module_preview").on('submit',"#save_master_module", function(event) {
	event.preventDefault();
	var form = $(this);
	var data = $(this).serialize();
	data += "&submit=edit";
	console.log(data);
	id = $('.document_container .module_selected').data("id");
	$.ajax({
		url: 'api/module.php',
		type: 'POST',
		data: data
	})
	.done(function(result) {
		var editbutton = '<div class="module_edit_button" data-id='+id+'>EDIT</div>';
		editbutton += result;
		$(".module_preview").html(editbutton);
	})
	.fail(function() {
		console.log("error");
	})
	.always(function() {
		console.log("complete");
	});
	
});
$(".search").on('input', function() {
  var search = $(this).text().toLowerCase();
  console.log(search);
  var list = $(".module_item");
  $(".document_container").addClass('filtered');
  $(".documentVisible").removeClass("documentVisible");
  $(list).each(function() {
    var documentName = $(this).data("title").toLowerCase();
    console.log(documentName);
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
  })
  .done(function(data) {
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
    return aTitle.localeCompare(bTitle);
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
	$(".document_container .module_item.module_selected").each(function(index, el) {
		data.modules[index] = $(this).data("id");
	});
	makePostRequest("document_edit",data);
	// console.log(data);
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