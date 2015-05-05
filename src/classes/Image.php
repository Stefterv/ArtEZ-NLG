<?
class Image extends databaseObject{
	protected static $dbName = "images";
	public $src;	
	function display_edit(){
		?>
		<div class="edit_box" data-parameter="src">
			<p contenteditable><?=$this->src?></p>
		</div>
		<?
	}
	function display_preview(){
		?>
			<img src="<?=$this->src?>" alt="">
		<?
	}
}
?>