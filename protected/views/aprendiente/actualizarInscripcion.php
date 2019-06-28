<?php
/* @var $this TemaController */

$this->breadcrumbs=array(
	'Actualizar Inscripción',
);
?>
<h1>Actualizar Inscripción</h1>

<?php 

	
	echo 'Registros Actualizados: '.$count.'<br>';
	echo 'Fecha Hoy: '.$fechaHoy.'<br>';
	echo 'Fecha Expiracion: '.$fechaExpiracion.'<br>';

	echo 'Los idAprendiente que se actualizaron son:';
	foreach ($mod as $valor){		
		echo $valor->idaprendiente.'<br>';				
	}
	echo "<br>";
	echo "---------------------";
	echo "<pre>";
	echo print_r($rows);	
	echo "</pre>";
	echo "---------------------";
	echo "<pre>";
	echo print_r($mod);	
	echo "</pre>";	
	

?>