<?php

class EntradaController extends Controller
{
	public function actionIndex()
	{
		/*
		$baseUrl = Yii::app()->baseUrl; 
        echo $baseUrl."</br>";
        $cs = Yii::app()->getClientScript();        
        $cs->registerScriptFile($baseUrl.'../../js/checkedgrid.js');

		*/


		$this->render('index');
	}

	public function actionCierreEntradas()
	{		
		
		$this->layout='//layouts/lefty'; // para que esta vista sea solo en esta vista

		$listaEntrada = Entrada::model()->findAll('estatus = :estatus', array(':estatus'=>'TRUE'));

     	$salida = new Salida;
     	$registro = 0;

		foreach ($listaEntrada as $key => $value) {

			$fechaDiaEntrada =  substr($value->horaentrada, 0, 10);//'2019-04-29 13:15:15.0';
			//https://stackoverflow.com/questions/6238992/converting-string-to-date-and-datetime

			$identrada = $value->identrada;
			$idaprendiente = $value->idaprendiente;			
			$salida->identrada = $identrada;
			$salida->idaprendiente = $idaprendiente;
			$salida->horasalida = $fechaDiaEntrada.' 21:00:0.0';//date('Y-m-j').' 21:00:0.0';
			$salida->isNewRecord = true;
			if($salida->save())
			{					
				$updateSalida = Entrada::model()->updateByPk($salida->identrada, array("estatus"=>"FALSE"));
				$registro = $registro + 1;
			}	
			else{
				$registro = 0;
			}
		}
		$this->render('cierreEntradas', array('lista'=>$listaEntrada, 'registro'=>$registro));		
	}

	
}