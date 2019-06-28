<?php
/* @var $this AprendienteController */
/* @var $data Aprendiente */
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

	<b><?php echo CHtml::encode($data->getAttributeLabel('apellidopaterno')); ?>:</b>
	<?php echo CHtml::encode($data->apellidopaterno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('apellidomaterno')); ?>:</b>
	<?php echo CHtml::encode($data->apellidomaterno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombres')); ?>:</b>
	<?php echo CHtml::encode($data->nombres); ?>
	<br />

	 
	<b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
	<?php echo CHtml::encode($data->email); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('categoria')); ?>:</b>
	<?php echo CHtml::encode($data->categoria); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idioma')); ?>:</b>
	<?php echo CHtml::encode($data->idioma); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dependencia')); ?>:</b>
	<?php echo CHtml::encode($data->dependencia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('carrera')); ?>:</b>
	<?php echo CHtml::encode($data->carrera); ?>
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

	<b><?php echo CHtml::encode($data->getAttributeLabel('movilidad')); ?>:</b>
	<?php echo CHtml::encode($data->movilidad); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('difusion')); ?>:</b>
	<?php echo CHtml::encode($data->difusion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('observacion')); ?>:</b>
	<?php echo CHtml::encode($data->observacion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comprobante')); ?>:</b>
	<?php echo CHtml::encode($data->comprobante); ?>
	<br />

	 ?>

</div>