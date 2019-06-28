<?php
/* @var $this IdiomaController */
/* @var $model Idioma */

$this->breadcrumbs=array(
	'Idiomas'=>array('index'),
	$model->ididioma,
);

$this->menu=array(
	array('label'=>'List Idioma', 'url'=>array('index')),
	array('label'=>'Create Idioma', 'url'=>array('create')),
	array('label'=>'Update Idioma', 'url'=>array('update', 'id'=>$model->ididioma)),
	array('label'=>'Delete Idioma', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ididioma),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Idioma', 'url'=>array('admin')),
);
?>

<h1>Detalle del Idioma <?php echo $model->ididioma; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ididioma',
		'nombre',
	),
)); ?>
