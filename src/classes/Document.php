<?
class Document extends databaseObject{
	protected static $dbName = "documents";
	public $title;
	function getTags(){
		return Tag_Link::getTags(0,$this->id);
	}
	function getNodes(){
		$links = Document_Link::find("SELECT * FROM document_links WHERE document_id={$this->id} ORDER BY rank");
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