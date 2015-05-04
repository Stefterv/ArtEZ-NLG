<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $type;
	public $content;
	public $title;
	function getTags(){
		return Tag_Link::getTags(1,$this->id);
	}
}
?>