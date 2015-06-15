<? $page = "modules" ?>
<? $modules = Module::findByAttr(array("master="=>"1")); ?>
<main>
	<div class="container">
		<div class="properties">
			<div class="search" contenteditable>Search</div>
			<a href="api/get_form_module.php" id="modulescreate">Create new from selection</a>
		</div>
		<div class="navigation module_overview">
			<div class="sort"><a href="#">name a-z</a><a href="#">created</a><a href="#" class="selected">editted</a></div>
			<div class="document_container">
				<? foreach($modules as $module): ?>
				<div class="module_item" data-id=<?=$module->id;?> data-title="<?=$module->title;?>">
					<div class="module_title"><?=$module->title;?></div>
					<? $date = date_create_from_format("Y-m-d H:i:s",$module->created); ?>
					<div class="module_date">
						<div class="changed"><?=date_format($date, "m-d-Y");?></div>
						<? $date = date_create_from_format("Y-m-d H:i:s",$module->changed); ?>
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