<?php
/* @var $this PresentadorController */
/* @var $model Presentador */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idpresentador'); ?>
		<?php echo $form->textField($model,'idpresentador'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apaterno'); ?>
		<?php echo $form->textField($model,'apaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'amaterno'); ?>
		<?php echo $form->textField($model,'amaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'biodada'); ?>
		<?php echo $form->textField($model,'biodada'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'foto'); ?>
		<?php echo $form->textField($model,'foto'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'email'); ?>
		<?php echo $form->textField($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'institucion'); ?>
		<?php echo $form->textField($model,'institucion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'telefono'); ?>
		<?php echo $form->textField($model,'telefono'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'modo'); ?>
		<?php echo $form->textField($model,'modo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->