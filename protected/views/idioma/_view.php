<?php
/* @var $this IdiomaController */
/* @var $data Idioma */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ididioma')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ididioma), array('view', 'id'=>$data->ididioma)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />


</div>