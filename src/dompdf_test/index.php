<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>PDF convert</title>
	<link rel="stylesheet" href="style.css">

	<!-- include javascripts & jqueries -->
	<script src="includes/jquery-2.1.4.min.js"></script>
	<script src="includes/get_css.js"></script>
	<script src="includes/generate_pdf.js"></script>
	
	<script>
	$(document).ready(function(){
		// on click
		$('body').on('click', '#create_button',function(){
			generate_pdf("#preview");
		});
	});
	</script>
</head>

<body>
	<div id="preview">
		<h1>Heading 1</h1>
		<p class="classtest" id="idtest">With a body of text</p>
		<div id="divtest">Hello!</div>

		<p>More text can't hurt. I am just a paragraph nothing fancy such as an ID or CLASS</p>
	</div>
	<div id="create_button">Create PDF</div>
</body>
</html>