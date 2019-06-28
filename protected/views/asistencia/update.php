<?php
/* @var $this AsistenciaController */
/* @var $model Asistencia */

$this->breadcrumbs=array(
	'Asistencias'=>array('index'),
	$model->idaprendiente=>array('view','id'=>$model->idaprendiente),
	'Update',
);

$this->menu=array(
	array('label'=>'List Asistencia', 'url'=>array('index')),
	array('label'=>'Create Asistencia', 'url'=>array('create')),
	array('label'=>'View Asistencia', 'url'=>array('view', 'id'=>$model->idaprendiente)),
	array('label'=>'Manage Asistencia', 'url'=>array('admin')),
);
?>

<h1>Update Asistencia <?php echo $model->idaprendiente; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>