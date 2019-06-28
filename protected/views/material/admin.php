<?php
/* @var $this MaterialController */
/* @var $model Material */

$this->breadcrumbs=array(
	'Materiales'=>array('admin'),
	
);

$this->menu=array(
	array('label'=>'List Material', 'url'=>array('index')),
	array('label'=>'Create Material', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#material-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Listado de Materiales</h1>

<?php $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Agregar material',
        'context' => 'primary',        
        'url' => Yii::app()->createUrl("material/create"),        
    )
); echo ' ';
?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'material-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idmaterial',
		'descripcion',
				array(
			'class'=>'CButtonColumn',
			'template'=>'{view}{update}{delete}',
			'htmlOptions'=>array('style' => 'width: 100px; text-align: center; margin-left: 2px;'),
			'header'=>'Acciones',
		),
	),
)); ?>
