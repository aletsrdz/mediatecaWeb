<?php
/* @var $this PresentadorController */
/* @var $data Presentador */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idpresentador')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idpresentador), array('view', 'id'=>$data->idpresentador)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('apaterno')); ?>:</b>
	<?php echo CHtml::encode($data->apaterno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('amaterno')); ?>:</b>
	<?php echo CHtml::encode($data->amaterno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('biodada')); ?>:</b>
	<?php echo CHtml::encode($data->biodada); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('foto')); ?>:</b>
	<?php echo CHtml::encode($data->foto); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
	<?php echo CHtml::encode($data->email); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('institucion')); ?>:</b>
	<?php echo CHtml::encode($data->institucion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('telefono')); ?>:</b>
	<?php echo CHtml::encode($data->telefono); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('modo')); ?>:</b>
	<?php echo CHtml::encode($data->modo); ?>
	<br />

	*/ ?>

</div>