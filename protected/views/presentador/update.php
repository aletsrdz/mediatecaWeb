<?php
/* @var $this PresentadorController */
/* @var $model Presentador */

$this->breadcrumbs=array(
	'Presentadors'=>array('index'),
	$model->idpresentador=>array('view','id'=>$model->idpresentador),
	'Update',
);

$this->menu=array(
	array('label'=>'List Presentador', 'url'=>array('index')),
	array('label'=>'Create Presentador', 'url'=>array('create')),
	array('label'=>'View Presentador', 'url'=>array('view', 'id'=>$model->idpresentador)),
	array('label'=>'Manage Presentador', 'url'=>array('admin')),
);
?>

<h1>Update Presentador <?php echo $model->idpresentador; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>