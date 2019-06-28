<?php
/* @var $this PresentadorController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Presentadors',
);

$this->menu=array(
	array('label'=>'Create Presentador', 'url'=>array('create')),
	array('label'=>'Manage Presentador', 'url'=>array('admin')),
);
?>

<h1>Presentadors</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
