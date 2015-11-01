<? $page = "modules" ?>
<? $modules = Module::findByAttr(array("master="=>"1")); ?>
<main>
	<div class="container">
		<div class="properties">
			<h2>FILTER BY TITLE</h2>

			<div data-placeholder="Search" class="search" contenteditable></div>

			<h2>FILTER BY TAG</h2>
			<?
				$tags = Tag::find("SELECT * FROM tags
													WHERE (
													 SELECT COUNT(*)
													        FROM tag_links WHERE tag_links.link_type = 'Module' AND tag_links.tag_id = tags.id
													) > 0 AND title != '' ");
			?>
			<? foreach($tags as $tag): ?>
			<div class="tag" data-pagetype="modules"><?=htmlspecialchars($tag->title)?></div>
			<? endforeach; ?>
		</div>
		<div class="navigation module_overview">
			<div class="sort"><a href="#" class="sortdocuments" data-sorttype="title">name a-z</a><a href="#" class="sortdocuments" data-sorttype="added">created</a><a href="#" class="sortdocuments" data-sorttype="modified">edited</a></div>

			<div class="document_container">
				<? foreach($modules as $module): ?>
				<?
					$tags = Tag_Link::getTags("Module",$module->id);
					$tagString = "";
					if($tags){
						foreach($tags as $tag){
							$tagString .= "tag_".htmlspecialchars($tag->title)." ";
						}
					}
				?>
				<div class="module_item <?=$tagString?>" data-id=<?=$module->id;?> data-title="<?=htmlspecialchars($module->title);?>">
					<div class="module_selection">&nbsp;</div>
					<div class="module_title"><?=htmlspecialchars($module->title);?></div>
					<div class="module_date">
						<? $date = date_create_from_format("Y-m-d H:i:s", $module->created==""?"2015-06-02 14:54:04":$module->created); ?>
						<div class="changed"><?=date_format($date, "m-d-Y");?></div>
						<? $date = date_create_from_format("Y-m-d H:i:s", $module->changed==""?"2015-06-02 14:54:04":$module->changed); ?>
						<div class="changed"><?=date_format($date, "m-d-Y");?></div>
					</div>
				</div>
			<? endforeach; ?>

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
