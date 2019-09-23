<?php

class AcervoImpresoController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
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
				'actions'=>array('index','view', 'create', 'update', 'admin', 'delete', 'acervo', 'updateInventario', 'admin'),
				#'users'=>array('*'),
				'roles'=>array('asist'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('index','view', 'create', 'update', 'admin', 'delete', 'acervo', 'updateInventario', 'migrar'),
				#'users'=>array('@'),
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

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new AcervoImpreso;
		$inventario = new Inventario;

		if(isset($_POST['AcervoImpreso'], $_POST['Inventario']))
		{				
				
				$Criteria = new CDbCriteria();								
				$Criteria -> limit = 1;
				$Criteria -> order = "idacervo DESC";	
				$acervo = 	Inventario::model()->find($Criteria);
				/*			
				echo '<pre>';
				print_r($acervo);
				echo '</pre>';
				echo $acervo->idacervo;				
				Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 	
				*/
				$idacervo=(int)$acervo->idacervo;
				$idacervo=$idacervo+1; // Incrmento el valor de idaprendiente en UNO para insertar con el siguiente registro
				$model->idacervo = $idacervo;			
				$model->catalogo = $_POST['AcervoImpreso']['catalogo']; //1- Mediateca, 2 - Acervo Asesores, 3 - Master, 4 - Bajas, 5 - CAD
				$model->material = $_POST['AcervoImpreso']['material'];
				$model->idioma = $_POST['AcervoImpreso']['idioma'];
				$model->titulo = $_POST['AcervoImpreso']['titulo'];
				$model->autor_personal = $_POST['AcervoImpreso']['autor_personal'];
				$model->autor_corporativo = $_POST['AcervoImpreso']['autor_corporativo'];
				$model->edicion = $_POST['AcervoImpreso']['edicion'];
				$model->isbn = strtoupper($_POST['AcervoImpreso']['isbn']);			
				$model->descripcion_area = $_POST['AcervoImpreso']['descripcion_area'];
				$model->serie = $_POST['AcervoImpreso']['serie'];				
				$model->fondo = $_POST['AcervoImpreso']['fondo'];
				$model->acento = $_POST['AcervoImpreso']['acento'];
				$model->tipo_formato = $_POST['AcervoImpreso']['tipo_formato'];
				
				$inventario->idacervo = (int)$model->idacervo;
				//$inventario->idacervo_anterior = 777;// Aquí recupero el idacervo de los ejemplares
				$inventario->idacervo_anterior = $idacervo;//
				$inventario->tipoacervo = 1;//tipo de acervo para Acervo Impreso = 1
				$inventario->clasificacion = $_POST['Inventario']['clasificacion'];
				$inventario->pie_imprenta = $_POST['Inventario']['pie_imprenta'];				
				$inventario->descripcion_fisica = $_POST['Inventario']['descripcion_fisica'];								
				$inventario->issn = $_POST['Inventario']['issn'];
				$inventario->dificultad = $_POST['Inventario']['dificultad'];
				$inventario->fecha_ingreso = date("Y-m-d");
				$inventario->notas = $_POST['Inventario']['notas'];
				$inventario->catalogador = strtoupper(Yii::app()->user->name);//'Alex Rdz'
				$inventario->estatus = $_POST['Inventario']['estatus'];
				/*
				echo '<pre>';
				print_r($_POST);
				echo '</pre>';
				Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 
				*/
				//validar ambos modelos
				$valid =$model->validate();
				$valid =$inventario->validate() && $valid;

				if($valid)
				{
					//usar falso para desactivar la validacion del modelo
					$model->save();
					$inventario->save();
					//if($model->save())
					$this->redirect(array('view', 'id'=>$model->idacervo, 'inventario'=>$inventario->idacervo));
				}
		}//cierre de isset()
		$this->render('create', array('model'=>$model, 'inventario'=>$inventario));
	}//cierre de function create	

