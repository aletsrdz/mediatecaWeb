<?php
/* @var $this AsistenciaController */
/* @var $data Asistencia */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idaprendiente')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idaprendiente), array('view', 'id'=>$data->idaprendiente)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('horaentrada')); ?>:</b>
	<?php echo CHtml::encode($data->horaentrada); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('horasalida')); ?>:</b>
	<?php echo CHtml::encode($data->horasalida); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('estatus')); ?>:</b>
	<?php echo CHtml::encode($data->estatus); ?>
	<br />


</div>