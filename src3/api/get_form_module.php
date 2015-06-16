<?
include "../functions.php";
if(($_POST['id']) === "new"){
	$module = new Module();
}
else{
	$module = Module::findByID($_POST['id']);
	
}
$module->edit_preview();

?>