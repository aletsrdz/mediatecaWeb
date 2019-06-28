<?php

class Graficas{

	public function getDb(){
		return Yii::app()->db;
	}
	const NUM_DIAS = 15;
	//public function obtenDatos($numDias, $fechaInicio){
	//SELECT fecharegistro, COUNT(idaprendiente) from aprendiente WHERE fecharegistro BETWEEN  '2018-05-01' AND '2018-05-30' GROUP BY fecharegistro ORDER BY fecharegistro ASC;
	public function obtenDatos(){
        $cadenaSql= "select fecharegistro, COUNT(idaprendiente) from aprendiente WHERE fecharegistro BETWEEN  '2018-05-01' AND '2018-05-30' GROUP BY fecharegistro ORDER BY fecharegistro ASC";
		$rows = $this->getDb()->createCommand($cadenaSql)->queryAll();
		$fechas = array();
		$contados = array();
		$series = array();
		//$serie = ['2018-05-02'=>2,'2018-05-03'=>2, '2018-05-07'=>1,'2018-05-07'=>3];

		foreach ($rows as $row){
			$fecha = array();
			$cuenta = array();
			$serie = array();

			$cuenta = $row['count'];
			$fecha = $row['fecharegistro'];
			$serie['fecharegistro'] = $row['fecharegistro'];
			$serie['count'] = (int)$row['count'];

			array_push($fechas, $fecha);
			array_push($contados, $cuenta);
			array_push($series, $serie);
		}

        return $series;		
	}

	public function obtenContar(){
        $cadenaSql= "select fecharegistro, COUNT(idaprendiente) from aprendiente WHERE fecharegistro BETWEEN  '2018-10-01' AND '2018-10-30' GROUP BY fecharegistro ORDER BY fecharegistro ASC";
		$rows = $this->getDb()->createCommand($cadenaSql)->queryAll();
		$contados = array();
		foreach ($rows as $row){
			$cuenta = array();
			$cuenta = (int)$row['count'];
			array_push($contados, $cuenta);
		}
        return $contados;		
	}

	public function obtenFechas(){
        $cadenaSql= "select fecharegistro, COUNT(idaprendiente) from aprendiente WHERE fecharegistro BETWEEN  '2018-10-01' AND '2018-10-30' GROUP BY fecharegistro ORDER BY fecharegistro ASC";
		$rows = $this->getDb()->createCommand($cadenaSql)->queryAll();
		$fechas = array();
		foreach ($rows as $row){
			$fecha = array();
			$fecha = $row['fecharegistro'];
			array_push($fechas, $fecha);
		}
        return $fechas;		
	}

	public function nuevoDatos(){
		$cadenaSql= "select fecharegistro, COUNT(idaprendiente) from aprendiente WHERE fecharegistro BETWEEN  '2018-05-01' AND '2018-05-30' GROUP BY fecharegistro ORDER BY fecharegistro ASC";
		$rows = $this->getDb()->createCommand($cadenaSql)->queryAll();
		$newData = [];
		foreach ($rows as $key => $value) {
    		$newData[] = [$key, $value];
		}
		return $newData;
	}



}