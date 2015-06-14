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
function similar_text(first, second, percent) {
  //  discuss at: http://phpjs.org/functions/similar_text/
  // original by: Rafał Kukawski (http://blog.kukawski.pl)
  // bugfixed by: Chris McMacken
  // bugfixed by: Jarkko Rantavuori original by findings in stackoverflow (http://stackoverflow.com/questions/14136349/how-does-similar-text-work)
  // improved by: Markus Padourek (taken from http://www.kevinhq.com/2012/06/php-similartext-function-in-javascript_16.html)
  //   example 1: similar_text('Hello World!', 'Hello phpjs!');
  //   returns 1: 7
  //   example 2: similar_text('Hello World!', null);
  //   returns 2: 0

  if (first === null || second === null || typeof first === 'undefined' || typeof second === 'undefined') {
    return 0;
  }

  first += '';
  second += '';

  var pos1 = 0,
    pos2 = 0,
    max = 0,
    firstLength = first.length,
    secondLength = second.length,
    p, q, l, sum;

  max = 0;

  for (p = 0; p < firstLength; p++) {
    for (q = 0; q < secondLength; q++) {
      for (l = 0;
        (p + l < firstLength) && (q + l < secondLength) && (first.charAt(p + l) === second.charAt(q + l)); l++)
      ;
      if (l > max) {
        max = l;
        pos1 = p;
        pos2 = q;
      }
    }
  }

  sum = max;

  if (sum) {
    if (pos1 && pos2) {
      sum += this.similar_text(first.substr(0, pos1), second.substr(0, pos2));
    }

    if ((pos1 + max < firstLength) && (pos2 + max < secondLength)) {
      sum += this.similar_text(first.substr(pos1 + max, firstLength - pos1 - max), second.substr(pos2 + max,
        secondLength - pos2 - max));
    }
  }

  if (!percent) {
    return sum;
  } else {
    return (sum * 200) / (firstLength + secondLength);
  }
}