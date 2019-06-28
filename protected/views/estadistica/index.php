<?php
/* @var $this EstadisticaController */

$this->breadcrumbs=array(
	'Estadistica'=>array('index'),
);
?>

<?php /** @var TbActiveForm $form */
    $form = $this->beginWidget(
	'booster.widgets.TbActiveForm',	
	array(
		'id' => 'horizontalForm',
		'type' => 'horizontal',
	)
); ?>
 
	<fieldset>

		<legend>Formulario de Estadisticas</legend>
 
		<?php 
  

      		echo $form->dropDownListGroup(
                $model,
                'rubro',
                array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
	   			'widgetOptions' => array(
				
					'data' => array('Inscripciones', 'Reinscripciones', 'Asistencia de Usuarios'),	
					'htmlOptions' => array(
						'empty'=>'Seleccione tipo de usuario',
						//'multiple' => true
					),
				)
			)
            );          


			$Criteria = new CDbCriteria();
			$Criteria -> order = "idcategoria ASC";
			$modeloCategoria = CHtml::listData(Categoria::model()->findAll($Criteria),"idcategoria" ,"SelectCategoria");
			/*
			echo $form->typeAheadGroup(
	   		$model,
	    	'tipoUsuario',
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
		            'label' => 'Tipo Usuario:',
		       		)
		   		)
			);
			*/
			echo $form->dropDownListGroup(
                $model,
                'tipoUsuario',
                array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
	   			'widgetOptions' => array(
				
					'data' => CHtml::listData(Categoria::model()->findAll($Criteria),"idcategoria" ,"SelectCategoria"),	   				
					'htmlOptions' => array(
						'empty'=>'Seleccione tipo de usuario',
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

            $CriteriaD = new CDbCriteria();
			$CriteriaD -> order = "dependencia ASC";
			$modeloDependencia = CHtml::listData(Dependencia::model()->findAll($CriteriaD),"dependencia" ,"SelectDependencia");
			echo $form->typeAheadGroup(
	   			$model,
	    		'procedencia',
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
			
			/*
			echo $form->dateRangeRow($model, 'periodoInicio',
        		array('hint'=>'Click inside! An even a date range field!.',
        		'prepend'=>'<i class="icon-calendar">>/i>',
        		'options' => array('callback'=>'js:function(start, end){console.log(start.toString("MMMM d, yyyy") + " - " + end.toString("MMMM d, yyyy"));}')
        	)); 
			*/

			echo $form->datePickerGroup(
                $model,
                'periodoInicio',
                
                array(                    
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),  
					'widgetOptions'=>array(	


						'options' => array(
								'language' => 'es',
								'format' => 'yyyy-mm-dd',
								'viewformat' => 'yyyy-mm-dd',
						),
					),
                    'hint' => 'Fecha Inicial',
                    'prepend' => '<i class="glyphicon glyphicon-calendar"></i>'
                )
            ); 		

            echo $form->datePickerGroup(
            $model,
            'periodoFinal',
                
                array(                    
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),  
					'widgetOptions'=>array(	


						'options' => array(
								'language' => 'es',
								'format' => 'yyyy-mm-dd',
								'viewformat' => 'yyyy-mm-dd',
						),
					),
                    'hint' => 'Fecha Final',
                    'prepend' => '<i class="glyphicon glyphicon-calendar"></i>'
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