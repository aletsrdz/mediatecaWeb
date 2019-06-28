<?php
/* @var $this PresentadorController */
/* @var $model Presentador */

$this->breadcrumbs=array(
	'Presentadors'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Presentador', 'url'=>array('index')),
	array('label'=>'Manage Presentador', 'url'=>array('admin')),
);
?>

<h1>Create Presentador</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>