<?php

class EstadisticaController extends Controller
{
	
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

	
	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','graficar'),
				'roles'=>array('asist'),
			),
			
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}


	public function actionIndex()
	{
		$model = new EstadisticaForm;	

		// Uncomment the following line if AJAX validation is needed
		 $this->performAjaxValidation($model);

		if(isset($_POST['EstadisticaForm']))
		{

			$rubro = $_POST['EstadisticaForm']['rubro'];
			$tipoUsuario = $_POST['EstadisticaForm']['tipoUsuario'];
			$idioma = $_POST['EstadisticaForm']['idioma'];
			$procedencia = $_POST['EstadisticaForm']['procedencia'];
			$carrera = $_POST['EstadisticaForm']['carrera'];
			$periodoInicio = $_POST['EstadisticaForm']['periodoInicio'];
			$periodoFinal = $_POST['EstadisticaForm']['periodoFinal'];
			/*

			$this->render('grafica',array(
				'rubro'=>$rubro, 'tipoUsuario'=>$tipoUsuario, 'idioma'=>$idioma,
				'procedencia'=>$procedencia, 'carrera'=>$carrera, 
				'periodoInicio'=>$periodoInicio, 'periodoFinal'=>$periodoFinal
			));
			
			*/

			$this->redirect(array('graficar',				
				'rubro'=>$rubro, 'tipoUsuario'=>$tipoUsuario, 'idioma'=>$idioma,
				'procedencia'=>$procedencia, 'carrera'=>$carrera, 
				'periodoInicio'=>$periodoInicio, 'periodoFinal'=>$periodoFinal
			));
			

			
		}

		$this->render('index', array('model'=>$model));
	}

	public function  actionGraficar($rubro, $tipoUsuario, $idioma, $procedencia, $carrera, $periodoInicio, $periodoFinal)
	{
		$this->render('grafica',array(
			'rubro'=>$rubro, 'tipoUsuario'=>$tipoUsuario, 'idioma'=>$idioma,
			'procedencia'=>$procedencia, 'carrera'=>$carrera, 
			'periodoInicio'=>$periodoInicio, 'periodoFinal'=>$periodoFinal
		));

	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/


	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='estadistica-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

}