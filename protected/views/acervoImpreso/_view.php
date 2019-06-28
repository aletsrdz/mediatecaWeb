<?php
/* @var $this AcervoImpresoController */
/* @var $data AcervoImpreso */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idacervo), array('view', 'id'=>$data->idacervo)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('catalogo')); ?>:</b>
	<?php echo CHtml::encode($data->catalogo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('material')); ?>:</b>
	<?php echo CHtml::encode($data->material); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idioma')); ?>:</b>
	<?php echo CHtml::encode($data->idioma); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('autor_personal')); ?>:</b>
	<?php echo CHtml::encode($data->autor_personal); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('autor_corporativo')); ?>:</b>
	<?php echo CHtml::encode($data->autor_corporativo); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('edicion')); ?>:</b>
	<?php echo CHtml::encode($data->edicion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('isbn')); ?>:</b>
	<?php echo CHtml::encode($data->isbn); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion_area')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion_area); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('serie')); ?>:</b>
	<?php echo CHtml::encode($data->serie); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fondo')); ?>:</b>
	<?php echo CHtml::encode($data->fondo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('acento')); ?>:</b>
	<?php echo CHtml::encode($data->acento); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tipo_formato')); ?>:</b>
	<?php echo CHtml::encode($data->tipo_formato); ?>
	<br />

	*/ ?>

</div>