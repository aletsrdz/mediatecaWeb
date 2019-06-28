<?php
// http://localhost:8000/mediatecaV2/protected/extensions/fpdf/credencial.php
require('Code39.php');
$aprendiente = "CHAVEZ MOLINA JOSÉ ALBERTO";
$idioma = "JAPONÉS";
$id = "270667";

$pdf = new Code39();
$pdf->AddPage();
$pdf->f_Code39(123, 45, $id);
$pdf->Rect(21,7,83, 23); //cabecera izq
$pdf->Rect(107,7,83, 23); //firma
$pdf->Image('../../../images/unam150.jpg',25,10,-400);
$pdf->Image('../../../images/cele1.png',85,10,-300);
$pdf->SetFont('Arial','',7);
$pdf->SetXY(40,10);
$pdf->MultiCell(45,3,'Universidad Nacional Autónoma de México', 0, 'C');
$pdf->SetXY(40,16);
$pdf->MultiCell(45,3,'Centro de Enseñanza de Lenguas Extranjeras', 0, 'C');
$pdf->SetXY(40,23);
$pdf->SetFont('Arial','',11);
$pdf->Cell(45,6, 'Mediateca',0,0,'C');
$pdf->SetXY(130,24);
$pdf->SetFont('Arial','B',8);
$pdf->Cell(40,5, 'Firma',0,0,'C');
$pdf->Line(117,23, 182, 23);
$pdf->Rect(20,6,85, 67); //Rect 1
$pdf->Rect(106,6,85, 67); // Rect2 codigo de barras 
$pdf->Rect(107,31,83, 41); // Rect interno codigo de barras
$pdf->Rect(21,31,35, 41); // Foto
$pdf->Rect(57,31,47, 20); // Nombre
$pdf->Rect(57,52,47, 20); // Idioma e ID usuario
$pdf->SetXY(130,33);
$pdf->SetFont('Arial','',6);
$pdf->MultiCell(40,3,'El usurio será responsable del mal uso que se ahga de esta credencial', 0, 'C');
$pdf->SetXY(61,33);
$pdf->SetFont('Arial','',8);
$pdf->MultiCell(40,5,$aprendiente, 0, 'C');
$pdf->SetXY(61,45);
$pdf->Cell(40,4, 'Nombre',0,0,'C');
$pdf->SetXY(61,53);
$pdf->Cell(40,5, $idioma,0,0,'C');
$pdf->SetXY(61,59);
$pdf->SetFont('Arial','',8);
$pdf->Cell(40,5, 'Idioma',0,0,'C');
$pdf->SetXY(61,66);
$pdf->Cell(15,5, 'ID. de Usr:',0,0,'C');
$pdf->Cell(25,5, $id,0,0,'C');
$pdf->Output();

?>
