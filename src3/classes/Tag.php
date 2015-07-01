<?
class Tag extends databaseObject{
	protected static $dbName = "tags";
	public $title;
	static function findByName($name){
		return Tag::findSingleByAttr(array("title="=>$name));
	}
	static function saveTags($object,$tags){
		$object_type = get_class($object);
		$tags = explode(",",$tags);
		$currentTags = Tag_Link::getTags($object_type,$object->id);
		foreach($tags as $tagName){
			$tagName = str_replace(' ', '_', $tagName);
			// check if exists
			$tag = Tag::findByName($tagName);
			// if not make link
			if(!$tag){
				$tag = new Tag();
				$tag->title = $tagName;
				$tag->submit();
			}
			$properties = array("link_type="=>$object_type,"item_id="=>$object->id,"tag_id="=>$tag->id);
			$tag_link = Tag_Link::findSingleByAttr($properties);
			if(!$tag_link){
				$tag_link = new Tag_Link();
				$tag_link->link_type = $object_type;
				$tag_link->item_id = $object->id;
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
				
				$tagLink = Tag_Link::findSingleByAttr(array("link_type="=>$object_type,"tag_id="=>$currentTag->id,"item_id="=>$document->id));
				if($tagLink){
					$tagLink->remove();
				}
			}
		}
	}
}
?>