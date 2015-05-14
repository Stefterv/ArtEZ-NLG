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
		<nav>
			<a href="/">Back to Documents</a>
		</nav>
		<form action="api/document.php" method="POST">
			<? if($duplicate): ?>
			<input type="hidden" name="document_id" value="0">
			<? else: ?>
			<input type="hidden" name="document_id" value="<?=$document->id?>">
			<? endif; ?>
			<input type="text" name="title" value="<?=$document->title?>" placeholder="Document Title">
			<input type="text" name="author" value="<?=$document->author?>"  placeholder="Document Author">
			<input type="text" name="based_on" value="<?=$document->based_on?>"  placeholder="Based on Document ID">
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
			<a id="addmodule" href="#">Add modules</a><br>
			<button type="submit" name="submit" value="edit">Submit</button><br>
			<button type="delete" name="submit" value="delete" style="color: red">Delete Document</button><br>
		</form>
		<script type="text/javascript">
		  $(function() {
		    $( "#nodes" ).sortable({
					stop: function(event, ui) {
						nodeForm();
					}
				});
		    $( "#nodes" ).disableSelection();
		  });
		  function nodeForm(){
		  	$("#nodes .module").each(function(i) {
					var index = $(this).index();
					$(this).find("[name]").each(function(i, el) {
						var text = $(this).attr("name");
						var attrName = text.substring(text.indexOf("]")+1,text.length);
						var newName = "nodes["+index+"]"+attrName;
						$(this).attr("name",newName);
					});
				});
		  }
		  $("#addmodule").on('click', function(event) {
		  	event.preventDefault();
		  	$.ajax({
		  		url: '/api/new_module.php',
		  		type: 'GET'
		  	})
		  	.done(function(data) {
		  		$("#nodes").append(data);
		  		nodeForm();
		  	})
		  });	
		  $(".module .remove a").on('click', function(event) {
		  	event.preventDefault();
		  	if($(this).closest('#nodes').find(".module").length > 1){
			  	$(this).closest('.module').remove();
		  	}
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