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
		<div class="properties document_overview">
			<!-- Document form -->
			<form action="api/document.php" method="POST">
				<? if($duplicate): ?>
				<input type="hidden" name="document_id" value="0">
				<? else: ?>
				<input type="hidden" name="document_id" value="<?=$document->id?>">
				<? endif; ?>
				<input type="hidden" name="title" value="<?=htmlentities($document->title)?>" placeholder="Document Title">
				<!-- <input type="hidden" name="author" value="<?=$document->author?>"  placeholder="Document Author"> -->
				<input type="hidden" name="based_on" value="<?=$document->based_on?>"  placeholder="Based on Document ID">

				<div class="title_edit" contenteditable data-input="title" data-placeholder="Add document title"></div>
				<!-- <div class="document_attr" contenteditable data-input="author"></div> -->

				<?
					$tags = Tag_Link::getTags("Document",$document->id);
					$tagString = "";
					if($tags){
						foreach($tags as $tag){
							$tagString .= htmlentities($tag->title).",";
						}
					}
				?>
				<input id="document_tags" name="tags" type="text" value="<?=$tagString?>">
				<div class="document_module_bottons">
					<div class="document_search_module search">
						<div class="document_search_module_field" contenteditable data-placeholder="search for module"></div>
						<div class="document_search_result"></div>
					</div>
					<a id="addmodule" class="insertModule" href="#">insert text</a>
				</div>
				<script src="scripts/document_module.js"></script>
				<div id="nodes">
				<? $nodes = $document->getNodes(); ?>
				<?
					if(isset($_POST['fromModule'])){
						foreach(explode(",",$_POST['modules']) as $node){
							$nodes[] = Module::findByID($node);
						}
					}
				?>
				<? if($nodes): ?>
					<? foreach($nodes as $key => $node): ?>
						<? if($duplicate): ?>
							<? $node->id = 0; ?>
						<? endif; ?>
						<? $node->display_edit($key); ?>
					<? endforeach; ?>
				<? endif; ?>
				</div>
				<button type="submit" id="submit" name="submit" value="edit" style="display: none">Submit</button>
				<div class="document_buttons">
					<div data-trigger="submit"><?=file_get_contents("media/icons/unsaved_black.svg")?>Save</div><div data-trigger="delete"><?=file_get_contents("media/icons/bin_black.svg")?>Delete</div>
				</div>
				<button type="delete" id="delete" name="submit" value="delete" style="display: none">Delete Document</button>
			</form>
			<script type="text/javascript" src="scripts/jquery.tagsinput.min.js"></script>
			<script type="text/javascript" src="scripts/document_edit.js"></script>
		</div>
		<div class="preview">
			<div class="document_preview_container">
				<div class="preview_buttons show">
					<a onclick="window.print();" id="printDocument"><?=file_get_contents("media/icons/print_icon.svg")?>	</a>
					<a href="/api/download_document.php?document=<?=$document->id?>" alt="Download Document"><?=file_get_contents("media/icons/download_icon.svg")?></a>
				</div>
					<? $document->preview(); ?>
			</div>
			<!-- <div class="button deleteButton">Delete</div> -->
		</div>
	</div>
</main>
