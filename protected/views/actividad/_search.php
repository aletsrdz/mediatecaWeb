<?php
/* @var $this ActividadController */
/* @var $model Actividad */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idactividad'); ?>
		<?php echo $form->textField($model,'idactividad'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dia'); ?>
		<?php echo $form->textField($model,'dia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'horario'); ?>
		<?php echo $form->textField($model,'horario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'lugar'); ?>
		<?php echo $form->textField($model,'lugar'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tema'); ?>
		<?php echo $form->textField($model,'tema'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'modalidad'); ?>
		<?php echo $form->textField($model,'modalidad'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'titulo'); ?>
		<?php echo $form->textField($model,'titulo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'presentador'); ?>
		<?php echo $form->textField($model,'presentador'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->