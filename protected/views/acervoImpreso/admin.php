<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */

$this->breadcrumbs=array(
	'Crear Acervo Impreso'=>array('create'),
	'Listar Acervo Impreso'=>array('admin'),
);

$this->menu=array(
	array('label'=>'List AcervoImpreso', 'url'=>array('index')),
	array('label'=>'Create AcervoImpreso', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#acervo-impreso-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Consultar Acervo Impreso</h1>

<p>

</p>

<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php /*$this->renderPartial('_search',array(
	'model'=>$model,
));*/ ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'acervo-impreso-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idacervo',
		'catalogo',
		'material',
		'idioma',
		'titulo',
		'autor_personal',
		/*
		'autor_corporativo',
		'edicion',
		'isbn',
		'descripcion_area',
		'serie',
		'fondo',
		'acento',
		'tipo_formato',
		*/
		array(
			'class'=>'CButtonColumn',
			'template'=>'{view}{update}',
			'htmlOptions'=>array('style' => 'width: 100px; text-align: center; margin-left: 2px;'),
			'header'=>'Acciones',
		),
	),
)); ?>
