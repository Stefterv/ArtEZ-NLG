function generate_pdf(parent) {

// make all CSS internal
	$( parent ).children().each(function () {
		attr = $(this).prop("tagName") // get all TAG names
		console.log(attr);
		if (attr != "DIV" && attr != "SPAN") {
		
		
		
			style = css($(attr));
			$(attr).css(style);
		}
	    var attr = $(this).attr('id'); // get all ID names
	    attr = "#" + attr; // add indicator for jquery selection
	    var style = css($(attr)); // find css
		$(attr).css(style); // make css internal


		attr = $(this).attr('class'); // get all CLASS names
	    attr = "." + attr;
	    style = css($(attr));
		$(attr).css(style);
		
		
		
		
	});

	var html = $( parent ).html(); // get preview html
	html = html.replace(/"/g, "'"); // replace double quotes with single for parsing
	
	var ajaxurl = 'includes/create_pdf.php', // script to handle pdf conversion
	data =  {'content': html}; // supply the content for pdf


	$.post(ajaxurl, data, function (response) { // post the request
    	 
    })

    // after request use this hack to request the downloadable file
    .done(function(response, status, request){ // if request succesful
    	var disp = request.getResponseHeader('Content-Disposition'); // check for file
    	if (disp && disp.search('attachment') != -1) { 
            var form = $('<form method="POST" action="' + ajaxurl + '">'); // craft a hidden html form that ensures downloadability
            $.each(data, function(k, v) {
                form.append($('<input type="hidden" name="' + k +
                        '" value="' + v + '">'));
            });
            $('body').append(form); // insert the form into the body to make it executable
            form.submit(); // execute the form
        }
    });
}