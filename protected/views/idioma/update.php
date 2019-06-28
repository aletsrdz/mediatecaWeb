<?php
/* @var $this IdiomaController */
/* @var $model Idioma */

$this->breadcrumbs=array(
	'Idiomas'=>array('index'),
	$model->ididioma=>array('view','id'=>$model->ididioma),
	'Editar',
);

$this->menu=array(
	array('label'=>'List Idioma', 'url'=>array('index')),
	array('label'=>'Create Idioma', 'url'=>array('create')),
	array('label'=>'View Idioma', 'url'=>array('view', 'id'=>$model->ididioma)),
	array('label'=>'Manage Idioma', 'url'=>array('admin')),
);
?>

<h1>Actualizar Idioma <?php echo $model->nombre; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>