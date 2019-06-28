<?php
/* @var $this AprendienteController */
/* @var $model Aprendiente */

$this->breadcrumbs=array(
	'Aprendientes'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Aprendiente', 'url'=>array('index')),
	array('label'=>'Create Aprendiente', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#aprendiente-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Consultar Aprendientes</h1>
<!--
<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>
-->
<?php echo CHtml::link('Búsqueda Avanzada','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->
<br>
<br>

<div id="output"></div>

<?php $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'ajaxLink',
        'label' => 'Imprimir Credenciales',
        'context' => 'primary',        
        'url' => Yii::app()->createUrl("aprendiente/variascredenciales"), 
        'ajaxOptions'=>array(
        	"type" => "POST",
	        "data" => 'js:{theIds : $.fn.yiiGridView.getChecked("aprendiente-grid","selectedIds").toString()}',
	        "update" =>'#output',
			'beforeSend' => 'js:function(){
							 var selected = $.fn.yiiGridView.getChecked("aprendiente-grid","selectedIds").toString();							 
							 if(!selected.length > 0) {
							alert("Selecciona al menos un registro");		
							return false;
							 }	
							 

	          				 var r = confirm("Quiere imprimir las credenciales seleccionadas?");
	  						 if(!r){
	  						 	return false;
	  						 }	  						 
	  						 //window.open("http://localhost:8000/index.php/aprendiente2/generarCredenciales?theIds="+selected, "_blank"); // servidor pruebas localhost
							 window.open("http://132.247.187.48/alejandro/yii/mediatecaWeb/index.php/aprendiente/generarCredenciales?theIds="+selected, "_blank");   // servidor							 
	  						 
	       	}',
	        'success'=>"$('#aprendiente-grid').yiiGridView.update('aprendiente-grid')",        
	        

	     ),        
        'htmlOptions' => array(      
			'target' => '_blank',
        )	

    )
);
?>


<?php 
	
	$this->widget('zii.widgets.grid.CGridView', array(		
	'id'=>'aprendiente-grid',
	'dataProvider'=>$model->search(),	
	#'selectionChanged'=>'userClicks',	
	'emptyText' => 'NO SE ENCONTRARÓN RESULTADOS',
	'summaryText' => 'Mostrar {start} - {end} de {count}',
	'pager' => array('class' => 'CLinkPager', 'header' => 'Ir a página:', 'nextPageLabel'=>"Siguiente", 'prevPageLabel'=>'Anterior'),
	'filter'=>$model,
	'columns'=>array(
		array(
            'name' => 'check',
            'header'=>'Selecciona',
            'id' => 'selectedIds',
            'selectableRows' => 2,
            'class' => 'CCheckBoxColumn',    
            'value' =>'$data->idaprendiente." ".$data->nombres." ".$data->idioma',         
            #'value'=> '$data->idaprendiente',
        ),
		array(
            'name'=>'idaprendiente',
            'header'=>'No.',
            'htmlOptions'=>array('style'=>'width: 5px; text-align: center;'),            
        ),
        array(
            'name'=>'fecharegistro',
            'header'=>'Fecha inscr.',
            'htmlOptions'=>array('style'=>'width: 30px; text-align: center;'),            
        ),
        array(
            'name'=>'cta_rfc',
            'header'=>'No.Cuenta / RFC',
            'htmlOptions'=>array('style'=>'width: 50px; text-align: center;'),            
        ),        
        array(
            'name'=>'nombres',
            'header'=>'Nombre Completo',
            'htmlOptions'=>array('style'=>'width: 150px; text-align: left;'),            
        ),               
        array(
            'name'=>'apellidopaterno',
            'header'=>'Apellido Paterno',
            'htmlOptions'=>array('style'=>'width: 150px; text-align: left;'),            
        ),
        array(
            'name'=>'apellidomaterno',
            'header'=>'Apellido Materno',
            'htmlOptions'=>array('style'=>'width: 150px; text-align: left;'),            
        ),        
        array(
            'name'=>'idioma_search',
            'header'=>'Idioma',
            'value' => '$data->idiomas->nombre',                 
            'htmlOptions'=>array('style'=>'width: 30px; text-align: center;'),            
        ),        
		array(
			'class'=>'CButtonColumn',
			'template'=>'{view}{update}{delete}{cred}{reins}',
			'buttons'=>array(
					'htmlOptions'=>array('style' => ' margin-left: 2px'),
					'cred'=>array(
						'label'=>'Credencial',
						'url'=>'Yii::app()->createUrl("aprendiente/credencial", array("id" => $data->primaryKey))',
						'imageUrl'=>Yii::app()->request->baseUrl.'/images/credencial.png',
						'options'=>array('class'=>'cred'),											
					 ),						
					'reins'=>array(
						'visible'=>'($data->inscripcion == "t") ? false : true',
						'label'=>'Reinscripción',
						'url'=>'Yii::app()->createUrl("aprendiente/reinscripcion", array("id" => $data->primaryKey))',
						'imageUrl'=>Yii::app()->request->baseUrl.'/images/reins.jpg',
						'options'=>array('class'=>'reins'),
					 ),
			),
			'htmlOptions'=>array('style' => 'width: 100px; text-align: center; margin-left: 2px;'),
			'header'=>'Acciones',
		),
	),//cierre de columns
)); ?>
