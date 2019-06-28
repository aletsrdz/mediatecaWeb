<?php
/* @var $this EntradaController */
/* @var $model Entrada */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'entrada-registro-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idaprendiente'); ?>
		<?php echo $form->textField($model,'idaprendiente'); ?>
		<?php echo $form->error($model,'idaprendiente'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Registrar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<div id="errorInfo"></div>

<?php

/** @var TbActiveForm $form */
/*
$form = $this->beginWidget(
    'booster.widgets.TbActiveForm',
    array(
        'id' => 'entrada-registro-form',
        'type' => 'inline',
        'enableAjaxValidation'=>true, 
        'htmlOptions' => array('class' => 'well'),
    )
);
 
echo $form->textFieldGroup($model, 'idaprendiente');

$this->widget(
    'booster.widgets.TbButton',
    array('buttonType' => 'submit', 'label' => 'Registrar')
);
 
$this->endWidget();
unset($form);

?>
