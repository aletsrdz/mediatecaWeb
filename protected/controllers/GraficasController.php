<?php
class GraficasController extends Controller {

	public $layout='//layouts/lefty';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	const NUM_DIAS = 30;
	public function actionAsistencia(){
		$fechas = array();

        for ($i = 0; $i < self::NUM_DIAS; $i++)
            $fechas[$i] = date("d-m-Y", strtotime((self::NUM_DIAS - $i) . " days ago"));
        $datos = new Graficas();
        $datosY = $datos->obtenContar();
        $nuevos = $datos->nuevoDatos();
        $datosX = $datos->obtenFechas();
        $datos  = $datos->obtenDatos();

		$this->render('asistencia', array('clavefechas'=>$fechas, 'series'=>$datos, 'ejeX'=>$datosX, 
			'ejeY'=>$datosY, 'dataNew'=>$nuevos));

	}
}