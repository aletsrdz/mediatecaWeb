<?php
/* @var $this AprendienteController */
/* @var $model Aprendiente */

$this->breadcrumbs=array(
	'Consulta'=>array('admin'),
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



<?php 

$idioma = CHtml::encode($model->idioma);
$Criteria = new CDbCriteria();
$Criteria->select = "nombre";
$Criteria->condition = "ididioma=$idioma";
$languaje = Idioma::model()->find($Criteria);

if(isset($languaje)){
	$model->idioma = $languaje->nombre;
}else{
	$model->idioma;
}

$cat = CHtml::encode($model->categoria);
$Criteria = new CDbCriteria();
$Criteria ->select = "nombre";
$Criteria ->condition = "idcategoria=$cat";
$categoria = Categoria::model()->find($Criteria);
$model->categoria = $categoria->nombre;



$carr = $model->carrera;
if(isset($carr)){
	$CriteriaCarrera = new CDbCriteria();
	$CriteriaCarrera ->select = "nombrecarrera";
	$CriteriaCarrera ->condition = "idcarrera=".$carr;
	$carrera = Carrera::model()->find($CriteriaCarrera);
	if(isset($carrera))
	{
		$model->carrera = $carrera->nombrecarrera;
	}	
	else{
		$model->carrera = "SIN ASIGNAR DOS";
	}
}	
else{
		$model->carrera = "SIN ASIGNAR";
	}


$prec = $model->dependencia;
$Criteria = new CDbCriteria();
$Criteria ->select = "nomabrevia";
$Criteria ->condition = "dependencia=".$prec;
$dependencia = Dependencia::model()->find($Criteria);
if(isset($dependencia)){
	$model->dependencia = $dependencia->nomabrevia;
}else{
	$model->dependencia;
}	

$nombreCompleto = $model->nombres." ".$model->apellidopaterno." ".$model->apellidomaterno;
?>


<?php $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Imprimir Credencial',
        'context' => 'primary',                
        'url' => Yii::app()->createUrl('aprendiente/generarCredencial', array("nombres"=>$nombreCompleto, "idioma"=>$languaje->nombre, "id"=>$model->idaprendiente)),                
        #'url' => Yii::app()->createUrl('aprendiente2/generarCredencial', $arreglo),        
        'htmlOptions' => array(        	
        	'target' => '_blank',
        	'onclick' => 'js:bootbox.alert("Se ha generado la credencial!")',          	
        )	

    )
); echo ' ';
?>

<?php
#if($dependencia->nomabrevia == null) $model->dependencia = "Dependencia sin definir";
#if($dependencia->nomabrevia =! null) $model->dependencia = $dependencia->nomabrevia;
#var_dump($dependencia);
#Yii::app()->end();

$s = (int)$model->sexo;
if ($s==0)  $model->sexo = "Masculino";
if ($s==1)  $model->sexo = "Femenino";

$s1 = (int)$model->inscripcion;
if ($s1==0)  $model->inscripcion = "Caducó su inscripción";
if ($s1==1)  $model->inscripcion = "Inscripción Activa";

$this->widget('zii.widgets.CDetailView', array(
	#'data'=>$model,
	'data'=>array(
				'idaprendiente'=>CHtml::encode($model->idaprendiente),
				'fecharegistro'=>CHtml::encode($model->fecharegistro),
				'fechainscripcion'=>CHtml::encode($model->fechainscripcion),
				'cta_rfc'=>CHtml::encode($model->cta_rfc), 
				'nombres'=>CHtml::encode($model->nombres).' '.CHtml::encode($model->apellidopaterno).' '.CHtml::encode($model->apellidomaterno),
				'categoria'=>CHtml::encode($model->categoria), 
				'idioma'=>CHtml::encode($model->idioma),				
				'dependencia'=>CHtml::encode($model->dependencia),
				'carrera'=>CHtml::encode($model->carrera),
				'fechanacimiento'=>CHtml::encode($model->fechanacimiento),
				'sexo'=>CHtml::encode($model->sexo),
				'inscripcion'=>CHtml::encode($model->inscripcion),
				'numinscripcion'=>CHtml::encode($model->numinscripcion)
			),	
				
	
	'attributes'=>array(
		'idaprendiente',
		'fecharegistro',
		'fechainscripcion',
		'cta_rfc',
		'nombres',
		'categoria',
		'idioma',
		'dependencia',
		'carrera',
		'fechanacimiento',
		'sexo',
		'inscripcion',
		'numinscripcion',
	),
)); 


/* #Para convertir un objeto a un arreglo y poder ver el arreglo en pantalla
 $array = (array)$model;
 var_dump($array);
 Yii::app()->end();
*/

?>
