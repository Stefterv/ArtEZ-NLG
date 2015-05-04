<?
class Document extends databaseObject{
	protected static $dbName = "documents";
	public $title;
	function getTags(){
		return Tag_Link::getTags(0,$this->id);
	}
	function getNodes(){
		$links = Document_Link::findByAttr(array("document_id="=>$this->id));
		if($links){
			$items = array();
			foreach($links as $link){
				$class = $link->type;
				$item = $class::findByID($link->item_id);
				$items[] = $item;
			}
			return $items;
		}else{
			return false;
		}
	}
}
?>