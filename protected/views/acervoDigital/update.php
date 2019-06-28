<?php
/* @var $this AcervoDigitalController */
/* @var $model AcervoDigital */

$this->breadcrumbs=array(
	'Acervo Digital'=>array('admin'),
	$model->idacervo=>array('view','id'=>$model->idacervo),
	'Editar',
);

$this->menu=array(
	array('label'=>'List AcervoDigital', 'url'=>array('index')),
	array('label'=>'Create AcervoDigital', 'url'=>array('create')),
	array('label'=>'View AcervoDigital', 'url'=>array('view', 'id'=>$model->idacervo)),
	array('label'=>'Manage AcervoDigital', 'url'=>array('admin')),
);
?>


<?php $this->renderPartial('_update', array('model'=>$model)); ?>