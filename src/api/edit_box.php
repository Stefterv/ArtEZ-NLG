<?
include "../dbObject.php";
if(!empty($_POST)):
	$class = $_POST['class'];
	$object = new $class;
	$object->display_edit();
else:
	echo "No Class selected";
endif;
?>