<?php
/* @var $this CarreraController */
/* @var $model Carrera */

$this->breadcrumbs=array(
	'Carrera'=>array('admin'),
	
);

$this->menu=array(
	array('label'=>'Listar Carreras', 'url'=>array('admin')),
	array('label'=>'Crear Carrera', 'url'=>array('create')),
);


?>

<h1>Listado de Carreras</h1>

<?php $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Agregar dependencia',
        'context' => 'primary',        
        'url' => Yii::app()->createUrl("carrera/create"),        
    )
); echo ' ';
?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'carrera-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idcarrera',
		'nombrecarrera',
		array(
			'class'=>'CButtonColumn',
			'template'=>'{view}{update}{delete}',
			'htmlOptions'=>array('style' => 'width: 100px; text-align: center; margin-left: 2px;'),
			'header'=>'Acciones',
		),
	),
)); ?>
