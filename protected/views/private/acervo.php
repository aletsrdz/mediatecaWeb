<?php
/* @var $this PrivateController */

$this->breadcrumbs=array(
	'private'=>array('index')
);
?>

<h1>Escoge el tipo de acervo</h1>
<br>

<div class='btn_acervo' style='text-align:center; padding: 30px;'>
<?php

$this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Crear acervo digital',
        'context' => 'primary',        
        'url' => Yii::app()->createUrl("acervoDigital/create"),        
    )
); echo ' ';

?>
<?php
 $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Crear acervo impreso',
        'context' => 'primary',        
        'url' => Yii::app()->createUrl("acervoImpreso/create"),        
    )
); echo ' ';
 
?>
</div>

