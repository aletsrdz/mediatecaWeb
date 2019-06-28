<?php

/**
 * This is the model class for table "salida".
 *
 * The followings are the available columns in table 'salida':
 * @property integer $identrada
 * @property integer $idaprendiente
 * @property string $horasalida
 *
 * The followings are the available model relations:
 * @property Entrada $identrada0
 */
class Salida extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'salida';
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
			array('idaprendiente', 'length', 'min'=>'6', 'tooShort'=>'El código del aprendiente válido es longitud 6', 'max'=>'10', 
			'tooLong'=>"El código del aprendiente es menor a 10"),
			//array('idaprendiente', 'validarSalida'),
			array('idaprendiente', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('identrada, idaprendiente, horasalida', 'safe', 'on'=>'search'),
		);
	}

	public function validarSalida($attribute, $params){
		$criteria = new CDbCriteria();
		$criteria->condition = 'idaprendiente=:idaprendiente AND estatus=:estatus';
		$criteria->params= array(':idaprendiente'=>$this->attributes['idaprendiente'], ':estatus'=>'FALSE');
		//$criteria->order= 'identrada ASC'; 	
		$entrada = Entrada::model()->findAll($criteria);
		foreach(Entrada::model()->findAll($criteria) as  $entrada => $record) { 
		$identrada = $record->identrada;
		}

		
		$datosAprendiente=Aprendiente::model()->findByPk($this->attributes['idaprendiente']);
		if($datosAprendiente===null){
			throw new CHttpException(404,'El aprendiente no existe en la base de datos de Mediateca');
		}	
		$nombre = $datosAprendiente->nombres;
		$apaterno =	$datosAprendiente->apellidopaterno;											
		$amaterno =	$datosAprendiente->apellidomaterno;

		if(isset($identrada))
		{	
		//if (Entrada::model()->exists($criteria))					
			$this->addError('idaprendiente', $nombre.' '.$apaterno.' '.$amaterno.' no ha registrado su entrada a la Mediateca');     	
		}	
	}//validar Salida

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'identrada0' => array(self::BELONGS_TO, 'Entrada', 'identrada'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'identrada' => 'No. entrada',
			'idaprendiente' => 'No. Aprendiente',
			'horasalida' => 'Hora de salida',
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
		$criteria->compare('horasalida',$this->horasalida,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Salida the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
