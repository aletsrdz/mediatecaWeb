<?php
error_reporting(0);//Para desactivar las notificaciones de PHP, lo tuve que poner porque no me reconocía el $data->languages->nombre, es que la base de datos algunos datos no tienen el IDIOMA, creo que por eso no lo reconoce
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

<h1>Buscar Acervo Impreso</h1>

<p>

</p>

<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php /*$this->renderPartial('_search',array(
	'model'=>$model,
));*/ ?>
</div><!-- search-form -->


<?php 
	/*
		echo '<pre>';
		print_r($dataProvider);
		echo '</pre>';
		Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 
	*/

	$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'acervo-impreso-grid',
	'dataProvider'=>$model->search(),	
	'emptyText' => 'NO SE ENCONTRARÓN RESULTADOS',
	'summaryText' => 'Mostrar {start} - {end} de {count}',
	'pager' => array('class' => 'CLinkPager', 'header' => 'Ir a página:', 'nextPageLabel'=>"Siguiente", 'prevPageLabel'=>'Anterior'),
	'filter'=>$model,
	'columns'=>array(
		array(
            'name'=>'idacervo',
            'header'=>'Idace',
            'htmlOptions'=>array('style'=>'width: 50px; text-align: left;'),            
        ),  
        array(
            'name'=>'catalogo',
            'header'=>'Catalogo',
            //'value'=>'($data->catalogo==1?"Otro" : "Mediateca")',
            'value' => '$data->catalogos->nombre',                
            'htmlOptions'=>array('style'=>'width: 50px; text-align: left;'),            
        ),		
		array(
            'name'=>'materiales_search',
            'header'=>'Material',
            'value'=>'$data->materiales->descripcion',
            'htmlOptions'=>array('style'=>'width: 50px; text-align: left;'),            
        ),
		array(
            'name'=>'languages_search',
            'header'=>'Idioma',
            'value' => '$data->languages->nombre',                
            'htmlOptions'=>array('style'=>'width: 30px; text-align: center;'),            
        ),       		
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
));

 ?>
