<?
include "../functions.php";
if(isset($_POST['submit'])):
	if($_POST['submit'] === "edit"){
		$document = Document::findByID($_POST['document_id']);

		if($_POST['document_id'] == 0){
			$document = new Document();
			$document->created = date("Y-m-d H:i:s", time());
			$document->modified = date("Y-m-d H:i:s", time());
		} else {
			$document->modified = date("Y-m-d H:i:s", time());
		}

		$document->parser($_POST);
		if ($document->based_on == '') {
			$document->based_on = 0;
		}

		$document->submit();
		if(isset($_POST['nodes'])){
			$nodes = $_POST['nodes'];
			$links = $document->getLinks();
			foreach($links as $link){
				$link->remove();
			}
			foreach($nodes as $key=> $node){
				$class = $node['class'];
				$object = $class::findByID($node['id']);
				if($node['id'] == 0){
					$object = new $class();
				}
				$object->parser($node);
				$object->title = strtoupper($object->title);
				$object->submit();

				$link = new Document_Link();
				$link->document_id = $document->id;
				$link->item_id = $object->id;
				$link->type = $class;
				$link->rank = $key;
				$link->submit();
			}
		}
		Tag::saveTags($document,$_POST['tags']);
		header("Location: /document_edit?document={$document->id}");
	}
	if($_POST['submit'] == "delete"){
		$document = Document::findByID($_POST['document_id']);
		if($document){
			$document->deleted = 1;
			$document->submit();
		}
		header("Location: /documents");
	}
endif;
function removeFromArray(array $array, $value){
    if(($key = array_search($value, $array, true)) !== FALSE) {
        unset($array[$key]);
    }
    return $array;
}
function getTagByID($array,$id){
	foreach($array as $object){
		if($object->id == $id){
			return $object;
		}
	}
	return false;
}
?>
