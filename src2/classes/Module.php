<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $content;
	public $title;
	public $deleted;
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