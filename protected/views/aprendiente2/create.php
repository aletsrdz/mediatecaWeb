<?php
/* @var $this Aprendiente2Controller */
/* @var $model Aprendiente2 */

$this->breadcrumbs=array(
	'Aprendiente'=>array('admin'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Aprendiente2', 'url'=>array('index')),
	array('label'=>'Manage Aprendiente2', 'url'=>array('admin')),
);
?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>