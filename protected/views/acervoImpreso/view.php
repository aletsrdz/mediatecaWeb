<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */

$this->breadcrumbs=array(
	'Acervo Impresos'=>array('admin'),
	$model->idacervo,
);

$this->menu=array(
	array('label'=>'List AcervoImpreso', 'url'=>array('index')),
	array('label'=>'Create AcervoImpreso', 'url'=>array('create')),
	array('label'=>'Update AcervoImpreso', 'url'=>array('update', 'id'=>$model->idacervo)),
	array('label'=>'Delete AcervoImpreso', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idacervo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AcervoImpreso', 'url'=>array('admin')),
);
?>

<h1>Detalle de Acervo Impreso</h1>



<?php 
	


	$idioma = CHtml::encode($model->idioma);
	$Criteria = new CDbCriteria();
	$Criteria->select = "nombre";
	$Criteria->condition = "ididioma=$idioma";
	$languaje = Idioma::model()->find($Criteria);

	if(isset($languaje)){
		$model->idioma = $languaje->nombre;
	}else{
		$model->idioma = "";
	}

	$material = CHtml::encode($model->material);
	$Criteria = new CDbCriteria();
	$Criteria->select = "descripcion";
	$Criteria->condition ="idmaterial=".$material;
	$mat  = Material::model()->find($Criteria);
	if(isset($mat)){
		$model->material = $mat->descripcion;
	}
	else{
		$model->material = "";
	}

	switch (CHtml::encode($model->catalogo)) { //1- Mediateca, 2 - Acervo Asesores, 3 - Master, 4 - Bajas, 5 - CAD
		case '1':
			$model->catalogo = "Mediateca";
			break;
		case '2':
			$model->catalogo = "Acervo Asesores";
			break;
		case '3':
			$model->catalogo = "Master";
			break;
		case '4':
			$model->catalogo = "Bajas";			
			break;
		case '5':
			$model->catalogo = "CAD";			
			break;			
		default:
			$model->catalogo = "Otro";						
			break;
	}
/*
	switch ($model->dificultad) {
		case '0':
			$model->dificultad = "Pricipiante";
			break;
		case '1':
			$model->dificultad = "Intermedio";
			break;		
		case '2':
			$model->dificultad = "Avanzado";
			break;			
		default:
			$model->dificultad = "";
			break;
	}
*/
	switch ($model->tipo_formato) {
		case '0':
			$model->tipo_formato ="Original";
			break;
		case '1':
			$model->tipo_formato ="Fotocopiado";
			break;
		case '2':
			$model->tipo_formato ="Escaneado";
			break;						
		
		default:
			# code...
			break;
	}





	
	$numInventario = $model->idacervo;
	if(isset($numInventario)){
		$Criteria = new CDbCriteria();		
		$Criteria->condition = "idacervo_anterior=".$numInventario;
		$Criteria->order = "idacervo ASC";
		$inventario = Inventario::model()->findAll($Criteria);//find
		$count = Inventario::model()->count($Criteria);
		
	}	
		$this->widget('zii.widgets.CDetailView', array(		
		//'data'=>$model, 		
			'data'=>array(
			//'idacervo'=>CHtml::encode($model->idacervo),
			'catalogo'=>CHtml::encode($model->catalogo),
			'material'=>CHtml::encode($model->material),
			'idioma'=>CHtml::encode($model->idioma),
			'titulo'=>CHtml::encode($model->titulo),
			'autor_personal'=>CHtml::encode($model->autor_personal),
			'autor_corporativo'=>CHtml::encode($model->autor_corporativo),
			'edicion'=>CHtml::encode($model->edicion),
			'isbn'=>CHtml::encode($model->isbn),						
			'descripcion_area'=>CHtml::encode($model->descripcion_area),
			'serie'=>CHtml::encode($model->serie),
			'fondo'=>CHtml::encode($model->fondo),
			'acento'=>CHtml::encode($model->acento),			
			'tipo_formato'=>CHtml::encode($model->tipo_formato),
			
		),

		'attributes'=>array(
			//'idacervo',
			'catalogo',
			'material',
			'idioma',
			'titulo',
			'autor_personal',
			'autor_corporativo',
			'edicion',
			'isbn',									
			'descripcion_area',
			'serie',
			'fondo',
			'acento',			
			'tipo_formato',			
		),
	)); 
?>
<?php 
	if($count > 1){
		echo "<h1>Ejemplares</h1>";
	}else
	{
		echo "<h1>Ejemplar</h1>";
	}
?>

<?php
	
	foreach($inventario as $valor){

		switch ($valor->estatus) {
			case '1':
				$valor->estatus = "Alta";
				break;
			case '2':
				$valor->estatus = "Baja";
				break;				
			
			default:		
				$valor->estatus = "Indefinido";
				break;
		}

		switch ($valor->dificultad) {
		case '0':
			$valor->dificultad = "Pricipiante";
			break;
		case '1':
			$valor->dificultad = "Intermedio";
			break;		
		case '2':
			$valor->dificultad = "Avanzado";
			break;			
		default:
			$valor->dificultad = "";
			break;
		}

		
		$this->widget('zii.widgets.CDetailView', array(		
			//'data'=>$inventario, 		
			'data'=>array(
				'idacervo'=>$valor->idacervo,
				'clasificacion'=>$valor->clasificacion,
				'pie_imprenta'=>$valor->pie_imprenta,
				'descripcion_fisica'=>$valor->descripcion_fisica,
				'issn'=>$valor->issn,
				'dificultad'=>$valor->dificultad,
				'fecha_ingreso'=>$valor->fecha_ingreso,
				'notas'=>$valor->notas,
				'catalogador'=>$valor->catalogador,
				'estatus'=>$valor->estatus,
				
			),
			'attributes'=>array(			
				'idacervo',
				'clasificacion',
				'pie_imprenta',
				'descripcion_fisica',
				'issn',
				'dificultad',
				'fecha_ingreso',
				'notas',
				'catalogador',
				'estatus'
						
			),
		));
	
	echo "<div class='btn_ejemplar' style='text-align:right; padding: 30px;'>";
		
		$this->widget(
	    'booster.widgets.TbButton',
		    array(
		    	'buttonType' =>'link',
		        'label' => 'Editar Ejemplar',
		        'context' => 'primary',                
		        'url' => Yii::app()->createUrl('/acervoImpreso/updateInventario', array("id"=>$valor->idacervo)),                
		        #'url' => Yii::app()->createUrl('aprendiente2/generarCredencial', $arreglo),        		        

		    )
		); echo ' ';

	echo "</div>";
		echo "<br>";
	}//cierre de foreach
?>
<?php

echo "<div class='btn_agregar' style='text-align: center'>";

 $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Agregar ejemplar',
        'context' => 'primary',             
        'url' => Yii::app()->createUrl('/acervoImpreso/acervo', array("id"=>$model->idacervo)),  //array ("id")     y no idacervo        
    )
); echo ' ';


	echo "</div>";
?>


<?php 
?>
