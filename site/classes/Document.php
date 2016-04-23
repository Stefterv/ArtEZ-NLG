<?
class Document extends databaseObject{
	protected static $dbName = "documents";
	public $title;
	public $based_on;
	public $author;
	public $created;
	public $modified;
	
	function getTags(){
		return Tag_Link::getTags(0,$this->id);
	}
	function getNodes(){
		$links = $this->getLinks();
		if($links){
			$items = array();
			foreach($links as $link){
				$class = $link->type;
				$item = $class::findByID($link->item_id);
				$items[] = $item;
			}
			return $items;
		}else{
			return false;
		}
	}
	function getLinks(){
		return Document_Link::find("SELECT * FROM document_links WHERE document_id={$this->id} ORDER BY rank");
	}
	function getIndent(){
		if(empty($this->based_on)){
			return 0;
		}else{
			return (Document::findByID($this->based_on)->getIndent()+1);
		}
	}
	function preview(){
		?>
		<div class="document_preview" data-id="<?=$this->id?>">
		<div class="preview_title"><?=$this->title?></div>
		<?
		$nodes = $this->getNodes();
		if($nodes){
			foreach ($nodes as $node) {
				$node->display_preview();
			}
		}
		?>
	</div>
		<?
	}
}
?>
