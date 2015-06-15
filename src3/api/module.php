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
		$module->display_preview();
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