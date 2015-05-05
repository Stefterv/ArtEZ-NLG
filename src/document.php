<?
if(empty($_GET['id'])){
	header("Location: index.php");
}
include "dbObject.php";
include "includes/header.php"; 
$document = Document::findByID($_GET['id']);
?>
<main class="document">
	<div class="overview">
		<div class="edit_box" data-objectid="<?=$document->id?>" data-class="Document">
			<h1 contenteditable data-variable="title"><?=$document->title?></h1>
		</div>
		<div class="edit_box" data-objectid="<?=$document->id?>" data-class="Document">
			<h3 contenteditable data-variable="author"><?=$document->author?></h3>
		</div>
		<?
			$nodes = $document->getNodes();
			if($nodes){	
				foreach ($nodes as $node) {
					$node->display_edit();
				}
			}
		?>
		<a class="add_module" href="#">Add Module</a>
		<script src="scripts/document_edit.js"></script>
	</div>
	<div class="preview">
		<div class="document_preview">
			<h1>
				Document Title
			</h1>
			<?
			$nodes = $document->getNodes();
			if($nodes){
				foreach ($nodes as $node) {
					$node->display_preview();
				}
			}
			?>
		</div>
	</div>
</main>
<?
include "includes/footer.php";
?>