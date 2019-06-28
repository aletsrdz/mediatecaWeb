<?php
/* @var $this AcervoController */
/* @var $data Acervo */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idacervo')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idacervo), array('view', 'id'=>$data->idacervo)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('material')); ?>:</b>
	<?php echo CHtml::encode($data->material); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('isbn')); ?>:</b>
	<?php echo CHtml::encode($data->isbn); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('issn')); ?>:</b>
	<?php echo CHtml::encode($data->issn); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idioma')); ?>:</b>
	<?php echo CHtml::encode($data->idioma); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('clave')); ?>:</b>
	<?php echo CHtml::encode($data->clave); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('autor_personal')); ?>:</b>
	<?php echo CHtml::encode($data->autor_personal); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('autor_corporativo')); ?>:</b>
	<?php echo CHtml::encode($data->autor_corporativo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('edicion')); ?>:</b>
	<?php echo CHtml::encode($data->edicion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pie_imp')); ?>:</b>
	<?php echo CHtml::encode($data->pie_imp); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion_fisica')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion_fisica); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('serie')); ?>:</b>
	<?php echo CHtml::encode($data->serie); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nota')); ?>:</b>
	<?php echo CHtml::encode($data->nota); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion_area')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion_area); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fondo')); ?>:</b>
	<?php echo CHtml::encode($data->fondo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('resumen')); ?>:</b>
	<?php echo CHtml::encode($data->resumen); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('acento')); ?>:</b>
	<?php echo CHtml::encode($data->acento); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('referencia')); ?>:</b>
	<?php echo CHtml::encode($data->referencia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dificultad')); ?>:</b>
	<?php echo CHtml::encode($data->dificultad); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cata')); ?>:</b>
	<?php echo CHtml::encode($data->cata); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fechaingreso')); ?>:</b>
	<?php echo CHtml::encode($data->fechaingreso); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cons')); ?>:</b>
	<?php echo CHtml::encode($data->cons); ?>
	<br />

	*/ ?>

</div>