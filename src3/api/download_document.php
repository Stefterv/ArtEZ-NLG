<?php
require_once('../includes/tcpdf/tcpdf.php');
include "../functions.php";

$pages=array();

class MC_TCPDF extends TCPDF {
  public function PrintChapter($file) {
    $this->ChapterBody($file);
  }

  public function ChapterBody($file) {
    $this->selectColumn();
    $content = $file;    
    $this->SetFont('Helvetica', '', 9);
    $this->SetTextColor(50, 50, 50);
    $this->writeHTML($content, true, false, true, false, 'J');
    $this->Ln();
  }

  public function Header(){
  	error_log($this->getPage());
		$pagewidth = 297 - 7 * 2;
		$pagewidth -= 3*14; // remove margins
		$columnwidth = $pagewidth/4;
		$margingwidth = $columnwidth+14+7;
  	if($this->getPage() % 2 == 1 ) {



			$this->setEqualColumns(0, $columnwidth);
			$w = $columnwidth;
			$h = (210-14*2)/2;
			$x = 7;
			$y = 14;
			

			ob_start(); ?>
				<?
				$document = Document::findByID($_GET['document']);
				$title = $document->title;
				?>
				<table cellpadding="2" cellspacing="2">
				<tr>
					<td height="10"></td>
				</tr>
				 <tr style="text-transform: uppercase;">
				  <td width="140" style="font-size:1em; font-weight:bold;" nobr="true"><p style="text-transform:uppercase; white-space: normal;"><?=implode("<br>",explode(" ",$title))?></p></td>
				  <td width="10" rowspan="4"></td>
				  <td width="60" rowspan="4"><img src="../media/nlg_logo.jpg"></td>
				 </tr>
				 <tr style="text-transform: uppercase;">
				  <td width="140" style="font-size:0.5em;"><p>To speak to<br>an attorney,<br>please call:</p></td>
				 </tr>
				 <tr style="text-transform: uppercase;">
				  <td width="140" style="font-size:0.5em;"><p>MFY Legal Services, Inc.<br>WorkplaceJustice Project<br>Monday and Tuesday<br>2:00 pm - 5:00 pm<br>212-417-3838</p></td>
				 </tr>
				</table>
			<? 
			$html = ob_get_clean();
			// $this->writeHTMLCell($w, $h,$x,$y+$h,$html,0,0,false,true,'',false);

			$this->writeHTMLCell($w, $h,$x,$y+$h,$html,0,0,false,true,'',false);
			$this->SetAbsY (14);


			$this->SetMargins($margingwidth, 14, 7, true);
			$this->setEqualColumns(3, $columnwidth);

    } else {
    	$this->SetMargins(7, 14, 7, true);
    	$this->setEqualColumns(4, $columnwidth);
    }
  }
}

$pdf = new MC_TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
// $pdf->SetPrintHeader(false);
$pdf->SetPrintFooter(false);

// set margins
$pdf->SetAutoPageBreak(TRUE, 14);
$pdf->setHeaderMargin(14);
// $bordermargin = 14;
// $pdf->SetMargins($bordermargin, $bordermargin, $bordermargin);
// $pdf->SetAutoPageBreak(TRUE, 0);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
  require_once(dirname(__FILE__).'/lang/eng.php');
  $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

$pdf->AddPage('L', 'A4');


// // print HTML
// for($i = 0; $i < 3; $i++) {
// 	// $pdf->PrintChapter('data/chapter_demo_2.html');
// }


// Get document
$document = Document::findByID($_GET['document']);



// set header variables

// get module html
$modules = $document->getNodes();
foreach($modules as $module){

	ob_start();
	$module->display_document();
	$html = ob_get_clean();
	$pageNum = floor(($pdf->getPage() - 1)/2)*2 + 1;
	error_log($pageNum);
	if(!isset($pages[$pageNum])){
		$pages[$pageNum] = array();
	}
	$pages[$pageNum][] = $module;
	$pdf->PrintChapter($html);
}

foreach($pages as  $pageNum => $page){
	$pdf->setPage($pageNum,false);
	$pagewidth = 297 - 7 * 2;
	$pagewidth -= 3*14; // remove margins
	$columnwidth = $pagewidth/4;
	$margingwidth = $columnwidth+14+7;
	$w = $columnwidth;
	$h = (210-14*2)/2;
	$x = 7;
	$y = 14;
	ob_start(); ?>
		<table cellpadding="0" cellspacing="0">
		 <tr>
		  <td width="30" height="60"></td>
		  <td width="145" height="60" align="center" style="font-size:3em"><p style="font-weight:bold;"><?=$pdf->getPage()?> / <?=$pdf->getNumPages()?></p></td>
		  <td width="30" height="60"></td>
		 </tr>
		 <? foreach($page as $module): ?>
		 <? if($module->title != ""): ?>
		 <tr>
		  <td width="40"></td>
		  <td width="125" align="center" style="font-size:0.65em;"><p style="text-transform: uppercase;"><?=$module->title?></p></td>
		  <td width="40"></td>
		 </tr>
		<? endif; ?>
		<? endforeach; ?>
		</table>
	<? 
	$html = ob_get_clean();
	$pdf->writeHTMLCell($w, $h,$x,$y,$html,0,0,false,true,'',true);
}
// write module html to pdf
//

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('example_010.pdf', 'D');

?>