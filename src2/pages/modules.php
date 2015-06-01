<? $page = "modules" ?>
<? $modules = Module::findByAttr(array("master="=>"1")); ?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
	$( document ).ready(function() {
	    $( '.document_container' ).on( 'click', '.module_item', function () { // on click module
	    	var id = this.getAttribute('data-id');	// get id of clicked module
	    	$.ajax({
		        url : 'api/get_modules.php', // url of php file
		        type : 'POST', // post
		        success : function (result) { // when succesful
		        	var j = JSON.parse(result); //parse from json
		        	$('.module_preview').html((j[id])); // replace #preview_content with content from json
		        },
		        error : function () {
		           $('.document_container').html('Unable to load'); // if unable to load display this error message
		        }
		    })
	    	
	    });
	});
</script>

<main>
	<div class="container">
		<div class="navigation module_overview">
			<div class="search" contenteditable>seachbar</div>
			<div class="sort">sort by <a href="#">name</a>/<a href="#">date added</a>/<a href="#">date modified</a></div>
			<div class="document_container">
				<? foreach($modules as $module): ?>
				<div class="module_item" data-id=<?=$module->id;?>>
					<?=$module->title;?>
				<? $date = date_create_from_format("Y-m-d H:i:s",$module->changed); ?>
				
				<div class="last_edit"><?=date_format($date, "H:i - d M");?></div>
				</div>
			<? endforeach; ?>
				
			</div>
		</div>
		<div class="preview">
			<div class="module_preview">
				<div class="default_preview_text">Click on a module on the left hand side to select it for editing.</div>
			</div>
		</div>
	</div>
</main>