<?php
/* @var $this AprendienteController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Aprendientes',
);

$this->menu=array(
	array('label'=>'Create Aprendiente', 'url'=>array('create')),
	array('label'=>'Manage Aprendiente', 'url'=>array('admin')),
);
?>

<h1>Aprendientes</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
