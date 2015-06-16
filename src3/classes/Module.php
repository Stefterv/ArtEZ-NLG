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
		<div class="module_container">
			<div class="module"><?=$this->title?>
				<a href="#" class="modulebutton remove">x</a>
			</div>
			<div class="edit_module">
				<input type="hidden" name="nodes[<?=$key?>][class]" value="Module">
				<input type="hidden" name="nodes[<?=$key?>][id]" value="<?=$this->id?>">
				<div class="module_content">
				<input type="hidden" name="nodes[<?=$key?>][title]" data-inputname="title" value="<?=$this->title?>" placeholder="Title">
				<input type="hidden" name="nodes[<?=$key?>][content]" data-inputname="content" value="<?=htmlentities($this->content)?>" placeholder="Content">
				<div class="module_title" contenteditable data-inputvalue="title" data-placeholder="Title"><?=$this->title?></div>
				
				<div contenteditable data-inputvalue="content" data-placeholder="Text"><?=$this->content?></div>
				</div>
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
	function display_document(){
		?>
		<h1><?=$this->title?></h1>
		<p><?=nl2br($this->content)?></p>
		<?
	}
}
?>