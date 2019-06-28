<?php
/* @var $this AprendienteController */
/* @var $model Aprendiente */
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
		<?php echo $form->label($model,'apellidopaterno'); ?>
		<?php echo $form->textField($model,'apellidopaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apellidomaterno'); ?>
		<?php echo $form->textField($model,'apellidomaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombres'); ?>
		<?php echo $form->textField($model,'nombres'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'email'); ?>
		<?php echo $form->textField($model,'email'); ?>
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
		<?php echo $form->label($model,'dependencia'); ?>
		<?php echo $form->textField($model,'dependencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'carrera'); ?>
		<?php echo $form->textField($model,'carrera'); ?>
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
		<?php echo $form->label($model,'inscripcion'); ?>
		<?php echo $form->checkBox($model,'inscripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numinscripcion'); ?>
		<?php echo $form->textField($model,'numinscripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'movilidad'); ?>
		<?php echo $form->textField($model,'movilidad'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'difusion'); ?>
		<?php echo $form->textField($model,'difusion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'observacion'); ?>
		<?php echo $form->textField($model,'observacion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'comprobante'); ?>
		<?php echo $form->textField($model,'comprobante'); ?>
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