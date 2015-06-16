<?php
require_once('tcpdf_include.php');

class MC_TCPDF extends TCPDF {
  public function PrintChapter($file) {
    $this->ChapterBody($file);
  }

  public function ChapterBody($file) {
    $this->selectColumn();
    $content = file_get_contents($file, false);        
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
				<table cellpadding="2" cellspacing="2" height=<?=$h?>>
				 <tr>
				  <td width="30" height="60"></td>
				  <td width="145" height="60" align="center" style="font-size:3em"><p style="font-weight:bold;">1/4</p></td>
				  <td width="30" height="60"></td>
				 </tr>
				 <tr>
				  <td width="40"></td>
				  <td width="125" align="center" style="font-size:0.65em"><p style="text-transform: uppercase;">Minimum wage and overtime pay</p></td>
				  <td width="40"></td>
				 </tr>
				 <tr>
				  <td width="40"></td>
				  <td width="125" align="center" style="font-size:0.65em"><p style="text-transform: uppercase;">Safe workplace and healthy working conditions</p></td>
				  <td width="40"></td>
				 </tr>
				 <tr>
				  <td width="40"></td>
				  <td width="125" align="center" style="font-size:0.65em"><p style="text-transform: uppercase;">Compensated for on-thejob injuries</p></td>
				  <td width="40"></td>
				 </tr>
				 <tr>
				  <td width="40"></td>
				  <td width="125" align="center" style="font-size:0.65em"><p style="text-transform: uppercase;">work free from discrimination</p></td>
				  <td width="40"></td>
				 </tr>
				 <tr>
				  <td width="40"></td>
				  <td width="125" align="center" style="font-size:0.65em"><p style="text-transform: uppercase;">Come together with your coworkers to change working conditions</p></td>
				  <td width="40"></td>
				 </tr>
				</table>
			<? 
			$html = ob_get_clean();
			$this->writeHTMLCell($w, $h,$x,$y,$html,0,0,false,true,'',true);

			ob_start(); ?>
				<table cellpadding="2" cellspacing="2">
				<tr>
					<td height="10"></td>
				</tr>
				 <tr style="text-transform: uppercase;">
				  <td width="140" style="font-size:1.5em; font-weight:bold;"><p style="text-transform:uppercase;">Know your rights</p></td>
				  <td width="10" rowspan="4"></td>
				  <td width="60" rowspan="4"><img src="images/nlg_logo.jpg"></td>
				 </tr>
				 <tr style="text-transform: uppercase;">
				  <td width="140" style="font-size:0.9em; font-weight:bold;"><p>A Guide for Workers in New York City</p></td>
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

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Nicola Asuni');
$pdf->SetTitle('TCPDF Example 010');
$pdf->SetSubject('TCPDF Tutorial');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

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


// print HTML
for($i = 0; $i < 3; $i++) {
	$pdf->PrintChapter('data/chapter_demo_2.html');
}

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('example_010.pdf', 'I');
?>