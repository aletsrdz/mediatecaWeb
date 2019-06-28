<?php
/* @var $this AcervoImpresoController */
/* @var $inventario InventarioForm */
/* @var $form CActiveForm */
?>

<div class="form">

<?php
	/*
	 $form=$this->beginWidget('CActiveForm', array(
	'id'=>'inventario-acervo-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>false,
)); 

*/
?>

<?php /** @var TbActiveForm $form */
    $form = $this->beginWidget(
	'booster.widgets.TbActiveForm',	
	array(
		'id' => 'InventarioForm',//horizontalForm
		'type' => 'horizontal',
	)
); ?>

	<fieldset>

		<legend>Agregar otro Acervo Impreso</legend>
 
	<?php 

		
		echo $form->textFieldGroup(
			$inventario,
			'idacervo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
				'widgetOptions' => array(
					'htmlOptions'=>array('readonly'=>true),
				)	
			)
		);
		/*

		echo $form->textFieldGroup(
			$inventario,
			'idacervo_anterior',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
				'widgetOptions' => array(
					'htmlOptions'=>array('readonly'=>true),
				)	
			)
		);		 

		*/
		/*
		echo $form->dropDownListGroup(
			$inventario,
			'tipoacervo',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),
				'widgetOptions' => array(
					'data'=>array('1'=>'Acervo Impreso','0'=>'Acervo Digital'),
					'htmlOptions' => array(
						'readonly'=>true,
						'empty'=>'Seleccione el tipo de acervo',
						//'multiple' => true
					),                    
				)
			)				

		);
		
		echo $form->textFieldGroup(
			$inventario,
			'fecha_ingreso',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);
		 			
	*/
		echo $form->textFieldGroup(
			$inventario,
			'catalogador',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
				'widgetOptions' => array(
					'htmlOptions'=>array('readonly'=>true),
				)	
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
			$inventario,
			'notas',
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

		echo $form->dropDownListGroup(
			$inventario,
			'dificultad',
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
				'label' => 'Guardar'
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