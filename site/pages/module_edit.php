<?
$module = false;
if(isset($_GET['module'])){
	$module = Module::findByID($_GET['module']);
}
if(!$module){
	$module = new Module();
	$module->master = 1;
}
?>
<main>
	<div class="interface">
		<form  method="POST" id="save_master_module">
			<input type="hidden" name="module_id" value="<?=$module->id?>">
			<input type="hidden" name="master" value="<?=$module->master?>">
			<input type="text" name="title" value="<?=$module->title?>" placeholder="Title">
			<textarea type="text" name="content" placeholder="Content"><?=$module->content?></textarea><br>
			<button type="submit" name="submit" value="edit">Submit</button><br>
			<button type="submit" name="submit" style="color: red" value="delete">Delete Module</button>
		</form>
	</div>
	<div class="preview">
			<? $module->display_preview(); ?>
	</div>
</main>
