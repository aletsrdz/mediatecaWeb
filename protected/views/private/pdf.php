<h1>Generando las etiquetas</h1>
<?php
$inicio = $_GET['idinicial'];
$final = $_GET['idfinal'];
echo "<div class='img_pdf' style='text-align:center; padding: 30px;'>";
if(isset($inicio)&& isset($final)){

	

	$image = CHtml::image(Yii::app()->request->baseUrl.'/images/pdf_50_50.png',	'icono PDF');
	echo CHtml::link($image, array('private/generarEtiquetas','idinicial'=>$inicio, 'idfinal'=>$final), array('target'=>'_blank'));

	
}	
echo "</div>"
 ?>     			

