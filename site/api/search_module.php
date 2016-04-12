<?
include "../functions.php";
$query = $_GET['query'];
$result = Module::find("SELECT * FROM modules WHERE master=1 AND (title LIKE '%{$query}%' OR content LIKE '%{$query}%')");
foreach($result as $module){
	$module->search_result();
}
if(!$result){
	echo "<b>NO RESULTS!</b>";
}
?>