public function actionAcervo($id)
{
		$Criteria = new CDbCriteria();
		//$Criteria->select = "idacervo, tipoacervo, clasificacion, pie_imprenta, descripcion_fisica, issn, dificultad, fecha_ingreso, notas, catalogador, estatus";
		$Criteria->condition = "idacervo=".$id;
		$inventario= Inventario::model()->find($Criteria);
		
		//$model = new InventarioForm;
		if(isset($_POST['Inventario']))
		{
			
			//$inventario->attributes=$_POST['Inventario'];
			//Obtener el id inventario más alto
			$Criteria = new CDbCriteria();								
			$Criteria -> limit = 1;
			$Criteria -> order = "idacervo DESC";	
			$inventario = Inventario::model()->find($Criteria);			

			$numInventario = $inventario->idacervo +1;
			$inventario->idacervo = $numInventario;
			$inventario->idacervo_anterior = $id;
			$inventario->tipoacervo = 1;
			$inventario->clasificacion = $_POST['Inventario']['clasificacion'];
			$inventario->pie_imprenta = $_POST['Inventario']['pie_imprenta'];
			$inventario->descripcion_fisica = $_POST['Inventario']['descripcion_fisica'];
			$inventario->issn = $_POST['Inventario']['issn'];
			$inventario->dificultad = $_POST['Inventario']['dificultad'];
			$inventario->fecha_ingreso = date("Y-m-d");
			$inventario->notas = $_POST['Inventario']['notas'];;
			$inventario->catalogador = strtoupper(Yii::app()->user->name);//'Alex Rdz';
			$inventario->estatus = $_POST['Inventario']['estatus'];
			$inventario->isNewRecord = true;

			if($inventario->validate())
			{				
				$inventario->save();
				$Criteria = new CDbCriteria();
				$Criteria->select = "idacervo";
				$Criteria->condition = "idacervo=".$id;
				$model = AcervoImpreso::model()->find($Criteria);
				$this->redirect(array('view', 'id'=>$model->idacervo, 'inventario'=>$inventario->idacervo));
				//$this->redirect(array('view', 'id'=>$model->idacervo));
			}
		}
		$this->render('acervo',array('inventario'=>$inventario));
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

		if(isset($_POST['AcervoImpreso']))
		{
			$model->attributes=$_POST['AcervoImpreso'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->idacervo));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	public function actionUpdateInventario($id){	
		$Criteria = new CDbCriteria();		
		$Criteria->condition = "idacervo=".$id;
		$inventario = Inventario::model()->find($Criteria);

		//$Inventario = new Inventario;		
		//$inventario = $Inventario->loadModel($id);
		
		if(isset($_POST['Inventario'])){
			$inventario->attributes=$_POST['Inventario'];
			if($inventario->save())
				$Criteria = new CDbCriteria();								
				$Criteria -> limit = 1;
				$Criteria -> order = "idacervo_anterior DESC";	
				$acervo = 	Inventario::model()->find($Criteria);
				$this->redirect(array('view','id'=>$acervo->idacervo_anterior));

		}
		
		$this->render('inventario',array(
			'inventario'=>$inventario,
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
		$dataProvider=new CActiveDataProvider('AcervoImpreso');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new AcervoImpreso('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['AcervoImpreso']))
			$model->attributes=$_GET['AcervoImpreso'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return AcervoImpreso the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=AcervoImpreso::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param AcervoImpreso $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='acervo-impreso-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}


	public function actionMigrar(){
		
		
		$criteria = new CDbCriteria;
		$criteria->condition="material=:material";		
		$criteria->params=array(":material"=>0); // Se cambia el material a emigrar

		/*$model=Aprendiente::model()->findAllBySQL('SELECT * FROM aprendiente WHERE inscripcion=:inscripcion AND  fechainscripcion<=:fechainscripcion', array(':inscripcion'=>true, 'fechainscripcion'=>$fechaExpiracion));//Otra forma de hacer la consulta*/		

		$mod=Acervo::model()->findAll($criteria);
		$count =Acervo::model()->count($criteria);

		$model=new AcervoImpreso;
		$inventario = new Inventario;

		$titulo1 = '';


			foreach ($mod as $fila){
					
				if($fila->titulo != $titulo1){
					$titulo1 = $fila->titulo;				
					$model->idacervo = (int)$fila->idacervo;
					switch ($model->idioma) {
						case 15:// 2 - Acervo Asesores, 3 - Master, 4 - Bajas, 5 - CAD
							$model->catalogo = 2; // Acervo Asesores
							break;
						case 16:
							$model->catalogo = 3; //Master
							break;				
						case 17:
							$model->catalogo = 4; //Bajas
							break;
						case 18:
							$model->catalogo = 5; //CAD
							break;																	
						
						default:
							$model->catalogo = 1; // 1 - Mediateca
							break;
					}
					
					$model->material = (int)$fila->material;
					$model->idioma = (int)$fila->idioma;
					$model->titulo = $fila->titulo;
					$model->autor_personal = $fila->autor_personal;
					$model->autor_corporativo = $fila->autor_corporativo;
					$model->edicion = $fila->edicion;
					$model->isbn = $fila->isbn;			
					$model->descripcion_area = $fila->descripcion_area;
					$model->serie = $fila->serie;				
					$model->fondo = $fila->fondo;
					$model->acento = $fila->acento;
					$model->tipo_formato = "Original"; // 'Original','Fotocopiado', 'Escaneado'
					
					$inventario->idacervo = $fila->idacervo;
					$inventario->idacervo_anterior = $fila->idacervo;// Aquí recupero el idacervo de los ejemplares
					$inventario->tipoacervo = 1;//tipo de acervo para Acervo Impreso = 1
					$inventario->clasificacion = $fila->clave;
					$inventario->pie_imprenta = $fila->pie_imp;				
					$inventario->descripcion_fisica = $fila->descripcion_fisica;								
					$inventario->issn = $fila->issn;
					$inventario->dificultad = $fila->dificultad;
					$inventario->fecha_ingreso = $fila->fechaingreso;
					$inventario->notas = $fila->idacervo;
					$inventario->catalogador = $fila->cata;//'Alex Rdz'
					if($fila->idacervo == 'N' || $model->idioma == 4  ){
						$inventario->estatus = 0; //baja
					}
					else{
						$inventario->estatus = 1; //alta
					}
					$model->isNewRecord = true;				
					$inventario->isNewRecord = true;
					$model->save();  
					$inventario->save();
				}//if de titulo
					
				else{

					$inventario->idacervo = $fila->idacervo;
					$inventario->idacervo_anterior = $model->idacervo;// Aquí recupero el idacervo de los ejemplares
					$inventario->tipoacervo = 1;//tipo de acervo para Acervo Impreso = 1
					$inventario->clasificacion = $fila->clave;
					$inventario->pie_imprenta = $fila->pie_imp;				
					$inventario->descripcion_fisica = $fila->descripcion_fisica;								
					$inventario->issn = $fila->issn;
					$inventario->dificultad = $fila->dificultad;
					$inventario->fecha_ingreso = $fila->fechaingreso;
					$inventario->notas = $fila->idacervo;
					$inventario->catalogador = $fila->cata;//'Alex Rdz'
					if($fila->idacervo == 'N'){
						$inventario->estatus = 0;
					}
					else{
						$inventario->estatus = 1;
					}
					$inventario->isNewRecord = true;
					$inventario->save();
				}							
			}//foreach

		//para conocer que regristros se van a actualizar, no poner la variable $row al renderizar en la vista
		$this->render('migrar', array('mod'=>$mod, 'count'=>$count));

	}
}
