<style type="text/css" media="screen">
	body{
		height: 100%;
		width: 100%;
		overflow: scroll;
	}
	.current-module{
		width: 200px;
		border:1px solid black;
		height: auto;
		margin: 10px;
		padding: 5px;
	}

	#new-module{
		width: 200px;
		border:4px solid pink;
		height: auto;
		margin: 10px;
		padding: 5px;
	}

	#new-module-list{
		width: 200px;
		border:4px solid green;
		height: auto;
		margin: 10px 30px 10px 30px;
		padding: 5px;
		
	}

	.new-module-list-item{
		border:1px solid black;
		margin: 5px;
		padding: 5px;
	}

	.show-list{
		display: inline-block;
	}

	.hide-list{
		display: none;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<div id="new-module">Create new module from master</div>
<div id="new-module-list" class="hide-list"></div>

<?
for ($i=0; $i < 10; $i++) { 
	?>
		<div class="current-module">MOUDLE GEK</div>
	<?	
}
?>
<script>
	$( document ).ready(function() {
		$( 'body' ).on( 'click', '#new-module', function () { // on click module
			$.ajax({
		        url : 'api/get_module_list.php',
		        type : 'POST',
		        success : function (result) {
		        	console.log(result);
		        	$('#new-module-list').html(result);
		        },
		        error : function () {
		           $('#new-module-list').html('Unable to load');
		        }
		    });
			if ($('#new-module-list').hasClass('hide-list')) {
				$("#new-module-list").removeClass('hide-list').addClass('show-list');		
			} else {
				$("#new-module-list").addClass('hide-list').removeClass('show-list');		
		}
		});
	});
</script>