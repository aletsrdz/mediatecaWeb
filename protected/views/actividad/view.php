<?php
/* @var $this ActividadController */
/* @var $model Actividad */

$this->breadcrumbs=array(
	'Actividads'=>array('index'),
	$model->idactividad,
);

$this->menu=array(
	array('label'=>'List Actividad', 'url'=>array('index')),
	array('label'=>'Create Actividad', 'url'=>array('create')),
	array('label'=>'Update Actividad', 'url'=>array('update', 'id'=>$model->idactividad)),
	array('label'=>'Delete Actividad', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idactividad),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Actividad', 'url'=>array('admin')),
);
?>

<h1>View Actividad #<?php echo $model->idactividad; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idactividad',
		'dia',
		'horario',
		'lugar',
		'tema',
		'modalidad',
		'titulo',
		'presentador',
	),
)); ?>
