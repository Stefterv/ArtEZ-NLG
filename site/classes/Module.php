<?
class Module extends databaseObject{
	protected static $dbName = "modules";
	public $content;
	public $title;
	public $deleted;
	public $master;
	public $created;
	public $modified;

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
				<input type="hidden" name="nodes[<?=$key?>][content]" data-inputname="content" value="<?=$this->content?>" placeholder="Content">

				<div>
					<input type="text" class="module_title" data-inputvalue="title" value="<?=$this->title;?>"/>
				</div>

				<div>
					<textarea class="module_text" data-inputvalue="content"><?=$this->content;?></textarea>
				</div>

				<div class="module_buttons">
					<a href="#" title="Re-order module" class="module_move"><div class="module_button_image"></div></a>
					<a href="#" title="Edit module" class="module_edit"><div class="module_button_image"></div></a>
					<a href="#" title="Delete module" class="module_remove"><div class="module_button_image"></div></a>
					<!-- <a href="#" title="Re-order module" class="module_move"><img src="media/icons/rearrange.svg" alt=""></a> -->
					<!-- <a href="#" title="Edit module" class="module_edit"><img src="media/icons/edit_icon.svg" alt=""></a> -->
					<!-- <a href="#" title="Delete module" class="module_remove"><img src="media/icons/bin.svg" alt=""></a> -->
				</div>
		</div>
		<?
	}
	function display_preview(){
		?>
		<div class="preview_subtitle"><?=$this->title?></div>
		<p><?=nl2br($this->content)?></p>
		<?
	}
	function modules_preview(){

		?><div class="preview_buttons show module_edit_button" class="button" data-id='<?=$this->id?>'><img class="icon" src="media/icons/edit_icon_black.svg" alt=""></div><?
		$this->display_preview();
	}
	function display_document(){
		?>
		<? if($this->title != ""): ?>
			<h1><?=$this->title?></h1>
		<? endif; ?>
		<p><?=nl2br($this->content)?></p>
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
			$tagString = "";
			if ($this->id > 0) {
				$tags = Tag_Link::getTags("Module",$this->id);
				if($tags){
					foreach($tags as $tag){
						$tagString .= $tag->title.",";
					}
				}
			}
			?>
			<div>
				<input type="text" class="title_edit" data-input="title" placeholder="TITLE" value="<?=$this->title;?>" />
			</div>

			<input type="text" id="module_tags" name="tags" value="<?=$tagString?>">

			<div>
				<textarea class="content_edit" data-input="content"><?=$this->content;?></textarea>
			</div>

			<div class="button-container">
				<input type="hidden" name="action" />
				<button type="submit" id="submit" name="submit" value="edit">Submit</button>
				<? if ($this->id > 0) { ?>
					<button type="button" id="delete" name="delete" value="delete">Delete</button>
				<? } ?>
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
			<?=$this->title?>
		</div>
		<?
	}
}
?>
