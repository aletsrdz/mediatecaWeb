<?php

class PrivateController extends Controller
{
	public $layout='//layouts/lefty';
	public function actionIndex()
	{
		

		//$this->render('index');
		$model = new BusquedaForm;        		
        
        if(isset($_POST['ajax']) && $_POST['ajax']==='horizontalForm')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['BusquedaForm']))
		{
			$model->attributes=$_POST['BusquedaForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}        
        $this->render('index',array('model'=>$model));       
	}

	public function actionEtiquetas()
	{			
		$etiqueta = new EtiquetasForm;
		$model = new Inventario;
		if(isset($_POST["EtiquetasForm"]))
		{
			$etiqueta->attributes=$_POST["EtiquetasForm"];
			if($etiqueta->validate())
			{
				$inicial=$etiqueta->idinicial;
				$final=$etiqueta->idfinal;
				//$this->redirect(array('generarEtiquetas','idinicial'=>$inicial, 'idfinal'=>$final), array('target'=>'_blank'));
				
				//echo CHtml::link('Etiquetas',array('acervo/generarEtiquetas','idinicial'=>$inicial, 'idfinal'=>$final), array('target'=>'_blank', 'class'=>'link_pdf'));

				//echo "<script type='text/javascript'>window.open('http://localhost:8000/index.php/acervo/generarEtiquetas', '_blank')  </script>";
				
				/*
				$image = CHtml::image(Yii::app()->request->baseUrl.'/images/pdf_50_50.png',
      				'icono PDF');
      			echo CHtml::link($image,array('acervo/generarEtiquetas','idinicial'=>$inicial, 'idfinal'=>$final), array('target'=>'_blank',
      			'class'=>'link_pdf'));
				*/
      			$this->redirect(array('pdf', 'idinicial'=>$inicial, 'idfinal'=>$final));      			    	
			}			
		}
		$this->render('etiquetas', array('model'=>$model, 'etiqueta'=>$etiqueta));
	}

	public function actionPdf(){
		//$this->render('pdf', array('idinicial'=>$inicio, 'idfinal'=>$final));
		$this->render('pdf');

	}

	public function actionGenerarEtiquetas($idinicial, $idfinal)
	{
		Yii::import("ext.fpdf.*");
		$m = 0;	
		$col = 1;

		$pdf = new Code39();
		$pdf->AddPage();
		$pdf->SetFont('Arial','',10);
		if(isset($idinicial)){
			for($i = $idinicial; $i <= $idfinal; $i++){		
				
				if($col == 2)	
				{																				
					$pdf->SetY(35+$m);
					$pdf->SetX(98);					
					$pdf->Rect(85,12 + $m,60, 20); //rectangulo				
					$pdf->f_Code39(90, 15+$m,  "$i");									
				}
				else{						
					$pdf->SetY(35+$m);
					$pdf->SetX(38);					
					$pdf->Rect(21,12 + $m,60, 20); //rectangulo				
					$pdf->f_Code39(25, 15+$m,  "$i");									
				}
				$m = $m + 23;
				if($m > 250){
					$m = 0;
					$col = 2;
				}
			}
		}
		$pdf->Output();

	}	

	public function actionAcervo(){

		$this->render('acervo');
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