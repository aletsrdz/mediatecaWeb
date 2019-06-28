<?php
/* @var $this TemaController */

$this->breadcrumbs=array(
	'',
);
?>
<h1>Cerrar Entradas</h1>

<?php 

	$entradas = CHtml::listData($lista, 'identrada', 'idaprendiente');


	echo '<pre>';
	echo print_r($entradas);
	echo '</pre>';
	echo '¿Se actualizaron? = '.$registro;
		
?>