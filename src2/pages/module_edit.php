<?
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$module = Module::findByID($_POST['module_id']);
		$module->parser($_POST);
		$module->submit(); 
	}
endif;
?>
<? $module = Module::findByID(1); ?>
<main>
	<div class="interface">
		<form action="" method="POST">
			<input type="hidden" name="module_id" value="<?=$module->id?>">
			<input type="text" name="title" value="<?=$module->title?>" placeholder="Title">
			<input type="text" name="content" value="<?=$module->content?>" placeholder="Content">
			<button type="submit" name="submit" value="edit">Submit</button>
		</form>
	</div>
	<div class="preview">
			<? $module->display_preview(); ?>
	</div>
</main>