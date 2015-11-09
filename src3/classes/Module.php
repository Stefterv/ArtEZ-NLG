<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $content;
	public $title;
	public $deleted;
	public $master;
	public $changed;
	public $created;
	function __construct(){
		$this->created = date("Y-m-d H:i:s");
		error_log($this->created);
	}
	function getTags(){
		return Tag_Link::getTags(1,$this->id);
	}
	function display_edit($key){
		?>
		<div class="module">
				<input type="hidden" name="nodes[<?=$key?>][class]" value="Module">
				<input type="hidden" name="nodes[<?=$key?>][id]" value="<?=$this->id?>">
				<input type="hidden" name="nodes[<?=$key?>][title]" data-inputname="title" value="<?=$this->title?>" placeholder="Title">
				<input type="hidden" name="nodes[<?=$key?>][content]" data-inputname="content" value="<?=htmlspecialchars($this->content)?>" placeholder="Content">
				<div class="module_title" contenteditable data-inputvalue="title" data-placeholder="Title"><?=htmlspecialchars($this->title)?></div>

				<div class="module_text" contenteditable data-inputvalue="content" data-placeholder="Text"><?=htmlspecialchars($this->content)?></div>
				<div class="module_buttons">
					<!-- <a href="#" class="module_move">reorder</a> -->
					<a href="#" title="Re-order module" class="module_move"><img src="media/icons/rearrange.svg" alt=""></a>
					<a href="#" title="Edit module" class="module_edit"><img src="media/icons/edit_icon.svg" alt=""></a>
					<a href="#" title="Delete module" class="module_remove"><img src="media/icons/bin.svg" alt=""></a>
				</div>
		</div>
		<?
	}
	function display_preview(){
		?>
		<div class="preview_subtitle"><?=htmlspecialchars($this->title)?></div>
		<p><?=htmlspecialchars($this->content)?></p>
		<?
	}
	function modules_preview(){

		?><div class="preview_buttons show module_edit_button" class="button" data-id='<?=$this->id?>'><img class="icon" src="media/icons/edit_icon_black.svg" alt=""></div><?
		$this->display_preview();
	}
	function display_document(){
		?>
		<? if($this->title != ""): ?>
			<h1><?=htmlspecialchars($this->title)?></h1>
		<? endif; ?>
		<p><?=htmlspecialchars(nl2br($this->content))?></p>
		<br>
	<?
	}
	function edit_preview(){
	?><form method="POST" id="save_master_module">
			<input type="hidden" name="module_id" value="<?=$this->id?>">
			<input type="hidden" name="title" value="<?=$this->title?>">
			<input type="hidden" name="content" value="<?=$this->content?>">
			<input type="hidden" name="master" value="1">
			<?
					$tags = Tag_Link::getTags("Module",$this->id);
					$tagString = "";
					if($tags){
						foreach($tags as $tag){
							$tagString .= $tag->title.",";
						}
					}
				?>
			<div class="title_edit" contenteditable data-input="title" data-placeholder="This is a placeholder title"><?=htmlspecialchars($this->title)?></div>
			<input type="text" id="module_tags" name="tags" value="<?=$tagString?>">

			<div class="content_edit" contenteditable data-input="content" data-placeholder="This is placeholder content"><?=htmlspecialchars($this->content)?></div>
			<div class="button-container">
			<button type="submit" id="submit" name="submit" value="edit" style="display:none">Submit</button>
			<div class="button" data-trigger="submit">Save</div><div data-trigger="delete" class="button delete">Delete</div>
			<button type="delete" id="delete" name="submit" value="delete" style="display: none">Delete Document</button>
			</div>

		</form>
		<script type="text/javascript" src="scripts/jquery.tagsinput.min.js"></script>
		<script>
		$("#module_tags").tagsInput({
		  	width: "auto",
		  	height: "auto",
		  	'defaultText':'Create Tag'
		  });
			$("[data-trigger]").on('click', function(event) {
				event.preventDefault();
				var el = $(this).data("trigger");
				$("#"+el).trigger('click');
			});
		</script>
		<?
	}
	function search_result(){
		?>
		<div class="result" data-id="<?=$this->id?>">
			<?=htmlspecialchars($this->title)?>
		</div>
		<?
	}
}
?>
