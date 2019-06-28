<?php
/* @var $this AprendienteController */
/* @var $model Aprendiente */

$this->breadcrumbs=array(
	'Aprendiente'=>array('admin'),
	$model->idaprendiente,
);

$this->menu=array(
	array('label'=>'List Aprendiente', 'url'=>array('index')),
	array('label'=>'Create Aprendiente', 'url'=>array('create')),
	array('label'=>'Update Aprendiente', 'url'=>array('update', 'id'=>$model->idaprendiente)),
	array('label'=>'Delete Aprendiente', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idaprendiente),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Aprendiente', 'url'=>array('admin')),
);
?>


<h2>Generar credencial para el  No. Aprendiente: <?php echo $model->idaprendiente; ?></h2>

<?php 
$idioma = CHtml::encode($model->idioma);
$Criteria = new CDbCriteria();
$Criteria->select = "nombre";
$Criteria->condition = "ididioma=$idioma";
$languaje = Idioma::model()->find($Criteria);
$model->idioma = $languaje->nombre;

$cat = $model->categoria;
$Criteria = new CDbCriteria();
$Criteria ->select = "nombre";
$Criteria ->condition = "idcategoria=$cat";
$categoria = Categoria::model()->find($Criteria);
$model->categoria = $categoria->nombre;

$prec = $model->dependencia;
$Criteria = new CDbCriteria();
$Criteria ->select = "nomabrevia";
$Criteria ->condition = "dependencia=$prec";
$dependencia = Dependencia::model()->find($Criteria);

#if($procedencia->nomabrevia == null) $model->procedencia = "Dependencia sin definir";
#if($procedencia->nomabrevia =! null) $model->procedencia = $procedencia->nomabrevia;
#var_dump($procedencia);
#Yii::app()->end();

$s = (int)$model->sexo;
if ($s==0)  $model->sexo = "Masculino";
if ($s==1)  $model->sexo = "Femenino";



$this->widget('zii.widgets.CDetailView', array(
	#'data'=>$model,
	'data'=>array(
				#'idaprendiente'=>CHtml::encode($model->idaprendiente),
				#'fecharegistro'=>CHtml::encode($model->fecharegistro),
				#'fechainscripcion'=>CHtml::encode($model->fechainscripcion),
				'cta_rfc'=>CHtml::encode($model->cta_rfc), 
				'apellidopaterno'=>CHtml::encode($model->apellidopaterno), 
				'apellidomaterno'=>CHtml::encode($model->apellidopaterno), 
				'nombres'=>CHtml::encode($model->nombres),
				'categoria'=>CHtml::encode($model->categoria), 
				'idioma'=>CHtml::encode($model->idioma),				
				'dependencia'=>CHtml::encode($model->dependencia),
				'fechanacimiento'=>CHtml::encode($model->fechanacimiento),
				'sexo'=>CHtml::encode($model->sexo),
				#'inscripcion'=>CHtml::encode($model->inscripcion),
				#'numinscripcion'=>CHtml::encode($model->numinscripcion)
			),	
				
	
	'attributes'=>array(
		#'idaprendiente',
		#'fecharegistro',
		#'fechainscripcion',
		'cta_rfc',
		'nombres',
		'categoria',
		'idioma',
		'dependencia',
		'fechanacimiento',
		'sexo',
		#'inscripcion',
		#'numinscripcion',
	),
)); 


/* #Para convertir un objeto a un arreglo y poder ver el arreglo en pantalla
 $array = (array)$model;
 var_dump($array);
 Yii::app()->end();
*/

?>

<?php

	$arreglo=array("aprendiente"=>array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma),"aprendiente"=>array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma), "aprendiente3"=>array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma), "aprendiente4"=>array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma));

		$arr=array(
			 array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma),
			 array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma), 
			 array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma),
			 array("id"=>$model->idaprendiente, "nombres"=>$model->nombres, "idioma"=>$model->idioma)
			 );
	/*	
	echo "<pre>";
	print_r($arreglo);
	echo "</pre>";

	echo "<pre>";
	print_r($arr);
	echo "</pre>";
    */
?>

<?php $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Imprimir Credencial',
        'context' => 'primary',                
        'url' => Yii::app()->createUrl('aprendiente/generarCredencial', array("nombres"=>$model->nombres.' '.$model->apellidopaterno.' '.$model->apellidomaterno, "idioma"=>$model->idioma, "id"=>$model->idaprendiente)),                
        #'url' => Yii::app()->createUrl('aprendiente2/generarCredencial', $arreglo),        
        'htmlOptions' => array(        	
        	'target' => '_blank',
        	'onclick' => 'js:bootbox.alert("Se ha generado la credencial!")',          	
        )	

    )
); echo ' ';
?>