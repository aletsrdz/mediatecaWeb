<?php

class SiteController extends Controller
{
	public $layout='//layouts/main';	
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	
	/*
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('index');
	}
	*/
	/**
	 * This is the action to handle external exceptions.
	 */


	public function actionView($id)
	{
		$this->render('acervo/view',array(
			'model'=>$this->loadModel($id),
		));
	}

	public function actionIndex()
	{
		/*
		$dataProvider=new CActiveDataProvider('Acervo');
		$this->render('acervo/index',array(
			'dataProvider'=>$dataProvider,
		));
		*/
		/*
		$model=new Acervo('search');
		$model->unsetAttributes();  // clear any default values
		$model->cons = 'S'; // para que me aparescan solo la información pública del acervo, 
		if(isset($_GET['Acervo']))
			$model->attributes=$_GET['Acervo'];

			$this->render('acervo/admin',array(
				'model'=>$model,
			));
		*/
			
		$model= new Inventario('search');	
		$model->unsetAttributes();
		$model->estatus = 1;//1 alta, 0 baja
		
		if(isset($_POST['Inventario'])) //Estaba en _GET
		{
			//$model->attributes=$_GET['Inventario'];
			
			$model->clasificacion = $_POST['Inventario']['clasificacion'];
			$model->fecha_ingreso = $_POST['Inventario']['fecha_ingreso'];
			$model->pie_imprenta = $_POST['Inventario']['pie_imprenta'];
			$model->descripcion_fisica = $_POST['Inventario']['descripcion_fisica'];
			
			/*
			echo '<pre>';
			print_r($model);
			echo '</pre>';			
			Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
			*/
			
			$this->redirect(array('buscar',				
				'clasificacion'=>$model->clasificacion, 'fecha_ingreso'=>$model->fecha_ingreso, 'pie_imprenta'=>$model->pie_imprenta,'descripcion_fisica'=>$model->descripcion_fisica
			));	
			
			/*
			$this->redirect(array('buscar',				
				'model'=>$model
			));			
			*/
			
			//$this->render('inventario/buscar', array('model'=>$model));


		}
		$this->render('inventario/inventario',array(
			'model'=>$model,
		));
		
	}
	/*
	public function actionBuscar($model){
		$this->render('inventario/buscar', array('model'=>$model));
	}
	*/
	
	public function  actionBuscar($clasificacion, $fecha_ingreso, $pie_imprenta, $descripcion_fisica)
	{
		
		/*
		$this->render('inventario/buscar',array(
			'clasificacion'=>$clasificacion, 'fecha_ingreso'=>$fecha_ingreso, 'pie_imprenta'=>$pie_imprenta,
			'descripcion_fisica'=>$descripcion_fisica	
		));
		*/
		


		//buscar en Criteria los elementos que coincidan con la busqueda para poder importarlos en un objeto y poder desplegarlos en la vista "buscar.php"

		$criteria = new CDbCriteria();
		$criteria->compare('clasificacion', $clasificacion, true, "OR");
		$criteria->compare('fecha_ingreso', $fecha_ingreso, true, "OR");
		$criteria->compare('pie_imprenta', $pie_imprenta, true, "OR");
		$criteria->compare('descripcion_fisica', $descripcion_fisica, true, "OR");		
		$dataProvider = Inventario::model()->findAll($criteria);
			
			echo '<pre>';
			print_r($dataProvider);
			echo '</pre>';			
			Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
			
		
		$this->render('inventario/buscar',array(
			'dataProvider'=>$dataProvider,
		));
		

	}
	

