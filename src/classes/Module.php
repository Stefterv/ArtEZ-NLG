<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $type;
	public $content;
	public $title;
	function getTags(){
		return Tag_Link::getTags(1,$this->id);
	}
	function display_edit(){
		?>
		<div class="edit_box" data-parameter="Text Module">
			<p contenteditable><?=$this->content?></p>
		</div>
		<?
	}
}
?>