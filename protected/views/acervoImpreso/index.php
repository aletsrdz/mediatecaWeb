<?php
/* @var $this AcervoImpresoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Acervo Impresos',
);

$this->menu=array(
	array('label'=>'Create AcervoImpreso', 'url'=>array('create')),
	array('label'=>'Manage AcervoImpreso', 'url'=>array('admin')),
);
?>

<h1>Acervo Impresos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
