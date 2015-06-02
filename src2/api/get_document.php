<?
	$id = 1;
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		include_once("../functions.php");
	} 
	if(isset($document_id)){
		$id = $document_id;
	}
	
	$document = Document::findByID($id);
	$document->preview();
?>