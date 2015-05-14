<?
class Image extends databaseObject{
	protected static $dbName = "images";
	public $src;	
	function display_edit($key){
		?>
		<div class="module">
			<h4>Image</h4>
			<input type="hidden" name="nodes[<?=$key?>][class]" value="Image">
			<input type="hidden" name="nodes[<?=$key?>][id]" value="<?=$this->id?>">
			<input type="text" name="nodes[<?=$key?>][src]" value="<?=$this->src?>" placeholder="Source">
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