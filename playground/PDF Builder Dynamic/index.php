<?
include "dbObject.php";
$documents = Document::find("SELECT * FROM documents WHERE deleted=0");
?>
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