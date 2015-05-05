<?
include "dbObject.php";
$documents = Document::findAll();
?>
<? include "includes/header.php"; ?>


		<header contenteditable>
			search
		</header>
		
		<main>
			<? foreach($documents as $document): ?>
				<div class="row" data-indent="0">
					<p><?=$document->title?> - <?=$document->getIndent()?></p>
					<a href="#" class="remove">Remove</a>
				</div>
			<? endforeach; ?>
		</main>

		<footer>
			<a href="#">Add</a>
		</footer>
<? include "includes/footer.php"; ?>
