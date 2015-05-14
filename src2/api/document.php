<?
include "../functions.php";
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$document = Document::findByID($_POST['document_id']);
		if($_POST['document_id'] == 0){
			$document = new Document();
		}
		$document->parser($_POST);
		$document->submit(); 
		if(isset($_POST['nodes'])){
			$nodes = $_POST['nodes'];
			foreach($nodes as $node){
				$class = $node['class'];
				$object = $class::findByID($node['id']);
				if($node['id'] == 0){
					$object = new $class();
				}
				$object->parser($node);
				$object->submit();
			}
		}
		header("Location: /document_edit?document={$document->id}");
	}
	if($_POST['submit'] == "delete"){
		$document = Document::findByID($_POST['document_id']);
		if($document){
			$document->deleted = 1;
			$document->submit();
		}
		header("Location: /document_edit");
	}
endif;
?>