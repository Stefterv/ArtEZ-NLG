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
if($page == "document_edit"){
	global $page_title;
	if(isset($_GET['document'])){
		$page_title = "Edit Document";
	}else{
		$page_title = "New Document";
	}
}
get_header();
include "pages/".$page.".php";
get_footer();
?>