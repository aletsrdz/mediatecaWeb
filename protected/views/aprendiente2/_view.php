<?php
/* @var $this Aprendiente2Controller */
/* @var $data Aprendiente2 */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idaprendiente')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idaprendiente), array('view', 'id'=>$data->idaprendiente)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecharegistro')); ?>:</b>
	<?php echo CHtml::encode($data->fecharegistro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fechainscripcion')); ?>:</b>
	<?php echo CHtml::encode($data->fechainscripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cta_rfc')); ?>:</b>
	<?php echo CHtml::encode($data->cta_rfc); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('categoria')); ?>:</b>
	<?php echo CHtml::encode($data->categoria); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idioma')); ?>:</b>
	<?php echo CHtml::encode($data->idioma); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('procedencia')); ?>:</b>
	<?php echo CHtml::encode($data->procedencia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fechanacimiento')); ?>:</b>
	<?php echo CHtml::encode($data->fechanacimiento); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sexo')); ?>:</b>
	<?php echo CHtml::encode($data->sexo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('inscripcion')); ?>:</b>
	<?php echo CHtml::encode($data->inscripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numinscripcion')); ?>:</b>
	<?php echo CHtml::encode($data->numinscripcion); ?>
	<br />

	*/ ?>

</div>