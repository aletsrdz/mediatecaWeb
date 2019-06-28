<?php
/* @var $this Aprendiente2Controller */
/* @var $model Aprendiente2 */

$this->breadcrumbs=array(
	'Aprendiente'=>array('admin'),
	$model->idaprendiente,
);


?>


<h2>Generar credencial para los  Aprendientes: <?php echo $model->idaprendiente; ?></h2>

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

$prec = $model->procedencia;
$Criteria = new CDbCriteria();
$Criteria ->select = "nomabrevia";
$Criteria ->condition = "dependencia=$prec";
$procedencia = Dependencia::model()->find($Criteria);

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
				'nombre'=>CHtml::encode($model->nombre),
				'categoria'=>CHtml::encode($model->categoria), 
				'idioma'=>CHtml::encode($model->idioma),				
				'procedencia'=>CHtml::encode($model->procedencia),
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
		'nombre',
		'categoria',
		'idioma',
		'procedencia',
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

<br>
<!--
<?php echo CHtml::link('Código de barras - PDF', array('generarCredencial', "nombre"=>$model->nombre, "idioma"=>$model->idioma, "id"=>$model->idaprendiente), array('target'=>'_blank'));?>
-->
</br>
<?php $this->widget(
    'booster.widgets.TbButton',
    array(
    	'buttonType' =>'link',
        'label' => 'Imprimir Credencial',
        'context' => 'primary',
        #'url' => 'array(generarCredencial, "nombre"=>$model->nombre, "idioma"=>$model->idioma, "id"=>$model->idaprendiente),',
        'url' => Yii::app()->createUrl('aprendiente2/generarCredencial', array("nombre"=>$model->nombre, "idioma"=>$model->idioma, "id"=>$model->idaprendiente)),        
        'htmlOptions' => array(        	
        	'target' => '_blank',
        	'onclick' => 'js:bootbox.alert("Se ha generado la credencial!")',          	
        )	

    )
); echo ' ';
?>