<?
include "../functions.php";
// $modules = Module::findAll();
// foreach ($modules as $module) {
// 	$arrid[$module->id] = $module->content;
// }
$id = $_POST['id'];
$module = Module::findByID($id);


echo '<div class="module_edit_button button" data-id="'.$id.'">EDIT</div>';
$module->display_preview();
?>