	public function actionAdmin()
	{
		$model=new Acervo('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Acervo']))
			$model->attributes=$_GET['Acervo'];

		$this->render('acervo/admin',array(
			'model'=>$model,
		));
	}	

	public function loadModel($id)
	{
		$model=Acervo::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				//$this->redirect(Yii::app()->user->returnUrl);
				//Aquí le decimos a donde dirigirse
				$this->redirect(array('private/index'));
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}


	public function actionRegistro()
	{
	    $model=new Entrada;

	    // uncomment the following code to enable ajax-based validation
	    
	    if(isset($_POST['ajax']) && $_POST['ajax']==='entrada-registro-form')
	    {
	        echo CActiveForm::validate($model);
	        Yii::app()->end();
	    }
	    

	    if(isset($_POST['Entrada']))
	    {
	        $model->attributes=$_POST['Entrada'];
	        if($model->validate())

	        {
				$Criteria = new CDbCriteria();
				//$Criteria -> select = 'MAX(idaprendiente)'; // no funciona, no trae el numero máximo 
				$Criteria -> limit = 1;
				$Criteria -> order = "identrada DESC";
				//$ultimo_id = CHtml::listData(Aprendiente2::model()->findAll($Criteria), 'nombre', 'idaprendiente');    // para poder ver el resultado de SQL en pantalla 
 				//print_r($ultimo_id);
 				try{
				if (!Entrada::model()->exists($Criteria))	

				{	
					echo "Entro a la excepcion";
	        		Yii::app()->end();      				
        		}
        		}catch(excepcion $e){
        			echo "Entro a la excepcion";
	        		Yii::app()->end();      					
        		}	
        		
				foreach(Entrada::model()->findAll($Criteria) as  $entrada => $record) { //Este es un ciclo para recuperar el resultado de la consulta, se recupera el dato de idAprendiente
				$identrada = $record->identrada;
				}
				
				$identrada=$identrada+1; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro			
				$identrada;
				$model->identrada = $identrada; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro 
		        $model->idaprendiente = $_POST['Entrada']['idaprendiente'];		        
				$model->horaentrada = date("Y-m-d H:i:s");				
				$model->estatus = 'TRUE';	

				if($model->save())
				{	

					echo "<script>";					
					echo "alert('El aprendiente esta inscrito a la Mediateca');";
					echo "</script>";
					#$this->redirect('registro',array('model'=>$model));
				}
				else{
					echo "<script>";					
					echo "alert('El aprendiente No esta inscrito');";
					echo "</script>";

				}
				
	        }//validate
	    }//isset Entrada
	    $this->render('registro',array('model'=>$model));
	}


	public function actionSalida()
	{
	    $model=new Salida;

	    // uncomment the following code to enable ajax-based validation
	    /*
	    if(isset($_POST['ajax']) && $_POST['ajax']==='salida-salida-form')
	    {
	        echo CActiveForm::validate($model);
	        Yii::app()->end();
	    }
	    */

	    #if(isset($_POST['Salida']))
	    if(isset($_POST['idaprendiente']))	    	
	    {
	     	#echo "idAprendiente es: ".$_POST['idaprendiente'];
	        #$model->attributes=$_POST['Salida'];
	        $model->idaprendiente = $_POST['idaprendiente'];

	        if($model->validate())
	        {	     	
	     		$criteria = new CDbCriteria();
	     		$criteria->select = 'identrada';
				$criteria->condition = 'idaprendiente=:idaprendiente AND estatus=:estatus';
				$criteria->params= array(':idaprendiente'=>$_POST['idaprendiente'], ':estatus'=>'TRUE');
				$entrada = Entrada::model()->findAll($criteria);					

				foreach(Entrada::model()->findAll($criteria) as  $entrada => $record) { 
				$identrada = $record->identrada;
				}
				#CVarDumper::dump($entrada);	
				#echo "idEntrada := ".$identrada;
 				#Yii::app()->end();	

				$datosAprendiente=Aprendiente::model()->findByPk($model->idaprendiente);
				if($datosAprendiente===null){
					throw new CHttpException(404,'El aprendiente no existe en la base de datos de Mediateca');
				}	
				$nombre = $datosAprendiente->nombres;
				$apaterno =	$datosAprendiente->apellidopaterno;											
				$amaterno =	$datosAprendiente->apellidomaterno;	

 				if(isset($identrada)){
 				
					$model->identrada = $identrada;
			        $model->idaprendiente = $_POST['idaprendiente'];		        
					$model->horasalida = date("Y-m-d H:i:s");					

					if($model->save())
					{					
						$updateEstatus = Entrada::model()->updateByPk($model->identrada, array("estatus"=>"FALSE"));
						/*if($updateEstatus>0){
							echo "<script>";					
							echo "alert('El aprendiente se actuliazo en la tabla Entrada');";
							echo "</script>";
						}
						*/
						exit(
							json_encode(array(
								"success"=>true,"message"=>$nombre." ".$apaterno." ".$amaterno." ha registrado su salida correctamente."
						)));						
						
					}
					else{					
						#echo CActiveForm::validate($model);
		        		#Yii::app()->end();
		        		exit(
							json_encode(array(
								"success"=>false,"message"=>$nombre." ".$apaterno." ".$amaterno." NO se ha registrado la salida",
						)));
						exit(CActiveForm::validate($model));
					}
				}//isset identrada
				else{
					
					exit(
							json_encode(array(
								"success"=>false,"message"=>$nombre." ".$apaterno." ".$amaterno." NO ha registrado su entrada a la Mediateca",
						)));
						
					exit(CActiveForm::validate($model));	
				}	
	        }
	        else{	        	
	        	exit(CActiveForm::validate($model));
	        }
	        

	    }
	    $this->render('salida',array('model'=>$model));
	}

	/**
	 * Displays action Entrada
	 */

