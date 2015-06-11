<?
$documents = Document::find("SELECT * FROM documents WHERE deleted=0");
?>
<main>
	<div class="container">
		<div class="properties">
			<h2>FILTER BY TITLE</h2>
			<div class="search" contenteditable>Search</div>
			<h2>FILTER BY TAG</h2>
			<?
				$tags = Tag::findAll();
			?>
			<? foreach($tags as $tag): ?>
			<div class="tag">
				&nbsp;<?=$tag->title?>
			</div>
			<? endforeach; ?>
		</div>
		<div class="navigation">
			<div class="sort"><a href="#">name a-z</a><a href="#">created</a><a href="#" class="selected">editted</a></div>
			<div class="document_container">
				<? foreach($documents as $document): ?>
				<div class="document" data-id="<?=$document->id?>" data-indent="<?=$document->getIndent()?>" data-title="<?=$document->title?>" data-added="<?=$document->id?>" data-modified="<?=$document->changed?>">
					<?=$document->title?>
				</div>
				<? endforeach; ?>
				
			</div>
		</div>
		<div class="preview">
			<div class="document_preview" data-id="0">
				<i>click a document to preview</i>
			</div>
		</div>
		<script src="scripts/documents.js"></script>
	</div>
</main>