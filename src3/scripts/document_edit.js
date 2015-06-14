$(function() {
  $( "#nodes" ).sortable({
  	handle: ".module",
		stop: function(event, ui) {
			nodeForm();
		}
	});
  $("#document_tags").tagsInput({
  	width: "auto",
  	height: "auto",
  	'defaultText':'Create Tag'
  })
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
		nodeForm();
	})
});	
$("[data-trigger]").on('click', function(event) {
	event.preventDefault();
	var el = $(this).data("trigger");
	$("#"+el).trigger('click');
});
$(".module_container").each(function(index, el) {
	moduleEvent($(this));
});










function moduleEvent(el){
	el.find("a.remove").on('click', function(event) {
		event.preventDefault();
		if($(this).closest('#nodes').find(".module_container").length > 1){
	  	$(this).closest('.module_container').remove();
		}
	});
	el.find(".module").on('click', function(event) {
		$(this).closest('.module_container').toggleClass('show');
	});
	el.find("[data-inputvalue]").on('input', function(event) {
		var elName = $(this).data("inputvalue");
		$(this).closest(".module_container").find("[data-inputname="+elName+"]").val($(this).html());
	});
}
function nodeForm(){
	$("#nodes .module_container").each(function(i) {
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
		$("[name="+elName+"]").val($(this).html());
	});
}
