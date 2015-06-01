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
	<div class="container">
		<div class="navigation document_overview">
			<!-- Document form -->
			<form action="api/document.php" method="POST">
				<? if($duplicate): ?>
				<input type="hidden" name="document_id" value="0">
				<? else: ?>
				<input type="hidden" name="document_id" value="<?=$document->id?>">
				<? endif; ?>
				<input type="hidden" name="title" value="<?=$document->title?>" placeholder="Document Title">
				<input type="hidden" name="author" value="<?=$document->author?>"  placeholder="Document Author">
				<input type="hidden" name="based_on" value="<?=$document->based_on?>"  placeholder="Based on Document ID">

				<div class="document_attr" contenteditable data-input="title"></div>
				<div class="document_attr" contenteditable data-input="author"></div>
				
				<h1 class="document_module_title">Modules</h1>
				<div class="document_module_bottons">
					<a id="addmodulemaster" class="insertModule" href="#">insert module</a>
					<a id="addmodule" class="insertModule" href="#">insert text</a>
				</div>
				<div id="nodes">
				<? $nodes = $document->getNodes(); ?>
				<? if($nodes): ?>
					<? foreach($nodes as $key => $node): ?>
						<? if($duplicate): ?>
							<? $node->id = 0; ?>
						<? endif; ?>
						<? $node->display_edit($key); ?>
					<? endforeach; ?>
				<? endif; ?>
				</div>
				<button type="submit" name="submit" value="edit">Submit</button><br>
				<button type="delete" name="submit" value="delete" style="color: red">Delete Document</button><br>
			</form>
			<script type="text/javascript" src="scripts/document_edit.js"></script>
		</div>
		<div class="preview">
			<div class="document_preview">&nbsp;</div>
			<div class="button deleteButton">Delete</div>
		</div>
	</div>
</main>
