<?php
/* @var $this ActividadController */
/* @var $data Actividad */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idactividad')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idactividad), array('view', 'id'=>$data->idactividad)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dia')); ?>:</b>
	<?php echo CHtml::encode($data->dia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('horario')); ?>:</b>
	<?php echo CHtml::encode($data->horario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lugar')); ?>:</b>
	<?php echo CHtml::encode($data->lugar); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tema')); ?>:</b>
	<?php echo CHtml::encode($data->tema); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('modalidad')); ?>:</b>
	<?php echo CHtml::encode($data->modalidad); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('presentador')); ?>:</b>
	<?php echo CHtml::encode($data->presentador); ?>
	<br />

	*/ ?>

</div>