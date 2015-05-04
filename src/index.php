<?
include "dbObject.php";
$documents = Document::findAll();
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>NLG Documents Overview</title>
		<link rel="stylesheet" href="style/main.css">
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="js/scripts.js"></script>
	</head>

	<body>
		<header>
			search
		</header>
		
		<main>
			<? foreach($documents as $document): ?>
				<div class="row" data-indent="0">
					<p><?=$document->title?></p>
					<a href="#" class="remove">Remove</a>
				</div>
			<? endforeach; ?>
		</main>

		<footer>
			<a href="#">Add</a>
		</footer>
	</body>

</html>