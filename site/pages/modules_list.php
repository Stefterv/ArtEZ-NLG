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
	<div class="module_item <?=$tagString?>" data-id=<?=$module->id;?> data-title="<?=$module->title?>" data-added="<?=$module->id?>" data-created="<?=strtotime($module->created);?>" data-modified="<?=strtotime($module->modified);?>">
		<div class="module_selection">&nbsp;</div>
		<div class="module_title"><?=$module->title;?></div>
		<div class="module_dates">
			<div class="module_date created"><?=date(DISPLAY_DATE_FORMAT, strtotime($module->created));?></div>
			<div class="module_date modified"><?=date(DISPLAY_DATE_FORMAT, strtotime($module->modified));?></div>
		</div>
	</div>
<? endforeach; ?>
