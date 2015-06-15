<?
include "../functions.php";
$module = false; 
if(isset($_GET['module_id'])){
	$module = Module::findByID($_GET['module_id']);
}
if(!$module){
	$module = new Module();
}
$module->id = 0;
$module->title = "Text";
$module->display_edit(0);
?>