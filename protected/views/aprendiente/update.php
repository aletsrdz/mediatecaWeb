<?php
/* @var $this AprendienteController */
/* @var $model Aprendiente */

$this->breadcrumbs=array(
	'Aprendientes'=>array('index'),
	$model->idaprendiente=>array('view','id'=>$model->idaprendiente),
	'Update',
);

$this->menu=array(
	array('label'=>'List Aprendiente', 'url'=>array('index')),
	array('label'=>'Create Aprendiente', 'url'=>array('create')),
	array('label'=>'View Aprendiente', 'url'=>array('view', 'id'=>$model->idaprendiente)),
	array('label'=>'Manage Aprendiente', 'url'=>array('admin')),
);
?>

<h1>Update Aprendiente <?php echo $model->idaprendiente; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>