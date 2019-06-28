<?php
Yii::app()->clientScript->registerScript('search', "

$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#acervo-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<p>
SITE/invetario/inventario
</p>


<?php echo CHtml::link('','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:block;">
<?php $this->renderPartial('inventario/_search',array(
	'model'=>$model,
)); ?>