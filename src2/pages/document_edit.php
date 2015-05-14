<?
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$document = Document::findByID($_POST['document_id']);
		$document->parser($_POST);
		$document->submit(); 
		$nodes = $_POST['nodes'];
		foreach($nodes as $node){
			$class = $node['class'];
			$object = $class::findByID($node['id']);
			$object->parser($node);
			$object->submit();
		}
	}
endif;
?>
<? $document = Document::findByID(1); ?>
<main>
	<div class="interface">
		<? dump($_POST); ?>
		<form action="" method="POST">
			<input type="hidden" name="document_id" value="<?=$document->id?>">
			<input type="text" name="title" value="<?=$document->title?>" placeholder="Document Title">
			<input type="text" name="author" value="<?=$document->author?>"  placeholder="Document Author">
			<input type="text" name="based_on" value="<?=$document->based_on?>"  placeholder="Based on Document ID">
			<? $nodes = $document->getNodes(); ?>
			<? foreach($nodes as $key => $node): ?>
				<? $node->display_edit($key); ?>
			<? endforeach; ?>
			<button type="submit" name="submit" value="edit">Submit</button>
		</form>
	</div>
	<div class="preview">
		<? $nodes = $document->getNodes(); ?>
			<? foreach($nodes as $key => $node): ?>
				<? $node->display_preview(); ?>
			<? endforeach; ?>
	</div>
</main>