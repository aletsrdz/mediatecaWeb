<?php
/* @var $this AcervoController */
/* @var $model Acervo */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'acervo-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idacervo'); ?>
		<?php echo $form->textField($model,'idacervo'); ?>
		<?php echo $form->error($model,'idacervo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'material'); ?>
		<?php echo $form->textField($model,'material'); ?>
		<?php echo $form->error($model,'material'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'isbn'); ?>
		<?php echo $form->textField($model,'isbn'); ?>
		<?php echo $form->error($model,'isbn'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'issn'); ?>
		<?php echo $form->textField($model,'issn'); ?>
		<?php echo $form->error($model,'issn'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'idioma'); ?>
		<?php echo $form->textField($model,'idioma'); ?>
		<?php echo $form->error($model,'idioma'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'clave'); ?>
		<?php echo $form->textField($model,'clave'); ?>
		<?php echo $form->error($model,'clave'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'titulo'); ?>
		<?php echo $form->textField($model,'titulo'); ?>
		<?php echo $form->error($model,'titulo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'autor_personal'); ?>
		<?php echo $form->textField($model,'autor_personal'); ?>
		<?php echo $form->error($model,'autor_personal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'autor_corporativo'); ?>
		<?php echo $form->textField($model,'autor_corporativo'); ?>
		<?php echo $form->error($model,'autor_corporativo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'edicion'); ?>
		<?php echo $form->textField($model,'edicion'); ?>
		<?php echo $form->error($model,'edicion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pie_imp'); ?>
		<?php echo $form->textField($model,'pie_imp'); ?>
		<?php echo $form->error($model,'pie_imp'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'descripcion_fisica'); ?>
		<?php echo $form->textField($model,'descripcion_fisica'); ?>
		<?php echo $form->error($model,'descripcion_fisica'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'serie'); ?>
		<?php echo $form->textField($model,'serie'); ?>
		<?php echo $form->error($model,'serie'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nota'); ?>
		<?php echo $form->textField($model,'nota'); ?>
		<?php echo $form->error($model,'nota'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'descripcion_area'); ?>
		<?php echo $form->textField($model,'descripcion_area'); ?>
		<?php echo $form->error($model,'descripcion_area'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fondo'); ?>
		<?php echo $form->textField($model,'fondo'); ?>
		<?php echo $form->error($model,'fondo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'resumen'); ?>
		<?php echo $form->textField($model,'resumen'); ?>
		<?php echo $form->error($model,'resumen'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'acento'); ?>
		<?php echo $form->textField($model,'acento'); ?>
		<?php echo $form->error($model,'acento'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'referencia'); ?>
		<?php echo $form->textField($model,'referencia'); ?>
		<?php echo $form->error($model,'referencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dificultad'); ?>
		<?php echo $form->textField($model,'dificultad'); ?>
		<?php echo $form->error($model,'dificultad'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'cata'); ?>
		<?php echo $form->textField($model,'cata'); ?>
		<?php echo $form->error($model,'cata'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fechaingreso'); ?>
		<?php echo $form->textField($model,'fechaingreso'); ?>
		<?php echo $form->error($model,'fechaingreso'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'cons'); ?>
		<?php echo $form->textField($model,'cons'); ?>
		<?php echo $form->error($model,'cons'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->