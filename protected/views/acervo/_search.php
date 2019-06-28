<?php
/* @var $this AcervoController */
/* @var $model Acervo */
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
		<?php echo $form->label($model,'material'); ?>
		<?php echo $form->textField($model,'material'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'isbn'); ?>
		<?php echo $form->textField($model,'isbn'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'issn'); ?>
		<?php echo $form->textField($model,'issn'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idioma'); ?>
		<?php echo $form->textField($model,'idioma'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'clave'); ?>
		<?php echo $form->textField($model,'clave'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'titulo'); ?>
		<?php echo $form->textField($model,'titulo'); ?>
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
		<?php echo $form->label($model,'pie_imp'); ?>
		<?php echo $form->textField($model,'pie_imp'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion_fisica'); ?>
		<?php echo $form->textField($model,'descripcion_fisica'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'serie'); ?>
		<?php echo $form->textField($model,'serie'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nota'); ?>
		<?php echo $form->textField($model,'nota'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion_area'); ?>
		<?php echo $form->textField($model,'descripcion_area'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fondo'); ?>
		<?php echo $form->textField($model,'fondo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'resumen'); ?>
		<?php echo $form->textField($model,'resumen'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'acento'); ?>
		<?php echo $form->textField($model,'acento'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'referencia'); ?>
		<?php echo $form->textField($model,'referencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dificultad'); ?>
		<?php echo $form->textField($model,'dificultad'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cata'); ?>
		<?php echo $form->textField($model,'cata'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechaingreso'); ?>
		<?php echo $form->textField($model,'fechaingreso'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cons'); ?>
		<?php echo $form->textField($model,'cons'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->