<?php
/* @var $this Aprendiente2Controller */
/* @var $model Aprendiente2 */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>
<!--
	<div class="row">
		<?php echo $form->label($model,'idaprendiente'); ?>
		<?php echo $form->textField($model,'idaprendiente'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fecharegistro'); ?>
		<?php echo $form->textField($model,'fecharegistro'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechainscripcion'); ?>
		<?php echo $form->textField($model,'fechainscripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cta_rfc'); ?>
		<?php echo $form->textField($model,'cta_rfc'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'categoria'); ?>
		<?php echo $form->textField($model,'categoria'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idioma'); ?>
		<?php echo $form->textField($model,'idioma'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'procedencia'); ?>
		<?php echo $form->textField($model,'procedencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechanacimiento'); ?>
		<?php echo $form->textField($model,'fechanacimiento'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'sexo'); ?>
		<?php echo $form->textField($model,'sexo'); ?>
	</div>
	<div class="row">
		<?php echo $form->label($model,'numinscripcion'); ?>
		<?php echo $form->textField($model,'numinscripcion'); ?>
	</div>


-->

	<div class="row">


		<?php echo $form->radioButtonList($model,'inscripcion', array('True'=> 'Inscritos','False'=>'No inscritos')); 
				
		?>

	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Ver'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->