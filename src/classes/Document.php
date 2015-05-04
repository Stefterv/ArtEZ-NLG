<?
class Document extends databaseObject{
	protected static $dbName = "documents";
	public $title;
	function getTags(){
		return Tag_Link::getTags(0,$this->id);
	}
}
?>