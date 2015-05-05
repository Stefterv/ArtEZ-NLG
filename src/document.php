<?
include "dbObject.php";
include "includes/header.php"; 

$document = Document::findByID(1);
?>
<main class="document">
	<div class="overview">
		<div class="edit_box" data-parameter="Title">
			<h1 contenteditable>Title</h1>
		</div>
		<div class="edit_box" data-parameter="Autor">
			<h3 contenteditable>Willem Kempers</h3>
		</div>
		<?
			$nodes = $document->getNodes();
			foreach ($nodes as $node) {
				$node->display_edit();
			}
		?>
	</div>
	<div class="preview">
		<div class="document_preview">
			<h1>
				Document Title
			</h1>
		</div>
	</div>
</main>
<?
include "includes/footer.php";
?>