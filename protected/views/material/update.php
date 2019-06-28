<?php
/* @var $this MaterialController */
/* @var $model Material */

$this->breadcrumbs=array(
	'Materiales'=>array('index'),
	$model->idmaterial=>array('view','id'=>$model->idmaterial),
	'Editar',
);

$this->menu=array(
	array('label'=>'List Material', 'url'=>array('index')),
	array('label'=>'Create Material', 'url'=>array('create')),
	array('label'=>'View Material', 'url'=>array('view', 'id'=>$model->idmaterial)),
	array('label'=>'Manage Material', 'url'=>array('admin')),
);
?>

<h1>Update Material <?php echo $model->idmaterial; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>