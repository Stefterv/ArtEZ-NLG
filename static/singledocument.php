<? $page = "documents" ?>
<? include "header.php" ?>
<main>
	<div class="container">
		<div class="properties document_overview">
			<div class="title">Title</div>
			<div class="title_edit"contenteditable>Edit the title</div>
			<div class="document_module_container">
				
				<div class="document_edit_tags">
					<div class="tag new_tag">New Tag</div>
					<?for ($i=0; $i < 2 ; $i++):?>
						<div class="tag">Test Tag <?=$i?></div>
					<?endfor;?>
				</div>

				<div class="add_module">
					<div class="search" contenteditable>search for module</div>
					<div class="insertModule">
						+ insert text
					</div>
				</div>

				<? for($i = 0; $i<2; $i++): ?>
				<div class="module">
					<div class="module_title">Module #<?=$i?></div>
					<div class="modulebutton edit"><img src="img/edit_edit.svg"  width="30" alt=""></div>
					<div class="modulebutton remove"><img src="img/delete_icon.svg" width="30" alt=""></div>
				</div>
				<? endfor;?>
				<div class="edit_module">
					<div class="module_title">Module 2</div class="module_title">
					
					<div class="modulebutton save"><img src="img/duplicate_icon2.svg" alt="" width="30px"></div>
					<p>Lorem ipsum Amet amet do reprehenderit dolor aliquip tempor ad dolore qui consequat incididunt in adipisicing ut dolor pariatur eu nostrud laboris minim sint nisi do officia culpa consequat.</p>
				</div>
				<? for($i = 0; $i<2; $i++): ?>
				<div class="module">
					<div class="module_title">Module #<?=$i?></div>
					<div class="modulebutton edit"><img src="img/edit_edit.svg" width="30" alt=""></div>
					<div class="modulebutton remove"><img src="img/delete_icon.svg" width="20" alt=""></div>
				</div>
				<? endfor;?>
			</div>
		</div>
		<div class="preview">
			<div class="document_preview">
				<div class="preview_header">
					<div class="preview_title">Document title</div>
					<div class="preview_icons">
						<span class="preview_download"><img src="img/download_icon_dikkydikdik.svg" width="30px" alt=""></span>
						<span class="preview_view"><img src="img/view_icon_final.svg" width="30px" alt=""></span>
					</div>
				</div>
				<p>Lorem ipsum Veniam sed laborum irure ullamco nulla amet et laboris enim ad ullamco est eu dolor laborum magna Excepteur ea veniam ut mollit nisi do.</p>
				<p>Lorem ipsum Elit pariatur in adipisicing tempor ex irure proident ad amet ex.</p>
			</div>
		</div>
	</div>
</main>
<? include "footer.php" ?>