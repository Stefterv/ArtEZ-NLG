<!DOCTYPE html>
<html lang="en">
<head>
	<title>National Lawyers Guild Toolkit</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<meta charset="UTF-8" />
</head>
<body>
<header>
		<a id="modulesbutton"<?if($page=="modules"):?>class="current"<?endif;?>href="modules.php">MODULES</a>
		<a id="documentbutton"<?if($page=="documents"):?>class="current"<?endif;?> href="documents.php">DOCUMENTS</a>

		<a id="createnew"><sup>+ </sup>create new <?if($page=="modules"):?>module<?endif;?><?if($page=="documents"):?>document<?endif;?></a>
</header>