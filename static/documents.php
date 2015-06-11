<? $page = "documents" ?>
<? include "header.php" ?>
<main>
	<div class="container">
		<div class="properties">
			<div class="filter_header">
				<h2>FILTER BY TITLE</h2>
				<div class="search" contenteditable>searchbar</div>
				<h2>FILTER BY TAG</h2>
			</div>
			<div class="document_tags">
				<div class="tag selected">
					New York
				</div>
			<?for($i = 0; $i<200; $i++):?>
				<div class="tag">
					Tag <?=$i?>
				</div>
			<?endfor;?>
			</div>
		</div>
		<div class="navigation">
			<div class="sort"><a href="#">name a-z</a><a href="#">created</a><a href="#" class="selected">editted</a></div>
			<div class="document_container">
				<? for($i = 0; $i<50; $i++): ?>
				<div class="document">
					<div class="document_title"><a href="singledocument.php">Document #<?=$i?></a></div>
					<div class="document_date">
						<div class="created">01.01.2001</div>
						<div class="edited">04.04.2001</div>
					</div>
				</div>
				<? endfor;?>
			</div>
		</div>
		<div class="preview">
			<div class="document_preview">
				<h2>Document Title</h2>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex itaque sunt neque, hic eaque quidem? Explicabo ratione maiores, quaerat, quibusdam veritatis adipisci cupiditate esse sed dolores inventore nihil rem. Magnam aspernatur dolores quidem itaque? Quod enim dolores, necessitatibus deserunt eius sunt porro culpa ea cupiditate odit, eveniet nisi, cumque. Sit at, suscipit atque, voluptatem sed ut dolor illo tenetur delectus necessitatibus quas, voluptatum eum consectetur aspernatur laudantium! Commodi aperiam, veritatis aspernatur ipsum cum minus perferendis pariatur, cupiditate illo molestiae consequuntur quo enim at! Eligendi ut distinctio id, ducimus aut eos quam quas praesentium vero, laudantium unde ullam voluptas voluptatem temporibus nihil optio provident, et rerum quia? Laboriosam omnis suscipit nesciunt tenetur iste dignissimos cum magnam quidem cumque illum magni asperiores itaque nemo, eius sit sint voluptatum ea tempora quis in perspiciatis distinctio, accusamus nulla! Voluptatum fuga cupiditate delectus fugit cumque beatae laborum at, quibusdam, magni numquam, eligendi aliquam, est error!
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex itaque sunt neque, hic eaque quidem? Explicabo ratione maiores, quaerat, quibusdam veritatis adipisci cupiditate esse sed dolores inventore nihil rem. Magnam aspernatur dolores quidem itaque? Quod enim dolores, necessitatibus deserunt eius sunt porro culpa ea cupiditate odit, eveniet nisi, cumque. Sit at, suscipit atque, voluptatem sed ut dolor illo tenetur delectus necessitatibus quas, voluptatum eum consectetur aspernatur laudantium! Commodi aperiam, veritatis aspernatur ipsum cum minus perferendis pariatur, cupiditate illo molestiae consequuntur quo enim at! Eligendi ut distinctio id, ducimus aut eos quam quas praesentium vero, laudantium unde ullam voluptas voluptatem temporibus nihil optio provident, et rerum quia? Laboriosam omnis suscipit nesciunt tenetur iste dignissimos cum magnam quidem cumque illum magni asperiores itaque nemo, eius sit sint voluptatum ea tempora quis in perspiciatis distinctio, accusamus nulla! Voluptatum fuga cupiditate delectus fugit cumque beatae laborum at, quibusdam, magni numquam, eligendi aliquam, est error!
			</div>
		</div>
	</div>
</main>
<? include "footer.php" ?>