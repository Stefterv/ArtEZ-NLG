<? $page = "documents" ?>
<? include "header.php" ?>
<main>
	<div class="container">
		<div class="navigation document_overview">
			<div class="title" contenteditable>Title</div>
			<div class="document_module_container">
				<h2>MODULES</h2>
				<div class="insertModule">
					<div class="insertMod">
						<div class="addButton">+</div>
						<p>insert module</p>
					</div>
					<div class="insertText">
						<div class="addButton">+</div>
						<p>insert text/image</p>
					</div>
				</div>
				<? for($i = 0; $i<10; $i++): ?>
				<div class="module">
					<p>Module #<?=$i?></p>
					<div class="modulebutton edit">edit</div>
					<div class="modulebutton remove">x</div>
				</div>
				<? endfor;?>
			</div>
			<div class="module_bottom_buttons">
				<div class="button modulebutt">View Booklet</div>
				<div class="button modulebutt">Send for Verification</div>
			</div>
		</div>
		<div class="preview">
			<div class="document_preview">&nbsp</div>
			<div class="button deleteButton">Delete</div>
		</div>
	</div>
</main>
<? include "footer.php" ?>