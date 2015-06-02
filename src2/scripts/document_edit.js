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
		var el = $(data);
		moduleEvent(el);
		$("#nodes").append(el);
		nodeForm();
	})
});	
$("[data-trigger]").on('click', function(event) {
	event.preventDefault();
	var el = $(this).data("trigger");
	$("#"+el).trigger('click');
});
$(".module").each(function(index, el) {
	moduleEvent($(this));
});

function moduleEvent(el){
	el.find("a.remove").on('click', function(event) {
		event.preventDefault();
		if($(this).closest('#nodes').find(".module").length > 1){
	  	$(this).closest('.module').remove();
		}
	});
	nodeEvent(el.find(".node_title"));
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

function nodeEvent(el){
	console.log(el);
	el.on('click', function(event) {
		event.preventDefault();
		console.log("Trigger Click!");
		$(this).closest('.module').toggleClass('show');
	});
}