<?php
/* @var $this AcervoController */
/* @var $model Acervo */

$this->breadcrumbs=array(
	'Acervos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Acervo', 'url'=>array('index')),
	array('label'=>'Manage Acervo', 'url'=>array('admin')),
);
?>

<h1>Create Acervo</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>