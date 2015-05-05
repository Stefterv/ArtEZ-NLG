<?php
	require_once('dbObject.php');
	$document = Document::findByID(1);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Edit Module</title>
	<link rel="stylesheet" href="style_edit_module.css">
</head>
<body>
<header></header>
	<main class="editpage">
		<div class="container" id="edit-container">
			<div id="meta-info">
				<div class="meta-sub" id="title">
					<p><?=$document->title?></p>
				</div>

				<div class="meta-sub" id="author">
					<p>author</p>	
				</div>
				
				<div class="meta-sub" id="created">
					<p>created</p>
				</div>

				<div class="meta-sub" id="edited">
					<p><?=$document->changed?></p>
				</div>
			</div>

			<div id="module-info">
				<?
					$nodes = $document->getNodes();
					foreach ($nodes as $node) {
						$node->display_edit();
					}
				?>
			</div>
		</div>
		
		<div class="container" id="preview-container">
			<div id="preview">
				<?
					$nodes = $document->getNodes();
					foreach ($nodes as $node) {
						$node->display_preview();
					}
				?>
			</div>
		</div>	
	</main>
	<footer></footer>
</body>
</html>