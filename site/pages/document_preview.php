<div class="preview">
	<div class="document_preview">
		<h1>
			<?=$document->title?>
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