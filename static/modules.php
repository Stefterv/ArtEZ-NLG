<? $page = "modules" ?>
<? include "header.php" ?>
<main>
	<div class="container">
		<div class="module_properties properties">
			<h2>FILTER BY TITLE</h2>
			<div class="search" contenteditable>searchbar</div>
			<h2>FILTER BY TAG</h2>
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
		<div class="navigation module_overview">
			<div class="sort"><a href="#">name a-z</a><a href="#" class="selected">created</a><a href="#">editted</a></div>
			<div class="document_container">
				<? for($i = 0; $i<50; $i++): ?>
				<div class="document">
					<div class="module_title">Module #<?=$i?></div>
					<div class="document_date">
						<div class="created">01.01.2001</div>
						<div class="edited">04.04.2001</div>
					</div>
				</div>
				<? endfor;?>
			</div>
		</div>
		<div class="preview">
			<div class="module_preview">
				<h2>Module Title</h2>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae libero praesentium officia doloribus minus, doloremque excepturi possimus quia aspernatur ducimus quae adipisci similique quos corporis maxime labore alias ab dolore nemo amet eos! Corrupti et, quam voluptatibus id minima aliquid voluptates, alias molestias error, accusantium cupiditate! Aliquam ipsa perspiciatis, eos ullam, dicta pariatur voluptas libero nulla hic explicabo, fuga nemo ut maiores illum dolore suscipit voluptatem vitae fugit officiis ad itaque labore? Eius consequuntur officia fuga, cum dolor rerum quos architecto. Molestias obcaecati quaerat, ipsum quia at doloribus expedita dolore eum, dignissimos nesciunt quasi necessitatibus laudantium odit porro? Consequuntur, earum.
			</div>
		</div>
	</div>
</main>
<? include "footer.php" ?>