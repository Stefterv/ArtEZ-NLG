$(".search").on('input', function() {
  var search = $(this).text().toLowerCase();
  console.log(search);
  var list = $(".document");
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
  $(".document"+tagString).addClass('documentVisible');
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
  $(".sortdocuments").each(function( index ) {
    $(this).removeClass('selected');
  });
  $(this).addClass('selected');
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