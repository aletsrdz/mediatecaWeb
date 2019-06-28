
<h1>Los datos del formulario de busqueda son:</h1>
<?php

/*

echo $clasificacion."</br>";
echo $fecha_ingreso."</br>";
echo $pie_imprenta."</br>";
echo $descripcion_fisica."</br>";


echo "<pre>";
print_r($modelo);
echo "</pre>";
*/
?>

	<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'buscar-grid',
	'dataProvider'=>$dataProvider,
	'columns'=>array(
		'clasificacion',
		'fecha_ingreso',
		'pie_pagina',
		'descripcion_fisica',
		array(
			'class'=>'CButtonColumn',
			'template'=>'{view}{update}{delete}',
			'htmlOptions'=>array('style' => 'width: 100px; text-align: center; margin-left: 2px;'),
			'header'=>'Acciones',
		),
	),
	)); 
	?>



