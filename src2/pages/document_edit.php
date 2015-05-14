<?
	$document = false;
	$duplicate = false;
	if(isset($_GET['document'])){
		$document = Document::findByID($_GET['document']);
	} 
	if(isset($_GET['duplicate'])){
		$document = Document::findByID($_GET['duplicate']);
		$duplicate = true;
	} 
	if(!$document){
		$document = new Document();
	}
?>
<main>
	<div class="interface">
		<form action="api/document.php" method="POST">
			<? if($duplicate): ?>
			<input type="hidden" name="document_id" value="0">
			<? else: ?>
			<input type="hidden" name="document_id" value="<?=$document->id?>">
			<? endif; ?>
			<input type="text" name="title" value="<?=$document->title?>" placeholder="Document Title">
			<input type="text" name="author" value="<?=$document->author?>"  placeholder="Document Author">
			<input type="text" name="based_on" value="<?=$document->based_on?>"  placeholder="Based on Document ID">
			<? $nodes = $document->getNodes(); ?>
			<? if($nodes): ?>
				<? foreach($nodes as $key => $node): ?>
					<? if($duplicate): ?>
						<? $node->id = 0; ?>
					<? endif; ?>
					<? $node->display_edit($key); ?>
				<? endforeach; ?>
			<? endif; ?>
			<button type="submit" name="submit" value="edit">Submit</button>
			<button type="delete" name="submit" value="delete">Delete Document</button>
		</form>
	</div>
	<div class="preview">
		<? $nodes = $document->getNodes(); ?>
		<? if($nodes): ?>
			<? foreach($nodes as $node): ?>
				<? $node->display_preview(); ?>
			<? endforeach; ?>
		<? endif; ?>
	</div>
</main>