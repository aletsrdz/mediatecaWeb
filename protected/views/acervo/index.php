<?php
/* @var $this AcervoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Acervos',
);

$this->menu=array(
	array('label'=>'Create Acervo', 'url'=>array('create')),
	array('label'=>'Manage Acervo', 'url'=>array('admin')),
);
?>

<h1>Acervos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
