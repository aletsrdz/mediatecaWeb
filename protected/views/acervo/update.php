<?php
/* @var $this AcervoController */
/* @var $model Acervo */

$this->breadcrumbs=array(
	'Acervos'=>array('index'),
	$model->idacervo=>array('view','id'=>$model->idacervo),
	'Update',
);

$this->menu=array(
	array('label'=>'List Acervo', 'url'=>array('index')),
	array('label'=>'Create Acervo', 'url'=>array('create')),
	array('label'=>'View Acervo', 'url'=>array('view', 'id'=>$model->idacervo)),
	array('label'=>'Manage Acervo', 'url'=>array('admin')),
);
?>

<h1>Update Acervo <?php echo $model->idacervo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>