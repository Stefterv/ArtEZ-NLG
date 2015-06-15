<?
include "../functions.php";
// $modules = Module::findAll();
// foreach ($modules as $module) {
// 	$arrid[$module->id] = $module->content;
// }
$module = Module::findByID($_POST[id]);
$module->display_preview();
?>