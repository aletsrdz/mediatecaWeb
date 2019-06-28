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

		<legend>Editar Ejemplar</legend>
 
	<?php 

		 
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