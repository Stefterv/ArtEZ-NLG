<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $content;
	public $title;
	public $deleted;
	public $master;
	function getTags(){
		return Tag_Link::getTags(1,$this->id);
	}
	function display_edit($key){
		?>
		<div class="module">
			<h4>Module</h4>
			<input type="hidden" name="nodes[<?=$key?>][class]" value="Module">
			<input type="hidden" name="nodes[<?=$key?>][id]" value="<?=$this->id?>">
			<input type="text" name="nodes[<?=$key?>][title]" value="<?=$this->title?>" placeholder="Title">
			<input type="text" name="nodes[<?=$key?>][content]" value="<?=$this->content?>" placeholder="Content">
			<div class="remove"><a href="#">remove</a></div>
		</div>
		<?
	}
	function display_preview(){
		?>
		<h2><?=$this->title?></h2>
		<p><?=$this->content?></p>
		<?
	}
}
?>