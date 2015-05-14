<?
include "../functions.php";
$modules = Module::findAll();
foreach ($modules as $module) {
	$arrid[$module->id] = $module->content;
}
echo json_encode($arrid);
?>