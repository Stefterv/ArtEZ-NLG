<? $page = "modules" ?>
<? include "header.php" ?>
<main>
	<div class="container">
		<div class="navigation module_overview">
			<div class="search" contenteditable>seachbar</div>
			<div class="sort">sort by <a href="#">name</a>/<a href="#">date added</a>/<a href="#">date modified</a></div>
			<div class="document_container">
				<div class="document">
					Module #1
				</div>
				<div class="document">
					Module #2
				</div>
				<div class="document indent-1">
					Module #3 indent
				</div>
				<? for($i = 4; $i<50; $i++): ?>
				<div class="document">
					Module #<?=$i?>
				</div>
				<? endfor;?>
			</div>
		</div>
		<div class="preview">
			<div class="module_preview">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae libero praesentium officia doloribus minus, doloremque excepturi possimus quia aspernatur ducimus quae adipisci similique quos corporis maxime labore alias ab dolore nemo amet eos! Corrupti et, quam voluptatibus id minima aliquid voluptates, alias molestias error, accusantium cupiditate! Aliquam ipsa perspiciatis, eos ullam, dicta pariatur voluptas libero nulla hic explicabo, fuga nemo ut maiores illum dolore suscipit voluptatem vitae fugit officiis ad itaque labore? Eius consequuntur officia fuga, cum dolor rerum quos architecto. Molestias obcaecati quaerat, ipsum quia at doloribus expedita dolore eum, dignissimos nesciunt quasi necessitatibus laudantium odit porro? Consequuntur, earum.
			</div>
		</div>
	</div>
</main>
<? include "footer.php" ?>