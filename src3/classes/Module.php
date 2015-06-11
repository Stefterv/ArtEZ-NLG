<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $content;
	public $title;
	public $deleted;
	public $master;
	public $changed;
	function getTags(){
		return Tag_Link::getTags(1,$this->id);
	}
	function display_edit($key){
		?>
		<div class="module">
			<div class="node_title">Module</div>
			<input type="hidden" name="nodes[<?=$key?>][class]" value="Module">
			<input type="hidden" name="nodes[<?=$key?>][id]" value="<?=$this->id?>">
			<input type="hidden" name="nodes[<?=$key?>][title]" value="<?=$this->title?>" placeholder="Title">
			<a href="#" class="modulebutton remove">x</a>
			<div class="module_content">
			<input type="text" name="nodes[<?=$key?>][content]" data-inputname="content" value="<?=htmlentities($this->content)?>" placeholder="Content">
				
			</div>
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