<?
include "../dbObject.php";
if(!empty($_POST['class'])):
	$class = $_POST['class'];
	$objectID = $_POST['objectID'];
	$object = $class::findByID($objectID);
	if(!$object){
		$object = new $class;
	}
	$object->parser($_POST);
	$object->submit();
endif;
?>