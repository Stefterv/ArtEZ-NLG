$(function() {
  $( "#nodes" ).sortable({
  	handle: ".module_move",
		axis: "y",
		containment: "parent"
	});
  $("#document_tags").tagsInput({
  	width: "auto",
  	height: "auto",
  	'defaultText':'Create Tag'
  });
});
$("#addmodule").on('click', function(event) {
	event.preventDefault();
	$.ajax({
		url: '/api/new_module.php',
		type: 'GET'
	})
	.done(function(data) {
		var el = $(data);
		$("#nodes").append(el);
		moduleEvent(el);
	});
});	
$("[data-trigger]").on('click', function(event) {
	event.preventDefault();
	var el = $(this).data("trigger");
	$("#"+el).trigger('click');
});
$(".module").each(function(index, el) {
	moduleEvent($(this));
});







$("#submit").on('click', function(event) {
	nodeForm();
});


function moduleEvent(el){
	el.find(".module_remove").on('click', function(event) {
		event.preventDefault();
		if($(this).closest('#nodes').find(".module").length > 1){
	  	$(this).closest('.module').remove();
		}
	});
	el.find(".module_edit").on('click', function(event) {
		$(this).closest('.module').toggleClass('open');
	});
	el.find("[data-inputvalue]").on('input', function(event) {
		var elName = $(this).data("inputvalue");
		$(this).closest(".module").find("[data-inputname="+elName+"]").val($(this).val());
	});
}
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
$("[data-input]").each(function(index, el) {
	inputEvent($(this));
	
});

function inputEvent(el){
	var elName = el.data("input");
	var value = $("[name="+elName+"]").val();
	el.html(value);
	el.on('input', function(event) {
		var elName = $(this).data("input");
		$("[name="+elName+"]").val($(this).val());
	});
}
