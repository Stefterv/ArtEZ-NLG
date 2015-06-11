<?
class Tag_Link extends databaseObject{
	protected static $dbName = "tag_links";
	public $link_type;
	public $item_id;
	public $tag_id;
	static function getTags($type,$id){
		$tag_links = Tag_Link::findByAttr(array("link_type="=>$type, "item_id="=>$id));
		if($tag_links){
			$tags = array();
			foreach($tag_links as $tag_link){
				$tags[] = Tag::findByID($tag_link->tag_id);
			}
			return $tags;
		}else{
			return false;
		}
	}
}
?>