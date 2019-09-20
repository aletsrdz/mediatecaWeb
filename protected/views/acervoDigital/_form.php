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

<?php

	$Criteria = new CDbCriteria();								
	$Criteria -> limit = 1;
	$Criteria -> order = "idacervo DESC";	
	$acervo = 	Inventario::model()->find($Criteria);
	/*
	echo '<pre>';
	print_r($acervo);
	echo '</pre>';
	echo $acervo->idacervo;				
	Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
	*/

	$idacervo=(int)$acervo->idacervo;
	$idacervo=$idacervo+1; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro

?>

<fieldset>

		<legend>Crear Acervo Digital <?php echo ': '.$idacervo; ?></legend>
 
	<?php 
		/*
		echo $form->textFieldGroup(
			$model,
			'idacervo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);
		*/
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
		$Criteria->addInCondition("idmaterial",array(3,4,5,7,10,11,13));
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
			$inventario,
			'clasificacion',
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
			$inventario,
			'issn',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 
		echo $form->textFieldGroup(
			$inventario,
			'pie_imprenta',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);
		echo $form->textFieldGroup(
			$inventario,
			'descripcion_fisica',
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
			'descripcion_area',
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
			$inventario,
			'dificultad',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
				'data'=>array("Principiante","Intermedio","Avanzado","Todos"),
				'htmlOptions' => array(
					'empty'=>'Seleccione la dificultad',
					//'multiple' => true
					),                    
				)
			)				
		);				
		echo $form->dropDownListGroup(
			$model,
			'tipo_formato',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
				'data'=>array('Original','Copia', 'Digitalizado'),//Acervo Digital array('Original','Copia', 'Digitalizado', 
				'htmlOptions' => array(
					'empty'=>'Seleccione la dificultad',
					//'multiple' => true
					),                    
				)
			)				
		);	

		echo $form->textFieldGroup(
			$model,
			'duracion',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);		

		echo $form->textFieldGroup(
			$inventario,
			'notas',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		); 	

		echo $form->dropDownListGroup(
			$inventario,
			'estatus',
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