public function actionEntrada()
{

	    $model=new Entrada;
	    // uncomment the following code to enable ajax-based validation	    
	    /*
	    if(isset($_POST['ajax']) && $_POST['ajax']==='entrada-entrada-form')
	    {
	        echo CActiveForm::validate($model);
	        Yii::app()->end();
	    }
		*/
	    #if(Yii::app()->request->isAjaxRequest && isset($_POST['idaprendiente']))	    	
	    #if(isset($_POST['Entrada']))
	    if(isset($_POST['idaprendiente']))
	    {		  
	    	
	        $model->idaprendiente = $_POST['idaprendiente'];
	        #$model->attributes=$_POST['idaprendiente'];



	        if($model->validate())
	        {
	        	
	        	
	        		$Criteria = new CDbCriteria();
					$Criteria -> limit = 1;
					$Criteria -> order = "identrada DESC";
						
					foreach(Entrada::model()->findAll($Criteria) as  $entrada => $record) { //Este es un ciclo para recuperar el resultado de la consulta, se recupera el dato de idAprendiente
					$identrada = $record->identrada;
					}
				
					$identrada=$identrada+1; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro			
					$identrada;
					$model->identrada = $identrada; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro 
		        	$model->idaprendiente = $_POST['idaprendiente'];
					$model->horaentrada = date("Y-m-d H:i:s");				
					$model->estatus = 'TRUE';	//Se pone en TRUE cuando Entra el aprendiente

					if($model->save())
					{								
						$datosAprendiente=Aprendiente::model()->findByPk($model->idaprendiente);
						if($datosAprendiente===null){
							//throw new CHttpException(404,'El aprendiente no existe en la base de datos de Mediateca');
							exit(CActiveForm::validate($model));
							Yii::app()->end();
						}	
						$nombre = $datosAprendiente->nombres;
						$apaterno =	$datosAprendiente->apellidopaterno;											
						$amaterno =	$datosAprendiente->apellidomaterno;					
						exit(
						json_encode(array(
							"success"=>true,"message"=>$nombre." ".$apaterno." ".$amaterno." registró su entrada a Mediateca.",
						)));						
					
					}
					else{					
						#echo CActiveForm::validate($model);				
						exit(CActiveForm::validate($model));
						Yii::app()->end();
					}
				

					
	        } //validate	
	        else{
	        	
	        	//exit(CActiveForm::validate($model));
	        	echo CActiveForm::validate($model);
	        	Yii::app()->end();
	        }	        
	    } //isAjaxRequest	
    	$this->render('entrada',array('model'=>$model));	    
}//Entrada
	
	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}