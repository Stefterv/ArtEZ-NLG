<? if(isset($_GET['id'])): ?>
<?
	include "../functions.php";
	$document = Document::findByID($_GET['id']);
?>
<div class="document_preview" data-id="<?=$document->id?>">
	<h1><?=$document->title?></h1>
	<?
	$nodes = $document->getNodes();
	if($nodes){
		foreach ($nodes as $node) {
			$node->display_preview();
		}
	}
	?>
</div>
<? endif?>