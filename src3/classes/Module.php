<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $content;
	public $title;
	public $deleted;
	public $master;
	public $changed;
	public $created;
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
	function edit_preview(){
		?><form action="api/module.php" method="POST">
			<input type="hidden" name="module_id" value="<?=$this->id?>">
			<input type="hidden" name="title" value="<?=$this->title?>">
			<input type="hidden" name="content" value="<?=$this->content?>">
			<div class="title_edit" contenteditable data-input="title"><?=$this->title?></div>
			<div class="content_edit" contenteditable data-input="content"><?=$this->content?></div>
			<button type="submit" id="submit" name="submit" value="edit" style="display:none">Submit</button>
			<div class="button" data-trigger="submit">Save</div><div data-trigger="delete" class="button delete">Delete</div>
			<button type="delete" id="delete" name="submit" value="delete" style="display: none">Delete Document</button>
		
		</form>
		<script>
			$("[data-trigger]").on('click', function(event) {
				event.preventDefault();
				var el = $(this).data("trigger");
				$("#"+el).trigger('click');
			});
		</script>
	function search_result(){
		?>
		<div class="result" data-id="<?=$this->id?>">
			<?=$this->title?>
		</div>
		<?
	}
}
?>