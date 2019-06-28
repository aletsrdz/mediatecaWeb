<?php
/* @var $this PresentadorController */
/* @var $model Presentador */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'presentador-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idpresentador'); ?>
		<?php echo $form->textField($model,'idpresentador'); ?>
		<?php echo $form->error($model,'idpresentador'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apaterno'); ?>
		<?php echo $form->textField($model,'apaterno'); ?>
		<?php echo $form->error($model,'apaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'amaterno'); ?>
		<?php echo $form->textField($model,'amaterno'); ?>
		<?php echo $form->error($model,'amaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre'); ?>
		<?php echo $form->error($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'biodada'); ?>
		<?php echo $form->textField($model,'biodada'); ?>
		<?php echo $form->error($model,'biodada'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'foto'); ?>
		<?php echo $form->textField($model,'foto'); ?>
		<?php echo $form->error($model,'foto'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email'); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'institucion'); ?>
		<?php echo $form->textField($model,'institucion'); ?>
		<?php echo $form->error($model,'institucion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'telefono'); ?>
		<?php echo $form->textField($model,'telefono'); ?>
		<?php echo $form->error($model,'telefono'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'modo'); ?>
		<?php echo $form->textField($model,'modo'); ?>
		<?php echo $form->error($model,'modo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->