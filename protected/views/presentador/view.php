<?php
/* @var $this PresentadorController */
/* @var $model Presentador */

$this->breadcrumbs=array(
	'Presentadors'=>array('index'),
	$model->idpresentador,
);

$this->menu=array(
	array('label'=>'List Presentador', 'url'=>array('index')),
	array('label'=>'Create Presentador', 'url'=>array('create')),
	array('label'=>'Update Presentador', 'url'=>array('update', 'id'=>$model->idpresentador)),
	array('label'=>'Delete Presentador', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idpresentador),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Presentador', 'url'=>array('admin')),
);
?>

<h1>View Presentador #<?php echo $model->idpresentador; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idpresentador',
		'apaterno',
		'amaterno',
		'nombre',
		'biodada',
		'foto',
		'email',
		'institucion',
		'telefono',
		'modo',
	),
)); ?>
