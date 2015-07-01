<?
include "../functions.php";
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$module = Module::findByID($_POST['module_id']);
		if($_POST['module_id'] == 0){
			$module = new Module();
		}
		$module->parser($_POST);
		if($module->created = ""){
			$module->created = date("m-d-Y");
		}
		$module->submit(); 
		Tag::saveTags($module,$_POST['tags']);
		$module->modules_preview();
	}
	if($_POST['submit'] === "delete"){
		$module = Module::findByID($_POST['module_id']);
		if($module){
			$module->deleted = 1;
			$module->submit(); 
		}
	}
endif;
?>