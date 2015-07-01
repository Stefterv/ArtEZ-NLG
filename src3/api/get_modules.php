<?
include "../functions.php";
$id = $_POST['id'];
$module = Module::findByID($id);
$module->modules_preview();
?>