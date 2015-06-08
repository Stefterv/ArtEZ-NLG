<?
class Tag extends databaseObject{
	protected static $dbName = "tags";
	public $title;
	static function findByName($name){
		return Tag::findSingleByAttr(array("title="=>$name));
	}
}
?>