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
				$object->submit();

				$link = new Document_Link();
				$link->document_id = $document->id;
				$link->item_id = $object->id;
				$link->type = $class;
				$link->rank = $key;
				$link->submit();
			}
		}

		$tags = explode(",",$_POST['tags']);
		$currentTags = Tag_Link::getTags("Document",$document->id);
		foreach($tags as $tagName){
			// check if exists
			$tag = Tag::findByName($tagName);
			// if not make link
			if(!$tag){
				$tag = new Tag();
				$tag->title = $tagName;
				$tag->submit();
			}
			$properties = array("link_type="=>"Document","item_id="=>$document->id,"tag_id="=>$tag->id);
			$tag_link = Tag_Link::findSingleByAttr($properties);
			if(!$tag_link){
				$tag_link = new Tag_Link();
				$tag_link->link_type = "Document";
				$tag_link->item_id = $document->id;
				$tag_link->tag_id = $tag->id;
				$tag_link->submit();
			}
			if($currentTags){
				foreach($currentTags as $key => $currentTag){
					if($currentTag->id == $tag->id){
						unset($currentTags[$key]);
						break;
					}
				}
			}
		}
		if($currentTags){	
			foreach($currentTags as $key => $currentTag){
				// $currentTag->remove();
				$tagLink = Tag_Link::findSingleByAttr(array("link_type="=>"Document","tag_id="=>$currentTag->id,"item_id="=>$document->id));
				$tagLink->remove();
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
