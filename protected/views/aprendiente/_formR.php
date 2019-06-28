<?php
/* @var $this AprendienteController */
/* @var $model Aprendiente */
/* @var $form CActiveForm */
?>

<div class="form">

    
<?php /** @var TbActiveForm $form */
    $form = $this->beginWidget(
	'booster.widgets.TbActiveForm',
	array(
		'id' => 'horizontalForm',
		'type' => 'horizontal',
	)
); ?>
 
	<fieldset>
 
		
		<?php 
            /*
			echo $form->datePickerGroup(
                $model,
                'fecharegistro',
                
                array(                    
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),  
					'widgetOptions'=>array(	
						'options' => array(
								'language' => 'es',
								'format' => 'yyyy-mm-dd',
								'viewformat' => 'yyyy-mm-dd',
						),
					),
                    'hint' => 'Ingresa la fecha de registro',
                    'prepend' => '<i class="glyphicon glyphicon-calendar"></i>'
                )
            ); 
			
			
			echo $form->datePickerGroup(
                $model,
                'fechainscripcion',
                
                array(                    
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),  
					'widgetOptions'=>array(	
						'options' => array(
								'language' => 'es',
								'format' => 'yyyy-mm-dd',
								'viewformat' => 'yyyy-mm-dd',
						),
					),
                    'hint' => 'Ingresa la fecha de inscripción',
                    'prepend' => '<i class="glyphicon glyphicon-calendar"></i>'
                )
            ); 
			
			*/



           

            echo $form->textFieldGroup(
                $model,
                'cta_rfc',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            ); 

            echo $form->textFieldGroup(
                $model,
                'nombres',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            ); 

            echo $form->textFieldGroup(
                $model,
                'apellidopaterno',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            ); 
            echo $form->textFieldGroup(
                $model,
                'apellidomaterno',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            ); 

            /*			
			$Criteria = new CDbCriteria();
			$Criteria -> order = "idcategoria ASC";
			
			echo $form->dropDownListGroup(
                $model,
                'categoria',
                array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
	   			'widgetOptions' => array(
					'data' => CHtml::listData(Categoria::model()->findAll($Criteria),"idcategoria" ,"SelectCategoria"),
	   				//'data' => array('Estudiante', 'Académico', 'Administrativo', 'Tesista', 'Trabajador de confianza', 'otro'),
					'htmlOptions' => array(
						'empty'=>'Seleccione Categoria',
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
           
			
			$Criteria = new CDbCriteria();
			$Criteria -> order = "dependencia ASC";
			echo $form->dropDownListGroup(
                $model,
                'procedencia',
                array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
	   			'widgetOptions' => array(
					
					'data' => CHtml::listData(Dependencia::model()->findAll($Criteria),"dependencia" ,"SelectDependencia"),
	   				//'data' => array('Estudiante', 'Académico', 'Administrativo', 'Tesista', 'Trabajador de confianza', 'otro'),
					'htmlOptions' => array(
						'empty'=>'Seleccione Dependencia UNAM',
						//'multiple' => true
					),
				)
			)
            ); 	

			*/
			/*
			
			echo $form->datePickerGroup(
                $model,
                'fechanacimiento',
                
                array(                    
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),  
					'widgetOptions'=>array(	
						'options' => array(
								'language' => 'es',
								'format' => 'yyyy-mm-dd',
								'viewformat' => 'yyyy-mm-dd',
						),
					),
                    'hint' => 'Ingresa la fecha de nacimiento',
                    'prepend' => '<i class="glyphicon glyphicon-calendar"></i>'
                )
            ); 			
						          
						
			echo $form->radioButtonListGroup(
			$model,
			'sexo',
				array(
					'widgetOptions' => array(
						'data' => array(
							'Masculino','Femenino',
						)
					)
				)
			);
			
			
			echo $form->dropDownListGroup(
                $model,
                'inscripcion',
                array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
	   			'widgetOptions' => array(
					//'data' => CHtml::listData(Categoria::model()->findAll(),"idcategoria" ,"SelectCategoria"),
	   				'data' => array('Verdadero','Falso'),
					'htmlOptions' => array(
						'empy'=>'Seleccione Categoria',
						//'multiple' => true
					),
				)
			)
            ); 				
			
			
			echo $form->textFieldGroup(
                $model,
                'numinscripcion',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            ); 	
        
            */
        ?>
   
	<div class="form-actions">
		




		<?php $this->widget(
			'booster.widgets.TbButton',
			array(
				'buttonType' => 'submit',
				'context' => 'primary',
				'label' => 'Reinscribir',
				
			)
		); ?>
		
	</div>
	</fieldset>
<?php
$this->endWidget();
unset($form);
?>