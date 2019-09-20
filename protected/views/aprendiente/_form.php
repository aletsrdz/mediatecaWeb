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

		<legend>Crear Aprendiente</legend>
 
		<?php 

			
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
            echo $form->textFieldGroup(
                $model,
                'nombres',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );

            echo $form->textFieldGroup(
                $model,
                'cta_rfc',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );             

            echo $form->textFieldGroup(
                $model,
                'email',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );  

			$Criteria = new CDbCriteria();
			$Criteria -> order = "idcategoria ASC";
			$modeloCategoria = CHtml::listData(Categoria::model()->findAll($Criteria),"idcategoria" ,"SelectCategoria");

			echo $form->typeAheadGroup(
	   		$model,
	    	'categoria',
		   	array(
		   		'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
		 		'widgetOptions' => array(
           		'options'=>array(
           		'hint' => true,
		        'highlight' => true,
		        'minLength' => 1
	         	),
	            'datasets'=>array('source'=>$modeloCategoria)
		        	),
		        	'labelOptions' => array(
		            'label' => 'Categoria:',
		       		)
		   		)
			); 
			
			$CriteriaC = new CDbCriteria();
			$CriteriaC -> order = "idcarrera ASC";
			$modeloCarrera = CHtml::listData(Carrera::model()->findAll($CriteriaC),"idcarrera" ,"SelectCarrera");
			

			echo $form->typeAheadGroup(
	   		$model,
	    	'carrera',
		   	array(
		   		'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
		 		'widgetOptions' => array(
           		'options'=>array(
           		'hint' => true,
		        'highlight' => true,
		        'minLength' => 1
	         	),
	            'datasets'=>array('source'=>$modeloCarrera)
		        	),
		        	'labelOptions' => array(
		            'label' => 'Carrera',
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
			$modeloDependencia = CHtml::listData(Dependencia::model()->findAll($Criteria),"dependencia" ,"SelectDependencia");
			
			echo $form->typeAheadGroup(
	   			$model,
	    		'dependencia',
		   		array(
		   			'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
		       		'widgetOptions' => array(
		           		'options'=>array(
		               	'hint' => true,
		               	'highlight' => true,
		               	'minLength' => 1
	         			),
	            	'datasets'=>array('source'=>$modeloDependencia)
		        	),
		        	'labelOptions' => array(
		            'label' => 'Dependencia:',
		       		)
		   		)
			);

            echo $form->textFieldGroup(
                $model,
                'movilidad',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                    #'hint' => 'Movilidad estudiantil',
                    #'prepend' => 'Movilidad estudiantil'
                    'htmlOptions' => array(
						'empty'=>'Movilidad estudiantil',						
					),
                )

            );		
			
			
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

			$Criteria = new CDbCriteria();
			$Criteria -> order = "id_difusion ASC";
			echo $form->checkboxListGroup(
			$model,
			'difusion',
			array(
				'widgetOptions' => array(
					'data' => CHtml::listData(Difusion::model()->findAll($Criteria),"id_difusion" ,"SelectDifusion"),
					
				),
			)); 

            echo $form->textFieldGroup(
                $model,
                'comprobante',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                    #'hint' => 'Movilidad estudiantil',
                    #'prepend' => 'Movilidad estudiantil'
                    'htmlOptions' => array(
						'empty'=>'No. de comprobante',						
					),
                )

            );	

            echo $form->textFieldGroup(
                $model,
                'observacion',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                    #'hint' => 'Movilidad estudiantil',
                    #'prepend' => 'Movilidad estudiantil'
                    'htmlOptions' => array(
						'empty'=>'No. de comprobante',						
					),
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