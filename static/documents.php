<? include "header.php" ?>
<main>
	<div class="container">
		<div class="navigation document_overview">
			<div class="search" contenteditable>seachbar</div>
			<div class="sort">sort by <a href="#">name</a>/<a href="#">date added</a>/<a href="#">date modified</a></div>
			<div class="document_container">
				<div class="document">
					Document #1
				</div>
				<div class="document">
					Document #2
				</div>
				<div class="document indent-1">
					Document #3 indent
				</div>
				<? for($i = 4; $i<50; $i++): ?>
				<div class="document">
					<a href="singledocument.php">Document #<?=$i?></a>
				</div>
				<? endfor;?>
			</div>
			<a href="document_edit">new document</a>
		</div>
		<div class="preview">
			preview
		</div>
	</div>
</main>
<? include "footer.php" ?>