<?php
/* @var $this AcervoController */
/* @var $model Acervo */

#$this->breadcrumbs=array(
#	'Consulta',
#);

$this->menu=array(
	array('label'=>'List Acervo', 'url'=>array('index')),
	array('label'=>'Create Acervo', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#acervo-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Buscar Acervo</h1>


<?php #echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php #$this->renderPartial('acervo/_search',array(
	#'model'=>$model,
#)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'acervo-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idacervo',
		'material',
		'isbn',
		'issn',
		'idioma',
		'clave',
		/*
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
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
