$(".search").on('keyup', function() {
  var search = $(this).val().toLowerCase();
  var list = $(".document");
  $(".document_container").addClass('filtered');
  $(".documentVisible").removeClass("documentVisible");
  $(list).each(function() {
    var documentName = $(this).data("title").toLowerCase();
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
  $(".preview_buttons").addClass('show');
  var id = $(this).data("id");
  $.ajax({
    url: 'api/get_document.php',
    type: 'GET',
    data: {"id": id},
  })
  .done(function(data) {
    $(".document_preview").remove();
    $(".document_preview_container").append(data);
  });
});

$(".preview_buttons a").on('click', function(event) {
  event.preventDefault();
  var url = $(this).attr('href')+$(".document_preview").data("id");
  window.location.href = url;
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
    if(sorttype == "modified"){      
      aTitle = aTitle.replace(/:/gi,'');
      aTitle = aTitle.replace(/ /gi,'');
      aTitle = aTitle.replace(/-/gi,'');
      bTitle = bTitle.replace(/:/gi,'');
      bTitle = bTitle.replace(/ /gi,'');
      bTitle = bTitle.replace(/-/gi,'');
    }
    var sortedList = aTitle.localeCompare(bTitle);
    if(sorttype == "modified"){
      sortedList = sortedList *-1;
    }
    return sortedList;
    // return + - +b.data("title");
  });

  $(".document_container").empty();
  $(".document_container").append(list);
  // .appendTo( $list );
});