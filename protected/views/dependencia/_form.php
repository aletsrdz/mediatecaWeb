<?php
/* @var $this DependenciaController */
/* @var $model Dependencia */
/* @var $form CActiveForm */
?>

<div class="form">

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

		<legend>Crear Dependencia</legend>
 
	<?php 
		
		echo $form->textFieldGroup(
			$model,
			'dependencia',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);

		echo $form->textFieldGroup(
			$model,
			'nombre',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
			)
		);		

		echo $form->textFieldGroup(
			$model,
			'nomabrevia',
			array(
				'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
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