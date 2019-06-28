<?php
/* @var $this SalidaController */
/*
$this->breadcrumbs=array(
	'Salida',
);
*/



$this->widget(
    'booster.widgets.TbButton',
    array(
        'label' => 'Click me',
        'context' => 'primary',
        'htmlOptions' => array(
            'onclick' => 'js:bootbox.alert("Hello, World!")'
        ),
    )
);


$this->widget(
    'booster.widgets.TbButton',
    array(
        'label' => 'Prompt Modal',
        'context' => 'success',
        'htmlOptions' => array(
            'style' => 'margin-left:3px',
            'onclick' => 'js:bootbox.prompt("Número de credencial?", function(result){console.log("Result: "+result);})'
        ),
    )
);





?>

   Codigo de barras:
  <input type="text" name="valor" id="codigo" value=""/>
  <br/>