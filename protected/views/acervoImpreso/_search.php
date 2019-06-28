<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idacervo'); ?>
		<?php echo $form->textField($model,'idacervo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'catalogo'); ?>
		<?php echo $form->textField($model,'catalogo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'material'); ?>
		<?php echo $form->textField($model,'material'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idioma'); ?>
		<?php echo $form->textField($model,'idioma'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'titulo'); ?>
		<?php echo $form->textArea($model,'titulo',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'autor_personal'); ?>
		<?php echo $form->textField($model,'autor_personal'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'autor_corporativo'); ?>
		<?php echo $form->textField($model,'autor_corporativo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'edicion'); ?>
		<?php echo $form->textField($model,'edicion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'isbn'); ?>
		<?php echo $form->textField($model,'isbn'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion_area'); ?>
		<?php echo $form->textField($model,'descripcion_area'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'serie'); ?>
		<?php echo $form->textField($model,'serie'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fondo'); ?>
		<?php echo $form->textField($model,'fondo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'acento'); ?>
		<?php echo $form->textField($model,'acento'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tipo_formato'); ?>
		<?php echo $form->textField($model,'tipo_formato'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->