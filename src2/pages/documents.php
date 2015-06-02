<?
$documents = Document::find("SELECT * FROM documents WHERE deleted=0");
?>
<main>
	<div class="container">
		<div class="navigation document_overview">
			<div class="search" contenteditable>Search</div>
			<div class="sort">sort by <a href="#" class="sortdocuments" data-sorttype="title">name</a>/<a href="#" class="sortdocuments" data-sorttype="added">date added</a>/<a href="#" class="sortdocuments" data-sorttype="modified">date modified</a></div>
			<div class="document_container">
				<? foreach($documents as $document): ?>
				<div class="document" data-id="<?=$document->id?>" data-indent="<?=$document->getIndent()?>" data-title="<?=$document->title?>" data-added="<?=$document->id?>" data-modified="<?=$document->changed?>">
					<?=$document->title?>
				</div>
				<? endforeach; ?>
			</div>
		</div>
		<div class="preview">
			<div class="preview_buttons">
				<!-- <a href="#" class="button">Download</a> -->
				<a href="document_edit?document=" class="button">Edit</a>
				<a href="document_edit?duplicate=" class="button">Duplicate</a>
				<!-- <a href="#" class="button">Delete</a> -->
			</div>
			<div class="document_preview" data-id="0">
				<i>click a document to preview</i>
			</div>
		</div>
		<script src="scripts/documents.js"></script>
	</div>
</main>