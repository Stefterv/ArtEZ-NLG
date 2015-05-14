<?
$modules = Module::findAll();
$tags = Tag::findAll();


?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
	$( document ).ready(function() {
	    $( '#module_list' ).on( 'click', '.row', function () { // on click module
	    	var id = this.getAttribute('data-id');	// get id of clicked module
	    	$.ajax({
		        url : 'scripts/get_modules.php', // url of php file
		        type : 'POST', // post
		        success : function (result) { // when succesful
		        	var j = JSON.parse(result); //parse from json
		        	$('#preview_content').html((j[id])); // replace #preview_content with content from json
		        },
		        error : function () {
		           $('#preview_content').html('Unable to load'); // if unable to load display this error message
		        }
		    })
	    	
	    });
	});
</script>
<style type="text/css" media="screen">
	
	header{
		width: 50%;
	}
	#interface{
		position: absolute;
		left: 0;
		right: 50%;
		
		display: inline-block;
		border:1px solid black;
	}
	#tagging{
		
		border:1px solid black;
		width:40%;
		display: inline-block;
	}
	#module_list{
		
		border:1px solid black;
		width:auto;
		display: inline-block;
	}

	.row{
		margin: 5px;
		padding: 5px;
		border:1px solid black;
	}
	.module_title{
		text-decoration: underline;
	}

	.module_content{
		padding: 10px;
		background-color: #D7D7D7;
	}

	#preview{
		position: absolute;
		left: 50%;

		height: 100%;
		display: inline-block;
	}
	#preview_background{
		background-color: #D7D7D7;
		padding: 20px;
	}

	#preview_content{
		background-color: white;
		padding: 20px;
	}
</style>

<main class="homepage">
	<div id="interface">
		<header contenteditable>
			search
		</header>
	
		<div id="tagging">
			<? foreach($tags as $tag): ?>
				<div class="row" data-indent="0">
				<p><?=$tag->title;?></p>
				</div>
			<? endforeach; ?>
		</div>
		<div id="module_list">
			<? foreach($modules as $module): ?>
				<div class="row" data-indent="0" data-id="<?=$module->id?>">
					<p class="module_title"><?=$module->title;?></p>
					<a href="documents/edit.php?id=<?=$module->id?>" class="edit">Edit</a>
					<a href="#" class="remove">Remove</a>
				</div>
			<? endforeach; ?>
		</div>
	</div>

	<div id="preview">
		<div id="preview_background">
			<div id="preview_content"></div>
		</div>
	</div>
	<!-- <footer>
		<a href="document.php">Add</a>
	</footer> -->
</main>