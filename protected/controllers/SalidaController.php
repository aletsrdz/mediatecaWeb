<?php

class SalidaController extends Controller
{
	public function actionIndex()
	{
		$baseUrl = Yii::app()->baseUrl; 
        echo $baseUrl."</br>";
        $cs = Yii::app()->getClientScript();        
        $cs->registerScriptFile($baseUrl.'../../js/registro.js');

		$this->render('index');
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
}