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
			<div class="tag"><?=$tag->title?></div>
			<? endforeach; ?>
		</div>
		<div class="navigation">
			<div class="sort"><a href="#" class="sortdocuments" data-sorttype="title">name a-z</a><a href="#" class="sortdocuments" data-sorttype="added">created</a><a href="#" class="sortdocuments" data-sorttype="modified">editted</a></div>
			<div class="document_container">
				<? foreach($documents as $document): ?>
				<?
					$tags = Tag_Link::getTags("Document",$document->id);
					$tagString = "";
					if($tags){
						foreach($tags as $tag){
							$tagString .= "tag_".$tag->title." ";
						}
					}
				?>
				<div class="document <?=$tagString?>" data-id="<?=$document->id?>" data-indent="<?=$document->getIndent()?>" data-title="<?=$document->title?>" data-added="<?=$document->id?>" data-modified="<?=$document->changed?>">
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