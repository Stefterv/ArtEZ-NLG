<?
$documents = Document::findAll();
?>

<main class="homepage">
	<header>
		<div id="searchbox" contenteditable>
			&nbsp
		</div>
	</header>
	<div class="documents">
		<? foreach($documents as $document): ?>
			<div class="row" data-indent="0" data-title="<?=$document->title?>">
				<p><?=$document->title?> - <?=$document->getIndent()?></p>
				<a href="documents/edit.php?id=?=$document->id?>" class="edit">Edit</a>
				<a href="#" class="remove">Remove</a>
			</div>
		<? endforeach; ?>
	</div>

	<footer>
		<a href="document.php">Add</a>
	</footer>
</main>