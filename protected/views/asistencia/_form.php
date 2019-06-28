<?php
/* @var $this AsistenciaController */
/* @var $model Asistencia */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'asistencia-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idaprendiente'); ?>
		<?php echo $form->textField($model,'idaprendiente'); ?>
		<?php echo $form->error($model,'idaprendiente'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'horaentrada'); ?>
		<?php echo $form->textField($model,'horaentrada'); ?>
		<?php echo $form->error($model,'horaentrada'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'horasalida'); ?>
		<?php echo $form->textField($model,'horasalida'); ?>
		<?php echo $form->error($model,'horasalida'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estatus'); ?>
		<?php echo $form->textField($model,'estatus'); ?>
		<?php echo $form->error($model,'estatus'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->