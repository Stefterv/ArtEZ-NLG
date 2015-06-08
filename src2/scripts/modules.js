$( '.document_container' ).on( 'click', '.module_item', function () { // on click module
	var id = $(this).data("id"); 
	$.ajax({
		url : 'api/get_modules.php', // url of php file
		type : 'POST', // post
		success : function (result) { // when succesful
			var j = JSON.parse(result); //parse from json
			$('.module_preview').html((j[id])); // replace #preview_content with content from json
		},
		error : function () {
		  $('.document_container').html('Unable to load'); // if unable to load display this error message
		}
	})
	$(this).toggleClass('selected');
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