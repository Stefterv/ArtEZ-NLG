<?
$documents = Document::findAll();
?>
<main>
	<div class="container">
		<div class="navigation document_overview">
			<div class="search" contenteditable>seachbar</div>
			<div class="sort">sort by <a href="#">name</a>/<a href="#">date added</a>/<a href="#">date modified</a></div>
			<div class="document_container">
				<? foreach($documents as $document): ?>
				<div class="document" data-indent="<?=$document->getIndent()?>" data-title="<?=$document->title?>">
					<?=$document->title?>
				</div>
			<? endforeach; ?>
			</div>
		</div>
		<div class="preview">
			<div class="preview_buttons">
				<a href="#" class="button">Download</a>
				<a href="#" class="button">Duplicate</a>
				<a href="#" class="button">Delete</a>
			</div>
			<div class="document_preview">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex itaque sunt neque, hic eaque quidem? Explicabo ratione maiores, quaerat, quibusdam veritatis adipisci cupiditate esse sed dolores inventore nihil rem. Magnam aspernatur dolores quidem itaque? Quod enim dolores, necessitatibus deserunt eius sunt porro culpa ea cupiditate odit, eveniet nisi, cumque. Sit at, suscipit atque, voluptatem sed ut dolor illo tenetur delectus necessitatibus quas, voluptatum eum consectetur aspernatur laudantium! Commodi aperiam, veritatis aspernatur ipsum cum minus perferendis pariatur, cupiditate illo molestiae consequuntur quo enim at! Eligendi ut distinctio id, ducimus aut eos quam quas praesentium vero, laudantium unde ullam voluptas voluptatem temporibus nihil optio provident, et rerum quia? Laboriosam omnis suscipit nesciunt tenetur iste dignissimos cum magnam quidem cumque illum magni asperiores itaque nemo, eius sit sint voluptatum ea tempora quis in perspiciatis distinctio, accusamus nulla! Voluptatum fuga cupiditate delectus fugit cumque beatae laborum at, quibusdam, magni numquam, eligendi aliquam, est error!
			</div>
		</div>
	</div>
</main>