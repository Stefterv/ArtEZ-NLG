<? $page = "modules" ?>
<? $modules = Module::findByAttr(array("master="=>"1")); ?>
<main>
	<div class="container">
		<div class="properties">
			<h2>FILTER BY TITLE</h2>
			<div class="search" contenteditable>Search</div>
			<a href="#" id="modulescreate">Create new from selection</a>
			<h2>FILTER BY TAG</h2>
			<?
				$tags = Tag::findAll();
			?>
			<? foreach($tags as $tag): ?>
			<div class="tag" data-pagetype="modules"><?=$tag->title?></div>
			<? endforeach; ?>
		</div>
		<div class="navigation module_overview">
			<div class="sort"><a href="#" class="sortdocuments" data-sorttype="title">name a-z</a><a href="#" class="sortdocuments" data-sorttype="added">created</a><a href="#" class="sortdocuments" data-sorttype="modified">editted</a></div>

			<div class="document_container">
				<? foreach($modules as $module): ?>
				<?
					$tags = Tag_Link::getTags("Module",$module->id);
					$tagString = "";
					if($tags){
						foreach($tags as $tag){
							$tagString .= "tag_".$tag->title." ";
						}
					}
				?>
				<div class="module_item <?=$tagString?>" data-id=<?=$module->id;?> data-title="<?=$module->title;?>" data-added="<?=$module->id?>" data-modified="<?=$module->changed?>">
					<?=$module->title;?>
				<? $date = date_create_from_format("Y-m-d H:i:s",$module->changed); ?>
				
				<div class="last_edit"><?=date_format($date, "H:i - d M");?></div>
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