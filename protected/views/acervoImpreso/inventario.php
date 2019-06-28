<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */

$this->breadcrumbs=array(
	'Acervo Impresos'=>array('index'),
	$inventario->idacervo=>array('view','id'=>$inventario->idacervo),
	'Update',
);

$this->menu=array(
	array('label'=>'List AcervoImpreso', 'url'=>array('index')),
	array('label'=>'Create AcervoImpreso', 'url'=>array('create')),
	array('label'=>'View AcervoImpreso', 'url'=>array('view', 'id'=>$inventario->idacervo)),
	array('label'=>'Manage AcervoImpreso', 'url'=>array('admin')),
);

?>

<h1><?php //echo $inventario->idacervo; ?></h1>



<?php 
/*
echo "<pre>";
print_r($inventario);
echo "</pre>";
Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
*/

$this->renderPartial('_inventario', array('inventario'=>$inventario)); ?>