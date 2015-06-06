<?
$documentspages = array("document_edit","documents");
$modulespages = array("module_edit","modules");
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>National Lawyers Guild Toolkit</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<script src="scripts/jquery-2.1.4.min.js"></script>
	<script src="scripts/jquery-ui.min.js"></script>
	<script src="scripts/scripts.js"></script>
</head>
<body>
<header>
	<a href="/" <?currentPage($documentspages)?>>Documents</a>
	<a href="/modules" <?currentPage($modulespages)?>>Modules</a>
</header>

<?
function currentPage($array){
	global $page;
	if(in_array($page, $array)){
		echo "class=\"current\"";
	}
}
?>