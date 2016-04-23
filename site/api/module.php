<?
include "../functions.php";
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$module = Module::findByID($_POST['module_id']);
		if($_POST['module_id'] == 0){
			$module = new Module();
			$module->created = date("Y-m-d H:i:s", time());
			$module->modified = date("Y-m-d H:i:s", time());
		} else {
			$module->modified = date("Y-m-d H:i:s", time());
		}
		$module->parser($_POST);
		$module->submit();
		Tag::saveTags($module,$_POST['tags']);
		$module->modules_preview();
	}

	if ($_POST['submit'] === "delete") {
		$module = Module::findByID($_POST['module_id']);
		if($module){
			$module->deleted = 1;
			$module->submit();
		}
	}
	
endif;
?>
