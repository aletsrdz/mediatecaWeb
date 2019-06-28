<?php
/* @var $this Aprendiente2Controller */
/* @var $model Aprendiente2 */

$this->breadcrumbs=array(
	'Aprendiente'=>array('admin'),
	$model->idaprendiente=>array('view','id'=>$model->idaprendiente),
	'Update',
);

$this->menu=array(
	array('label'=>'List Aprendiente2', 'url'=>array('index')),
	array('label'=>'Create Aprendiente2', 'url'=>array('create')),
	array('label'=>'View Aprendiente2', 'url'=>array('view', 'id'=>$model->idaprendiente)),
	array('label'=>'Manage Aprendiente2', 'url'=>array('admin')),
);
?>

<h1>Update Aprendiente2 <?php echo $model->idaprendiente; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>