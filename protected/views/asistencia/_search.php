<?php
/* @var $this AsistenciaController */
/* @var $model Asistencia */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idaprendiente'); ?>
		<?php echo $form->textField($model,'idaprendiente'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'horaentrada'); ?>
		<?php echo $form->textField($model,'horaentrada'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'horasalida'); ?>
		<?php echo $form->textField($model,'horasalida'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estatus'); ?>
		<?php echo $form->textField($model,'estatus'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->