<?
$documents = Document::find("SELECT * FROM documents WHERE deleted=0");
?>
<main>
	<div class="container">
		<div class="properties">
			<h2>FILTER BY TITLE</h2>
			<input type="text" placeholder="Search" class="search" />
			<h2>FILTER BY TAG</h2>
			<?
				// $tags = Tag::findAll();
				$tags = Tag::find("SELECT * FROM tags
													WHERE (
													 SELECT COUNT(*)
													        FROM tag_links WHERE tag_links.link_type = 'Document' AND tag_links.tag_id = tags.id
													) > 0 AND title != '' ");
			?>
			<div class="document_tags">
				<? foreach($tags as $tag): ?>
				<div class="tag" data-pagetype="documents"><?=$tag->title?></div>
				<? endforeach; ?>
			</div>
		</div>
		<div class="navigation">
			<div class="sort">
				<a href="#" class="sortdocuments" data-sorttype="title">name a-z</a>
				<a href="#" class="sortdocuments" data-sorttype="added">created</a>
				<a href="#" class="sortdocuments" data-sorttype="modified">edited</a>
			</div>
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
					<?=$document->title?> <span class="date"><?=date("F j Y", strtotime($document->changed));?></span>
				</div>
				<? endforeach; ?>

			</div>
		</div>
		<div class="preview">
			<div class="document_preview_container" data-id="0">
				<div class="preview_buttons">
					<a href="document_edit?document=" title="Edit Document"><img src="media/icons/edit_icon_black.svg" /></a>
					<a href="document_edit?duplicate=" title="Duplicate Document"><img src="media/icons/duplicate_icon_black.svg" /></a>
					<a href="/api/download_document.php?document=" title="Download Document"><img src="media/icons/download_icon_black.svg" /></a>
				</div>
				<div class="document_preview">
					<i style="margin: 32px 0 5px 0; display: inline-block;" >click a document to preview</i>
				</div>
			</div>
		</div>
		<script src="scripts/documents.js"></script>
	</div>
</main>
