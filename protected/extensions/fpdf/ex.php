<?php
//$url=$_SERVER['HTTP_HOST'];
//echo $url;
$nombre = $_GET['nombre'];
$numcuenta = $_GET['numcuenta'];

require('code39.php');

$pdf = new Code39();
$pdf->AddPage();
$pdf->f_Code39(60, 30, '11245787');
$pdf->f_Code39(60, 60, '12345');
$pdf->f_Code39(60, 90, 'T385 T59');
$pdf->f_Code39(60, 120, 'QA76.76O63 T59');
$pdf->f_Code39(60, 150, $numcuenta);
//$pdf->Cell(60,180,'¡Hola, Mundo!');
$pdf->Cell(60,210, $nombre);
$pdf->Cell(60,240, $numcuenta);
$pdf->Output();
?>
