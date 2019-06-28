<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso, $inventario Inventario */
/* @var $form CActiveForm */
?>

<div class="form">

<?php /** @var TbActiveForm $form */
    $form = $this->beginWidget(
	'booster.widgets.TbActiveForm',	
	array(
		'id' => 'horizontalForm',//horizontalForm
		'type' => 'horizontal',
	)
); ?>

<fieldset>

		<legend>Editar Acervo Impreso</legend>
 
	<?php 

		 
		echo $form->dropDownListGroup(
			$model,
			'catalogo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
				'data'=>array('1'=>'Mediateca','2'=>'Asesores','3'=>'CAD','4'=>'Master','5'=>'Otros'),
				'htmlOptions' => array(
					'empty'=>'Seleccione el Catalogo',
					//'multiple' => true
					),                    
				)
			)	
		);

		$Criteria = new CDbCriteria();
		$Criteria -> order = "idmaterial ASC";
		echo $form->dropDownListGroup(
            $model,
            'material',
            array(
			'wrapperHtmlOptions' => array(
				'class' => 'col-sm-5',
			),
   			'widgetOptions' => array(
			
				'data' => CHtml::listData(Material::model()->findAll($Criteria),"idmaterial" ,"SelectMaterial"),	
				'htmlOptions' => array(
					'empty'=>'Seleccione Material',
					//'multiple' => true
				),
			)
		)
        );	

		$Criteria = new CDbCriteria();
		$Criteria -> order = "ididioma ASC";
		echo $form->dropDownListGroup(
            $model,
            'idioma',
            array(
			'wrapperHtmlOptions' => array(
				'class' => 'col-sm-5',
			),
   			'widgetOptions' => array(			
				'data' => CHtml::listData(Idioma::model()->findAll($Criteria),"ididioma" ,"SelectIdioma"),	   				
				'htmlOptions' => array(
					'empty'=>'Seleccione Idioma',
					//'multiple' => true
				),
			)
		)
        );	
		echo $form->textFieldGroup(
			$model,
			'titulo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);

		echo $form->textFieldGroup(
			$model,
			'autor_personal',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);	

		echo $form->textFieldGroup(
			$model,
			'autor_corporativo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);	

		echo $form->textFieldGroup(
			$model,
			'edicion',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);

		echo $form->textFieldGroup(
			$model,
			'isbn',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 	
		echo $form->textFieldGroup(
			$model,
			'descripcion_area',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 	
		echo $form->textFieldGroup(
			$model,
			'serie',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);	

		echo $form->textFieldGroup(
			$model,
			'fondo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);	
		
		echo $form->textFieldGroup(
			$model,
			'acento',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 
		echo $form->dropDownListGroup(
			$model,
			'tipo_formato',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
				'data'=>array('Original','Fotocopiado', 'Escaneado'),//Acervo Digital array('Original','Copia', 'Digitalizado', 
				'htmlOptions' => array(
					'empty'=>'Seleccione la dificultad',
					//'multiple' => true
					),                    
				)
			)				
		);	


	$numInventario = $model->idacervo;
if(isset($numInventario)){
	$Criteria = new CDbCriteria();		
	$Criteria->condition = "idacervo_anterior=".$numInventario;
	$inventario = Inventario::model()->findAll($Criteria);//find
	$count = Inventario::model()->count($Criteria);

}
/*
	echo "<pre>";
	print_r($inventario);
	echo "</pre>";
	Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
	

	
	foreach($inventario as $valor){
		
		echo $form->textFieldGroup(
			$inventario,
			$valor->tipoacervo,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 		

		echo $form->textFieldGroup(
			$inventario,
			$valor->clasificacion,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 
		echo $form->textFieldGroup(
			$inventario,
			$valor->pie_imprenta,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);	
		echo $form->textFieldGroup(
			$inventario,
			$valor->descripcion_fisica,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);							
		echo $form->textFieldGroup(
			$inventario,
			$valor->issn,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 
		echo $form->dropDownListGroup(
			$inventario,
			$valor->dificultad,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
				'data'=>array('Principiante','Intermedio','Avanzado', 'Todos'),
				'htmlOptions' => array(
					'empty'=>'Seleccione la dificultad',
					//'multiple' => true
					),                    
				)
			)				
		);				
		echo $form->textFieldGroup(
			$inventario,
			$valor->notas,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 	
		echo $form->dropDownListGroup(
			$inventario,
			$valor->estatus,
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
				'data'=>array('1'=>'Alta','0'=>'Baja'),
				'htmlOptions' => array(
					'empty'=>'Seleccione el estatus',
					//'multiple' => true
					),                    
				)
			)				

		); 

	}//cierre del for	
}//cierre del if	
*/
	?>
   
	<div class="form-actions">
		<?php $this->widget(
			'booster.widgets.TbButton',
			array(
				'buttonType' => 'submit',
				'context' => 'primary',
				'label' => 'Enviar'
			)
		); ?>
		<?php $this->widget(
			'booster.widgets.TbButton',
			array('buttonType' => 'reset', 'label' => 'Limpiar')
		); ?>
	</div>
	</fieldset>
<?php
$this->endWidget();
unset($form);
?>