<?
include "dbObject.php";
echo "<pre>";
$documents = Document::findAll();
foreach($documents as $document){
	var_dump($document);
	var_dump($document->getTags());
	var_dump($document->getNodes());
}
$modules = Module::findAll();
foreach($modules as $module){
	var_dump($module);
	var_dump($module->getTags());
}
?>