<?
include"functions.php";
$page = "documents";
if(isset($_GET['path'])){
	if(file_exists("pages/".$_GET['path'].".php")){
		$page = $_GET['path'];
	}else{
		$page = "404";
	}
}
get_header();
include "pages/".$page.".php";
get_footer();
?>