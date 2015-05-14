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
				<a href="document_edit?document=<?=$document->id?>" class="edit">Edit</a>
				<a href="document_edit?duplicate=<?=$document->id?>" class="edit">Duplicate</a>
				<a href="#" class="remove">Remove</a>
			</div>
		<? endforeach; ?>
	</div>
	<footer>
		<a href="/document_edit">Add</a>
	</footer>
</main>