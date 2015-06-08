<? $page = "modules" ?>
<? $modules = Module::findByAttr(array("master="=>"1")); ?>
<main>
	<div class="container">
		<div class="navigation module_overview">
			<div class="search" contenteditable>Search</div>
			<div class="sort">sort by <a href="#">name</a>/<a href="#">date added</a>/<a href="#">date modified</a></div>
			<div class="document_container">
				<? foreach($modules as $module): ?>
				<div class="module_item" data-id=<?=$module->id;?> data-title="<?=$module->title;?>">
					<?=$module->title;?>
				<? $date = date_create_from_format("Y-m-d H:i:s",$module->changed); ?>
				
				<div class="last_edit"><?=date_format($date, "H:i - d M");?></div>
				</div>
			<? endforeach; ?>
			<a href="#" id="modulescreate">Create new from selection</a>
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