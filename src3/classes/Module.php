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
				<input type="hidden" name="nodes[<?=$key?>][class]" value="Module">
				<input type="hidden" name="nodes[<?=$key?>][id]" value="<?=$this->id?>">
				<input type="hidden" name="nodes[<?=$key?>][title]" data-inputname="title" value="<?=$this->title?>" placeholder="Title">
				<input type="hidden" name="nodes[<?=$key?>][content]" data-inputname="content" value="<?=htmlentities($this->content)?>" placeholder="Content">
				<div class="module_title" contenteditable data-inputvalue="title" data-placeholder="Title"><?=$this->title?></div>
				
				<div class="module_text" contenteditable data-inputvalue="content" data-placeholder="Text"><?=$this->content?></div>
				<div class="module_buttons">
					<a href="#" class="module_move">reorder</a>
					<a href="#" class="module_edit">edit</a>
					<a href="#" class="module_remove">x</a>
				</div>
		</div>
		<?
	}
	function display_preview(){
		?>
		<div class="preview_subtitle"><?=$this->title?></div>
		<p><?=$this->content?></p>
		<?
	}
	function search_result(){
		?>
		<div class="result" data-id="<?=$this->id?>">
			<?=$this->title?>
		</div>
		<?
	}
}
?>