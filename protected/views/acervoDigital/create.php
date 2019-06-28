<?php
/* @var $this AcervoDigitalController */
/* @var $model AcervoDigital */

$this->breadcrumbs=array(
	'Ver Acervo Digitales'=>array('admin'),
	'Crear'=>array('create'),
);

$this->menu=array(
	array('label'=>'List AcervoDigital', 'url'=>array('index')),
	array('label'=>'Manage AcervoDigital', 'url'=>array('admin')),
);
?>



<?php $this->renderPartial('_form', array('model'=>$model, 'inventario'=>$inventario)); ?>