<?php
/* @var $this CatalogoController */
/* @var $model Catalogo */

$this->breadcrumbs=array(
	'Catalogos'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Catalogo', 'url'=>array('index')),
	array('label'=>'Create Catalogo', 'url'=>array('create')),
	array('label'=>'View Catalogo', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Catalogo', 'url'=>array('admin')),
);
?>

<h1>Update Catalogo <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>