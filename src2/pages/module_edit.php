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
		<form action="api/module.php" method="POST">
			<input type="hidden" name="module_id" value="<?=$module->id?>">
			<input type="hidden" name="master" value="<?=$module->master?>">
			<input type="text" name="title" value="<?=$module->title?>" placeholder="Title">
			<input type="text" name="content" value="<?=$module->content?>" placeholder="Content">
			<button type="submit" name="submit" value="edit">Submit</button>
		</form>
	</div>
	<div class="preview">
			<? $module->display_preview(); ?>
	</div>
</main>