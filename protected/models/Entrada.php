<?php

/**
 * This is the model class for table "entrada".
 *
 * The followings are the available columns in table 'entrada':
 * @property integer $identrada
 * @property integer $idaprendiente
 * @property string $horaentrada
 * @property string $estatus
 *
 * The followings are the available model relations:
 * @property Salida[] $salidas
 */
class Entrada extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'entrada';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
					array('idaprendiente', 'required', 'message'=>'Campo requerido, no debe estar vacío'),
					array('idaprendiente', 'numerical', 'integerOnly'=>true, 'message'=>' El código del aprendiente deben ser numeros'),
					array('idaprendiente', 'length', 'min'=>'6', 'tooShort'=>' El código del aprendiente válido es longitud 6', 'max'=>'10', 
							'tooLong'=>"El código del aprendiente es menor a 10"),										
					array('idaprendiente','exist','attributeName'=>'idaprendiente','className'=>'Aprendiente',
						'allowEmpty'=>false, 'message'=>'No. Aprendiente no existe en la Mediateca'),				
					array('idaprendiente', 'validarAcceso'),
					array('idaprendiente', 'validarInscripcion'),
					#array('idaprendiente', 'validarExistencia'),
					array('idaprendiente', 'default', 'setOnEmpty'=>' '),
					array('identrada, idaprendiente, horaentrada, estatus', 'safe', 'on'=>'search'),
		);
	}

	public function validarAcceso($attribute, $params){

		$criteria = new CDbCriteria();
		$criteria->condition = 'idaprendiente=:idaprendiente AND estatus=:estatus';
		$criteria->params= array(':idaprendiente'=>$this->attributes['idaprendiente'], ':estatus'=>'TRUE');

		$datosAprendiente=Aprendiente::model()->findByPk($this->attributes['idaprendiente']);
		if($datosAprendiente===null){
			throw new CHttpException(404,'El aprendiente no existe en la base de datos de Mediateca');
		}	
		$nombre = $datosAprendiente->nombres;
		$apaterno =	$datosAprendiente->apellidopaterno;											
		$amaterno =	$datosAprendiente->apellidomaterno;	


		if (Entrada::model()->exists($criteria))			
		{	
			
        	$this->addError('idaprendiente',$nombre.' '.$apaterno.' '.$amaterno.' ya se encuentra dentro de la mediateca, favor de registrar su salida');        	        	
        }	

	}//validar Acceso

	public function validarInscripcion($attribute, $params)
	{

		$criteria2 = new CDbCriteria();
		#$criteria2->select = 'idaprendiente';
		$criteria2->condition = 'idaprendiente=:idaprendiente AND inscripcion=:inscripcion';
		$criteria2->params= array(':idaprendiente'=>$this->attributes['idaprendiente'],':inscripcion'=>'f');

		$datosAprendiente=Aprendiente::model()->findByPk($this->attributes['idaprendiente']);
		if($datosAprendiente===null){
			throw new CHttpException(404,'El aprendiente no existe en la base de datos de Mediateca');
		}	
		$nombre = $datosAprendiente->nombres;
		$apaterno =	$datosAprendiente->apellidopaterno;											
		$amaterno =	$datosAprendiente->apellidomaterno;		


        if(Aprendiente::model()->exists($criteria2))
        {
        	$this->addError('idaprendiente', $nombre.' '.$apaterno.' '.$amaterno.' se ha vencido tu periodo de vigencia, favor de inscribirse');     
        }	

	}//validar inscripción


	public function validarExistencia($attribute, $params){

		$criteria3 = new CDbCriteria();
		$criteria3->select = 'idaprendiente';
		$criteria3->condition = 'idaprendiente=:idaprendiente';
		$criteria3->params= array(':idaprendiente'=>$this->attributes['idaprendiente']);
		if (Aprendiente::model()->exists($criteria3))			
		{				
        	$this->addError('idaprendiente', 'No. Aprendiente: '.$this->attributes['idaprendiente'].' no existe en la Mediateca');        	       	
        }	

	}//validar Existencia

	public function validarEstatus()
	#public function validarEstatus($attribute, $params)
	{
		
		$criteria = new CDbCriteria();
		$criteria->condition = 'idaprendiente=:idaprendiente AND estatus=:estatus';
		$criteria->params= array(':idaprendiente'=>$this->idaprendiente, ':estatus'=>'TRUE');

		
		$criteria2 = new CDbCriteria();
		#$criteria2->select = 'idaprendiente';
		$criteria2->condition = 'idaprendiente=:idaprendiente AND inscripcion=:inscripcion';
		$criteria2->params= array(':idaprendiente'=>$this->idaprendiente,':inscripcion'=>'f');
	
		if (Entrada::model()->exists($criteria))			
		{	
			echo "<script>";
			echo "var audio = new Audio('../../sounds/ringout.wav');";
			echo "audio.play();";
			echo "</script>";
        	$this->addError('idaprendiente', 'Ya se encuentra dentro de la MEDIATECA y no ha registrado su salida');        	        	
        }	

        elseif(Aprendiente::model()->exists($criteria2))
        {
			echo "<script>";
			echo "var audio = new Audio('../../sounds/ringout.wav');";
			echo "audio.play();";
			echo "</script>";
        	$this->addError('idaprendiente', 'El aprendiente NO esta inscrito, favor de inscribirse');        	        	

        }	

        elseif($this->idaprendiente == "")
        	$this->addError('idaprendiente', 'No puede estar vacio el campo, por favor escanea un código');

        elseif($this->idaprendiente == "123456")
			$this->addError('idaprendiente', 'Ingresaste 123456');			
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'salidas' => array(self::HAS_MANY, 'Salida', 'identrada'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'identrada' => 'Hora de entrada',
			'idaprendiente' => 'No. Aprendiente',
			'horaentrada' => 'Hora entrada',
			'estatus' => 'Estatus',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('identrada',$this->identrada);
		$criteria->compare('idaprendiente',$this->idaprendiente);
		$criteria->compare('horaentrada',$this->horaentrada,true);
		$criteria->compare('estatus',$this->estatus,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Entrada the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
