<?php

class AprendienteController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	//public $layout='//layouts/column2';
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
				'actions'=>array('index','view', 'create', 'update', 'admin', 'delete', 'generarCredencial','reinscripcion', 'credencial', 'asistencia', 'variascredenciales', 'generarCredenciales'),
				#'users'=>array('*'),
				'roles'=>array('asist'),
			),
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view', 'create', 'update', 'admin', 'delete', 'generarCredencial','reinscripcion', 'credencial', 'asistencia', 'variascredenciales', 'generarCredenciales','actualizarInscripcion'),
				#'users'=>array('*'),
				'roles'=>array('super'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	public function actionCredencial($id)
	{
		$this->render('credencial',array(
			'model'=>$this->loadModel($id),
		));
	}

public function actionGenerarCredencial($id = null, $nombres= null, $idioma= null)
	{				

		$caberaFrente =	Yii::getPathOfAlias("webroot.images.ENALLT_Frente");		
		$caberaVuelta =	Yii::getPathOfAlias("webroot.images.ENALLT_VueltaGris");
		
		Yii::import("ext.fpdf.*");
			
		$pdf = new Code39();
		$pdf->AddPage();
		$pdf->f_Code39(123, 43, $id);			
		$pdf->Image($caberaFrente.".png",20,6.5, 85);
		$pdf->Image($caberaVuelta.".png",106,6.5, 85); //86
		$pdf->SetXY(40,10);
		$pdf->SetXY(40,16);
		$pdf->SetXY(40,23);
		$pdf->SetFont('Helvetica','',11);
		$pdf->SetXY(130,24); 
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Line(57,31, 57, 59); //Raya de divisoria-----
		$pdf->Rect(20,6,85, 57); //Rect 1
		$pdf->Rect(106,6,85, 57); // Rect2 codigo de barras 
		$pdf->SetXY(130,33);
		$pdf->SetFont('Helvetica','',6);
		$pdf->MultiCell(40,3,'El usuario será responsable del mal uso que se haga de esta credencial', 0, 'C');
		$pdf->SetXY(61,30);
		$pdf->SetFont('Helvetica','',8);
		$pdf->MultiCell(40,4,$nombres, 0, 'L');		
		$pdf->SetXY(61,42);
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Cell(40,4, 'Nombre',0,0,'L');
		$pdf->SetXY(61,45);
		$pdf->SetFont('Helvetica','',8);
		$pdf->Cell(40,5, $idioma,0,0,'L');		
		$pdf->SetXY(61,50);
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Cell(40,5,'Idioma',0,1,'L');
		$pdf->SetXY(61,57);
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Cell(15,2, 'ID. de Usr:',0,0,'L');
		$pdf->SetXY(75,56);
		$pdf->SetFont('Helvetica','',8);
		$pdf->Cell(25,4, $id,0,0,'R');				
		$pdf->Output();
	
		$this->render('credencial');
	}	


	public function actionVariascredenciales()
	{
		
		if(isset($_POST['theIds']))
		{
        	$test=explode( ',', $_POST['theIds']);
        	
		}
		else{
        	$test = "Ajax failed, no se pudo generar la credencial";
    	}

    	//var_dump($test)."</br>";
    	$i=-1;


    	foreach($test as $ids)
    	{
    		$i++;    		
    		$model['$i']=$this->loadModel($ids);
    		 $apr = $model['$i']->idaprendiente;
    		 $nom = $model['$i']->nombres;
    		 $apa = $model['$i']->apellidopaterno;
    		 $ama = $model['$i']->apellidomaterno;
    		 $idi = $model['$i']->idioma;
    		//echo "<br>";   		

    		$usuario[]=$apr.",".$nom.",".$idi;
    		
    		
    	}
    	var_dump($usuario); 
	    Yii::app()->end();

	}

	public function actionGenerarCredenciales()
	{
	$imageCele = Yii::getPathOfAlias("webroot.images.logoENALLT");
	$imageUnam = Yii::getPathOfAlias("webroot.images.unam150");	
	$caberaFrente =	Yii::getPathOfAlias("webroot.images.ENALLT_Frente");		
	$caberaVuelta =	Yii::getPathOfAlias("webroot.images.ENALLT_Vuelta");
	Yii::import("ext.fpdf.*");
	$pdf = new Code39();	
	
	$pdf->AddPage();
	$test=explode( ',', $_GET['theIds']);
	$i=-1;
	$ln=0;
	foreach($test as $ids)
	{			
		$i++;    		
    	$model['$i']=$this->loadModel($ids);
    	$apr = (int)$model['$i']->idaprendiente;
    	
  		$nom = $model['$i']->nombres;
  		
   		$apa = $model['$i']->apellidopaterno;
   		
   		$ama = $model['$i']->apellidomaterno;
   		

   		$nombrecompleto = $nom.' '.$apa.' '.$ama;
   		
	    
	    $idioma = CHtml::encode($model['$i']->idioma);
		$Criteria = new CDbCriteria();
		$Criteria->select = "nombre";
		$Criteria->condition = "ididioma=$idioma";
		$languaje = Idioma::model()->find($Criteria);
		$model['$i']->idioma = $languaje->nombre;

		$idi = $model['$i']->idioma;

	if($ln > 250)	
	{
		$ln =0;
	}

		$pdf->Image($caberaFrente.".png",20,6.5+$ln, 85);
		$pdf->Image($caberaVuelta.".png",106,6.5+$ln, 85); //86
		$pdf->SetXY(40,10+$ln);
		$pdf->SetXY(40,16+$ln);
		$pdf->SetXY(40,23+$ln);
		$pdf->SetFont('Helvetica','',11);
		$pdf->SetXY(130,24+$ln); 
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Line(57,31+$ln, 57, 59+$ln); //Raya de divisoria-----
		$pdf->Rect(20,6+$ln,85, 57); //Rect 1
		$pdf->Rect(106,6+$ln,85, 57); // Rect2 codigo de barras 
		$pdf->SetXY(130,33+$ln);
		$pdf->SetFont('Helvetica','',6);
		$pdf->MultiCell(40,3,'El usuario será responsable del mal uso que se haga de esta credencial', 0, 'L');
		$pdf->f_Code39(123, 43+$ln, "$apr");
		$pdf->SetXY(61,29+$ln);//
		$pdf->SetFont('Helvetica','',8);		
		$pdf->MultiCell(40,4,$nombrecompleto , 0, 'L');
		$pdf->SetXY(61,40+$ln);
		$pdf->SetFont('Helvetica','B',8);	
		$pdf->Cell(40,4, 'Nombre',0,0,'L');
		$pdf->SetXY(61,45+$ln);		
		$pdf->SetFont('Helvetica','',8);
		$pdf->Cell(40,5,  $idi,0,0,'L');		
		$pdf->SetXY(61,49+$ln);		
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Cell(40,5, 'Idioma',0,1,'L');
		$pdf->SetFont('Helvetica','',8);
		$pdf->SetXY(61,57+$ln);
		$pdf->SetFont('Helvetica','B',8);
		$pdf->Cell(15,2, 'ID. de Usr:',0,0,'L');	
		$pdf->SetFont('Helvetica','',8);	
		$pdf->Cell(25,2, "$apr",0,0,'R');			
		
		$ln = $ln+70;
		
			
		
	}//cierre de foreach
	$pdf->Output();
	Yii::app()->end();
}

public function actionAjaxUpdate()
{
   	var_dump($_POST);
}
	
public function actionSubdepByDep(){				
		
	$dependencia = $_POST['Aprendiente']['dependencia'];        
	$lista = Subdependencia::model()->findAll('dependencia = :dependencia', array(':dependencia'=>$dependencia));
     $lista =CHtml::listData($lista, 'subdep', 'nomabrevia');
        
        foreach($lista as $valor=> $nomabrevia)
            echo CHtml::tag('Option', array('value'=>valor), CHtml::encode($nomabrevia), true);
}


	public function actionCreate()
	{
		$model=new Aprendiente;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Aprendiente']))
		{
			$Criteria = new CDbCriteria();
			//$Criteria -> select = 'EXTRACT(YEAR FROM fecharegistro)'; // no funciona, no trae el numero máximo 
			$Criteria -> condition ="fecharegistro >"."'2018-01-01'"; //CAMBIAR SEGUN el año de la mediateca
			$Criteria -> limit = 1;
			$Criteria -> order = "idaprendiente DESC";
			//$Criteria -> order = "fecharegistro DESC";  //puse fecha registro por que no son consecutivos los idaprendientes en la tabla
			//$ultimo_id = CHtml::listData(Aprendiente::model()->findAll($Criteria), 'nombre', 'idaprendiente');    // para poder ver el resultado de SQL en pantalla 
 			//print_r($ultimo_id);
						
			foreach(Aprendiente::model()->findAll($Criteria) as  $aprendiente => $record) { //Este es un ciclo para recuperar el resultado de la consulta, se recupera el dato de idAprendiente
				echo $idaprendiente = $record->idaprendiente."<br>";
			}
			
			//echo $idaprendiente."</br>";
			//print_r ($id);
			$idaprendiente=$idaprendiente+1; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro			
			
			$model->idaprendiente = $idaprendiente;
			$model->fecharegistro = date("Y-m-d");
			$model->fechainscripcion = date("Y-m-d");						
			$model->apellidopaterno = strtoupper($_POST['Aprendiente']['apellidopaterno']);
			$model->apellidomaterno = strtoupper($_POST['Aprendiente']['apellidomaterno']);
			$model->nombres = strtoupper($_POST['Aprendiente']['nombres']);
			$model->cta_rfc = strtoupper($_POST['Aprendiente']['cta_rfc']);
			$model->email = $_POST['Aprendiente']['email'];
			$model->categoria = substr($_POST['Aprendiente']['categoria'], 0, 1);
			$model->carrera = substr($_POST['Aprendiente']['carrera'], 0, 3);
			$model->movilidad = strtoupper($_POST['Aprendiente']['movilidad']);
			$model->idioma = substr($_POST['Aprendiente']['idioma'],0,3);
			$model->dependencia = substr($_POST['Aprendiente']['dependencia'], 0 ,3);
			$model->fechanacimiento = $_POST['Aprendiente']['fechanacimiento'];
			$model->sexo = $_POST['Aprendiente']['sexo'];
			$model->difusion = implode(",", $_POST['Aprendiente']['difusion']);			
			$model->inscripcion = 'TRUE';
			$model->numinscripcion = '1';
			$model->observacion = $_POST['Aprendiente']['observacion'];
			$model->comprobante = $_POST['Aprendiente']['comprobante'];
			
			// Este bloque me sirve para saber que se ha mandado por POST
			
			/*
			echo '<pre>';
			print_r($_POST);
			echo '</pre>';
			Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 
			*/

			//$model->attributes=$_POST['Aprendiente'];
			if($model->save())
				$user=Yii::app()->getComponent('user');
				$user->setFlash('success', 'El Aprendiente se ha inscrito a la Mediateca');
				$this->redirect(array('view','id'=>$model->idaprendiente));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}


	public function actionReinscripcion($id)
	{
		

		$model=$this->loadModel($id);		

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		$model->fechainscripcion = date('Y-m-j');
		$nuevafecha = strtotime ( '+6 month' , strtotime ( $model->fechainscripcion ) ) ;
		$nuevafecha = date ( 'Y-m-j' , $nuevafecha );
 
		#echo $nuevafecha;
		$numinsc=$model->numinscripcion+1;


		if(isset($_POST['Aprendiente']))
		{
			
			#$model->fecharegistro = date("Y-m-d");
			$model->fechainscripcion = $nuevafecha;
			$model->inscripcion = 'TRUE';
			$model->numinscripcion = $numinsc;			

			/*
			echo '<pre>';
			print_r($model);
			echo '</pre>';
			Yii::app()->end();
			*/
			if($model->save()){
				$user = Yii::app()->getComponent('user');
				$user->setFlash('success', 'El Aprendiente se ha <strong>reinscrito!</strong>');
				$this->redirect(array('view','id'=>$model->idaprendiente));
			}
									

				
		}

		$this->render('reinscripcion',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Aprendiente']))
		{
			//$model->attributes=$_POST['Aprendiente']; // Se quita para poder 
			
			//$model->fecharegistro = date("Y-m-d"); //Se quita para que se mantenga la fechaRegistro
			//$model->fechainscripcion = date("Y-m-d");//Se quita para que se mantega la fechaInscripción						
			$model->apellidopaterno = strtoupper($_POST['Aprendiente']['apellidopaterno']);
			$model->apellidomaterno = strtoupper($_POST['Aprendiente']['apellidomaterno']);
			$model->nombres = strtoupper($_POST['Aprendiente']['nombres']);
			$model->cta_rfc = strtoupper($_POST['Aprendiente']['cta_rfc']);
			$model->email = $_POST['Aprendiente']['email'];
			$model->categoria = substr($_POST['Aprendiente']['categoria'], 0, 1);
			$model->carrera = substr($_POST['Aprendiente']['carrera'], 0, 3);
			$model->movilidad = strtoupper($_POST['Aprendiente']['movilidad']);
			$model->idioma = $_POST['Aprendiente']['idioma'];
			$model->dependencia = substr($_POST['Aprendiente']['dependencia'], 0 ,3);
			$model->fechanacimiento = $_POST['Aprendiente']['fechanacimiento'];
			$model->sexo = $_POST['Aprendiente']['sexo'];
			$model->difusion = implode(",", $_POST['Aprendiente']['difusion']);			
			//$model->inscripcion = 'TRUE'; Se quita para que mantenga el valor anterior
			$model->numinscripcion = '1';
			$model->observacion = $_POST['Aprendiente']['observacion'];
			$model->comprobante = $_POST['Aprendiente']['comprobante'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->idaprendiente));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Aprendiente');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		
		$baseUrl = Yii::app()->baseUrl; 
        echo $baseUrl."</br>";
        $cs = Yii::app()->getClientScript();        
        $cs->registerScriptFile($baseUrl.'../../js/checkedgrid.js');
		

		$model=new Aprendiente('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Aprendiente']))		
			$model->attributes=$_GET['Aprendiente'];			
		

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Aprendiente the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Aprendiente::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
	
	public function actionActualizarInscripcion()
	{		
		
		$fechaHoy = date('Y-m-j');
		$fechaExpiracion = date("Y-m-j",strtotime($fechaHoy."- 6 month")); 	
		$criteria = new CDbCriteria;
		$criteria->condition="inscripcion=:inscripcion AND fechainscripcion<=:fechainscripcion";		
		$criteria->params=array(":inscripcion"=>true, ":fechainscripcion"=>$fechaExpiracion);

		/*$model=Aprendiente::model()->findAllBySQL('SELECT * FROM aprendiente WHERE inscripcion=:inscripcion AND  fechainscripcion<=:fechainscripcion', array(':inscripcion'=>true, 'fechainscripcion'=>$fechaExpiracion));//Otra forma de hacer la consulta*/		

		$mod=Aprendiente::model()->findAll($criteria);
		$count =Aprendiente::model()->count($criteria);
		$rows = Aprendiente::model( )->updateAll(array('inscripcion' =>false), "inscripcion=:inscripcion AND fechainscripcion<=:fechainscripcion", array(":inscripcion"=>true, ":fechainscripcion"=>$fechaExpiracion));


		//$transaction=$mod->dbConnection->beginTransaction();
		/*
		$transaction = Yii::app()->db->beginTransaction();

		try{
			// actualizar las filas que coincidan con la condición especificada
			foreach ($mod as $valor){
			$valor->inscripcion = 'false';
				if($mod->save()){
					$transaction->commit();
				}
				else{
					$transaction->rollback();
				}
			}
		}catch(Exeption $e)
		{
			$transaction->rollback();
    		throw $e;
		}
		//para conocer que regristros se van a actualizar, no poner la variable $row al renderizar en la vista
		$this->render('actualizarInscripcion', array('mod'=>$mod, 'count'=>$count,'fechaHoy'=>$fechaHoy, 'fechaExpiracion'=>$fechaExpiracion, 'contaRegistro'=>$count)); // sin el dato row
		*/
		$this->render('actualizarInscripcion', array('mod'=>$mod, 'rows'=>$rows, 'count'=>$count,'fechaHoy'=>$fechaHoy, 'fechaExpiracion'=>$fechaExpiracion, 'contaRegistro'=>$count));
	}

	public function actionAsistencia() 
	{
		$this->redirect('../../asistencia/admin');
	}

	/**
	 * Performs the AJAX validation.
	 * @param Aprendiente $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='aprendiente-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
