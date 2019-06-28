<?php
/* @var $this DependenciaController */
/* @var $data Dependencia */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('dependencia')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->dependencia), array('view', 'id'=>$data->dependencia)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nomabrevia')); ?>:</b>
	<?php echo CHtml::encode($data->nomabrevia); ?>
	<br />


</div>