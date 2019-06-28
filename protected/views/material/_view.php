<?php
/* @var $this MaterialController */
/* @var $data Material */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idmaterial')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idmaterial), array('view', 'id'=>$data->idmaterial)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />


</div>