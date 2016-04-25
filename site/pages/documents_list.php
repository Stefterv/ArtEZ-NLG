<? 
require_once(dirname(dirname(__FILE__)) . '/functions.php');
$documents = Document::find("SELECT * FROM documents WHERE deleted=0");

foreach($documents as $document):
	$tags = Tag_Link::getTags("Document",$document->id);
	$tagString = "";
	if($tags){
		foreach($tags as $tag){
			$tagString .= "tag_".$tag->title." ";
		}
	}
	?>
	<div class="document <?=$tagString?>" data-id="<?=$document->id?>" data-indent="<?=$document->getIndent()?>" data-title="<?=$document->title?>" data-added="<?=$document->id?>" data-created="<?=strtotime($document->created);?>" data-modified="<?=strtotime($document->modified);?>">
		<div class="document_title"><?=$document->title?></div>
		<div class="document_dates">
			<div class="document_date created"><?=date(DISPLAY_DATE_FORMAT, strtotime($document->created));?></div>
			<div class="document_date modified"><?=date(DISPLAY_DATE_FORMAT, strtotime($document->modified));?></div>
		</div>
	</div>

	<? 
endforeach; 
?>
