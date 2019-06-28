<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */

$this->breadcrumbs=array(
	'Acervo Digital'=>array('index'),
	$inventario->idacervo=>array('view','id'=>$inventario->idacervo),
	'Update',
);

$this->menu=array(
	array('label'=>'List AcervoDigital', 'url'=>array('index')),
	array('label'=>'Create AcervoDigital', 'url'=>array('create')),
	array('label'=>'View AcervoDigital', 'url'=>array('view', 'id'=>$inventario->idacervo)),
	array('label'=>'Manage AcervoDigital', 'url'=>array('admin')),
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