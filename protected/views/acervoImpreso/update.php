<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */

$this->breadcrumbs=array(
	'Acervo Impresos'=>array('admin'),
	$model->idacervo=>array('view','id'=>$model->idacervo),
	'Editar',
);

$this->menu=array(
	array('label'=>'List AcervoImpreso', 'url'=>array('index')),
	array('label'=>'Create AcervoImpreso', 'url'=>array('create')),
	array('label'=>'View AcervoImpreso', 'url'=>array('view', 'id'=>$model->idacervo)),
	array('label'=>'Manage AcervoImpreso', 'url'=>array('admin')),
);
?>


<?php 
/*
echo "<pre>";
print_r($model);
echo "</pre>";
Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
*/
$this->renderPartial('_update', array('model'=>$model)); ?>