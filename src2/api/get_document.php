<?
	$id = 1;
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		include_once("../functions.php");
	} 
	if(isset($document_id)){
		$id = $document_id;
	}
	
	$document = Document::findByID($id);
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