<?php
require('fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Helvetica','',8);
$pdf->MultiCell(50,4,file_get_contents("input.txt"));;
$pdf->Output();
?>