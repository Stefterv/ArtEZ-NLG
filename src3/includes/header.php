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
	<nav>
		<div id="modulesbutton" class="navlink <?currentPage($modulespages)?>" >
			<a href="modules" class="navlink_button">
				MODULES
			</a>
			<a href="" class="createnew">create new module</a>
		</div>
		<div id="documentsbutton" class="navlink <?currentPage($documentspages)?>">
			<a href="/" class="navlink_button">
				DOCUMENTS
			</a>
			<a href="document_edit" class="createnew">create new document</a>
		</div>
	</nav>
</header>

<?
function currentPage($array){
	global $page;
	if(in_array($page, $array)){
		echo "current";
	}
}
?>