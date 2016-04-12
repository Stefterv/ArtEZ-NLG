<? 
require_once(dirname(dirname(__FILE__)) . '/functions.php');
$modules = Module::findByAttr(array("master="=>"1")); 
?>

<? foreach($modules as $module): ?>
	<?
		$tags = Tag_Link::getTags("Module",$module->id);
		$tagString = "";
		if($tags){
			foreach($tags as $tag){
				$tagString .= "tag_".$tag->title." ";
			}
		}
	?>
	<div class="module_item <?=$tagString?>" data-id=<?=$module->id;?> data-title="<?=$module->title;?>">
		<div class="module_selection">&nbsp;</div>
		<div class="module_title"><?=$module->title;?></div>
		<div class="module_date">
			<? $date = date_create_from_format("Y-m-d H:i:s",$module->created==""?"2015-06-02 14:54:04":$module->created); ?>
			<div class="changed"><?=date_format($date, "m-d-Y");?></div>
			<? $date = date_create_from_format("Y-m-d H:i:s",$module->changed==""?"2015-06-02 14:54:04":$module->changed); ?>
			<div class="changed"><?=date_format($date, "m-d-Y");?></div>
		</div>
	</div>
<? endforeach; ?>
