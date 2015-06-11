<?
include "../functions.php";
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$module = Module::findByID($_POST['module_id']);
		if($_POST['module_id'] == 0){
			$module = new Module();
		}
		$module->parser($_POST);
		$module->submit(); 
		header("Location: /module_edit?module={$module->id}");
	}
	if($_POST['submit'] === "delete"){
		$module = Module::findByID($_POST['module_id']);
		if($module){
			$module->deleted = 1;
			$module->submit(); 
			header("Location: /module_edit");
		}
	}
endif;
?>