<?php
/* @var $this AcervoDigitalController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Acervo Digitals',
);

$this->menu=array(
	array('label'=>'Create AcervoDigital', 'url'=>array('create')),
	array('label'=>'Manage AcervoDigital', 'url'=>array('admin')),
);
?>

<h1>Acervo Digitals</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
