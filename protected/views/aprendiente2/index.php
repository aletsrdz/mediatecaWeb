<?php
/* @var $this Aprendiente2Controller */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Aprendiente',
);

$this->menu=array(
	array('label'=>'Create Aprendiente2', 'url'=>array('create')),
	array('label'=>'Manage Aprendiente2', 'url'=>array('admin')),
);
?>

<h1>Aprendiente2s</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
