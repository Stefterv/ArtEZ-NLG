<? include "header.php" ?>
<main>
	<div class="container">
		<div class="navigation document_overview">
			<div class="search" contenteditable>Title</div>
			<div class="module_container">
				<h2>Modules</h2>
				<? for($i = 0; $i<10; $i++): ?>
				<div class="module">
					<p>Module #<?=$i?></p>
					<div class="button edit">edit</div>
					<div class="button remove">x</div>
				</div>
				<? endfor;?>
			</div>	
		</div>
		<div class="preview">
			preview
		</div>
	</div>
</main>
<? include "footer.php" ?>