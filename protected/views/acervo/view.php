<?php
/* @var $this AcervoController */
/* @var $model Acervo */

$this->breadcrumbs=array(
	'Acervos'=>array('index'),
	$model->idacervo,
);

$this->menu=array(
	array('label'=>'List Acervo', 'url'=>array('index')),
	array('label'=>'Create Acervo', 'url'=>array('create')),
	array('label'=>'Update Acervo', 'url'=>array('update', 'id'=>$model->idacervo)),
	array('label'=>'Delete Acervo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idacervo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Acervo', 'url'=>array('admin')),
);
?>

<h1>View Acervo #<?php echo $model->idacervo; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idacervo',
		'material',
		'isbn',
		'issn',
		'idioma',
		'clave',
		'titulo',
		'autor_personal',
		'autor_corporativo',
		'edicion',
		'pie_imp',
		'descripcion_fisica',
		'serie',
		'nota',
		'descripcion_area',
		'fondo',
		'resumen',
		'acento',
		'referencia',
		'dificultad',
		'cata',
		'fechaingreso',
		'cons',
	),
)); ?>
