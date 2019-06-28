<?php
/* @var $this CarreraController */
/* @var $data Carrera */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idcarrera')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idcarrera), array('view', 'id'=>$data->idcarrera)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombrecarrera')); ?>:</b>
	<?php echo CHtml::encode($data->nombrecarrera); ?>
	<br />


</div>