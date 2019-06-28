<?php
/* @var $this AcervoImpresoController */
/* @var $model AcervoImpreso */

$this->breadcrumbs=array(
	'Ver Acervo Impreso'=>array('admin'),
	'Crear'=>array('create'),
);

$this->menu=array(
	array('label'=>'List AcervoImpreso', 'url'=>array('index')),
	array('label'=>'Manage AcervoImpreso', 'url'=>array('admin')),
);
?>

<?php
 $this->renderPartial('_form', array('model'=>$model, 'inventario'=>$inventario));
?>