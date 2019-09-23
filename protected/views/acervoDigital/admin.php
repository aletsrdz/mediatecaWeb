<?php
/* @var $this AcervoDigitalController */
/* @var $model AcervoDigital */

$this->breadcrumbs=array(
	'Crear Acervo Digitales'=>array('create'),
	'Listar Acervo Digitales'=>array('admin'),
);

$this->menu=array(
	array('label'=>'List AcervoDigital', 'url'=>array('index')),
	array('label'=>'Create AcervoDigital', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#acervo-digital-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Buscar Acervo Digital</h1>


<?php echo CHtml::link('Búsqueda Avanzada','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'acervo-digital-grid',
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
		'duracion',
		*/
		array(
			'class'=>'CButtonColumn',
			'template'=>'{view}{update}',
			'htmlOptions'=>array('style' => 'width: 100px; text-align: center; margin-left: 2px;'),
			'header'=>'Acciones',
		),		
	),
)); ?>
