$(".search").on('input', function() {
  var search = $(this).text();
  var list = $(".document").get();
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

$(".document").click(function() {
  $(".document_selected").removeClass('document_selected');
  $(this).addClass('document_selected');
  var id = $(this).data("id");
  $.ajax({
    url: 'api/get_document.php',
    type: 'GET',
    data: {"id": id},
  })
  .done(function(data) {
    console.log("success");
    $(".document_preview").remove();
    $(".preview").append(data);
  });
  
});
$(".preview_buttons .button").on('click', function(event) {
  event.preventDefault();
  var url = $(this).attr('href');
  window.location.href = url+$(".document_preview").data("id");
});

$(".sortdocuments").click(function(event) {
  event.preventDefault();
  // var list = $(".document").get();
  var sorttype = $(this).data("sorttype");
  var list = $('.document_container .document').detach();
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