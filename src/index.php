<?
include "dbObject.php";
$documents = Document::findAll();
?>
<? include "includes/header.php"; ?>

<main class="homepage">
	<header contenteditable>
		search
	</header>

	<? foreach($documents as $document): ?>
		<div class="row" data-indent="0">
			<p><?=$document->title?> - <?=$document->getIndent()?></p>
			<a href="document.php?id=<?=$document->id?>" class="edit">Edit</a>
			<a href="#" class="remove">Remove</a>
		</div>
	<? endforeach; ?>

	<footer>
		<a href="document.php">Add</a>
	</footer>
</main>

<? include "includes/footer.php"; ?>

