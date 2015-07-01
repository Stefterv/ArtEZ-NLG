<?
include "../functions.php";
$modules = Module::findByAttr(array("master="=>"1"));

foreach ($modules as $module) {
	?><div class="new-module-list-item"><h1><?=htmlentities($module->title);?></h1>
	<p><?=htmlentities($module->content);?></p></div>
	<?
}
