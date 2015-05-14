<main>
	<div class="interface">
		<? var_dump($_POST); ?>
		<form action="" method="POST">
			<input type="text" name="title" placeholder="Document Title">
			<input type="text" name="author" placeholder="Document Author">
			<input type="text" name="based_on" placeholder="Based on Document ID">
			<button type="submit" name="submit" value="edit">Submit</button>
		</form>
	</div>
	<div class="preview">
		preview
	</div>
</main>