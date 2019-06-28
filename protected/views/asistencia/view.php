<?php
/* @var $this AsistenciaController */
/* @var $model Asistencia */

$this->breadcrumbs=array(
	'Asistencias'=>array('index'),
	$model->idaprendiente,
);

$this->menu=array(
	array('label'=>'List Asistencia', 'url'=>array('index')),
	array('label'=>'Create Asistencia', 'url'=>array('create')),
	array('label'=>'Update Asistencia', 'url'=>array('update', 'id'=>$model->idaprendiente)),
	array('label'=>'Delete Asistencia', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idaprendiente),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Asistencia', 'url'=>array('admin')),
);
?>

<h1>View Asistencia #<?php echo $model->idaprendiente; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idaprendiente',
		'horaentrada',
		'horasalida',
		'estatus',
	),
)); ?>
