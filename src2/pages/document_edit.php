<?
	$document = false;
	if(isset($_GET['document'])){
		$document = Document::findByID($_GET['document']);
	} 
	if(!$document){
		$document = new Document();
	}
?>
<main>
	<div class="interface">
		<nav>
			<a href="index.php">Back to Documents</a>
		</nav>
		<form action="api/document.php" method="POST">
			<input type="hidden" name="document_id" value="<?=$document->id?>">
			<input type="text" name="title" value="<?=$document->title?>" placeholder="Document Title">
			<input type="text" name="author" value="<?=$document->author?>"  placeholder="Document Author">
			<input type="text" name="based_on" value="<?=$document->based_on?>"  placeholder="Based on Document ID">
			<div id="sortable">
				<? $nodes = $document->getNodes(); ?>
				<? if($nodes): ?>
					<? foreach($nodes as $key => $node): ?>
						<? $node->display_edit($key); ?>
					<? endforeach; ?>
				<? endif; ?>
			</div>
			<button type="submit" name="submit" value="edit">Submit</button>
			<button type="delete" name="submit" value="delete">Delete Document</button>
		</form>
		<script type="text/javascript">
		  $(function() {
		    $( "#sortable" ).sortable({
					stop: function(event, ui) {
						$("#sortable .module").each(function(i) {
							var index = $(this).index();
							$(this).find("[name]").each(function(i, el) {
								var text = $(this).attr("name");
								var attrName = text.substring(text.indexOf("]")+1,text.length);
								var newName = "nodes["+index+"]"+attrName;
								$(this).attr("name",newName);
							});
						});
					}
				});
		    $( "#sortable" ).disableSelection();
		  });
		</script>
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