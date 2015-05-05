<?
var_dump($_POST);
include "../dbObject.php";
$class = $_POST['class'];
$objectID = $_POST['objectID'];
$object = $class::findByID($objectID);
$object->parser($_POST);
$object->submit();
echo "object submitted";
?>