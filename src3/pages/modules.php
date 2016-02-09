<? 
$page = "modules" 
?>
<main>
	<div class="container">
		<div class="properties">
			<h2>FILTER BY TITLE</h2>

			<div>
				<input type="text" class="search" placeholder="Search" />
			</div>

			<h2>FILTER BY TAG</h2>
			<?
				$tags = Tag::find("SELECT * FROM tags
													WHERE (
													 SELECT COUNT(*)
													        FROM tag_links WHERE tag_links.link_type = 'Module' AND tag_links.tag_id = tags.id
													) > 0 AND title != '' ");
			?>
			<? foreach($tags as $tag): ?>
			<div class="tag" data-pagetype="modules"><?=$tag->title?></div>
			<? endforeach; ?>
		</div>
		<div class="navigation module_overview">
			<div class="sort"><a href="#" class="sortdocuments" data-sorttype="title">name a-z</a><a href="#" class="sortdocuments" data-sorttype="added">created</a><a href="#" class="sortdocuments" data-sorttype="modified">edited</a></div>

			<div class="document_container">
				<? include 'modules_list.php'; ?>			
			</div>
		</div>
		<div class="preview">
			<div class="module_preview">
				<div class="default_preview_text">Click on a module on the left hand side to select it for editing.</div>
			</div>
		</div>
		<script src="scripts/modules.js"></script>
	</div>
</main>
