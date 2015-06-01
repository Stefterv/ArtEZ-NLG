$(function() {
  $( "#nodes" ).sortable({
  	handle: ".node_title",
		stop: function(event, ui) {
			nodeForm();
		}
	});
  // $( "#nodes" ).disableSelection();
});
function nodeForm(){
	$("#nodes .module").each(function(i) {
		var index = $(this).index();
		$(this).find("[name]").each(function(i, el) {
			var text = $(this).attr("name");
			var attrName = text.substring(text.indexOf("]")+1,text.length);
			var newName = "nodes["+index+"]"+attrName;
			$(this).attr("name",newName);
		});
	});
}
$("#addmodule").on('click', function(event) {
	event.preventDefault();
	$.ajax({
		url: '/api/new_module.php',
		type: 'GET'
	})
	.done(function(data) {
		$("#nodes").append(data);
		nodeForm();
	})
});	
$(".module a.remove").on('click', function(event) {
	event.preventDefault();
	if($(this).closest('#nodes').find(".module").length > 1){
  	$(this).closest('.module').remove();
	}
});
$("[data-input]").each(function(index, el) {
	var elName = $(this).data("input");
	var value = $("[name="+elName+"]").val();
	$(this).html(value);
	$(this).on('input', function(event) {
		var elName = $(this).data("input");
		$("[name="+elName+"]").val($(this).html());
	});
});
$(".module .node_title").on('click', function(event) {
	event.preventDefault();
	$(this).closest('.module').toggleClass('show');
});