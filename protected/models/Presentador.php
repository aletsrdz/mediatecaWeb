<?php

/**
 * This is the model class for table "presentador".
 *
 * The followings are the available columns in table 'presentador':
 * @property integer $idpresentador
 * @property string $apaterno
 * @property string $amaterno
 * @property string $nombre
 * @property string $biodada
 * @property string $foto
 * @property string $email
 * @property string $institucion
 * @property integer $telefono
 * @property string $modo
 *
 * The followings are the available model relations:
 * @property Actividad[] $actividads
 */
class Presentador extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'presentador';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idpresentador', 'required'),
			array('idpresentador, telefono', 'numerical', 'integerOnly'=>true),
			array('apaterno, amaterno, nombre, biodada, foto, email, institucion, modo', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idpresentador, apaterno, amaterno, nombre, biodada, foto, email, institucion, telefono, modo', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'actividads' => array(self::HAS_MANY, 'Actividad', 'presentador'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idpresentador' => 'Idpresentador',
			'apaterno' => 'Apaterno',
			'amaterno' => 'Amaterno',
			'nombre' => 'Nombre',
			'biodada' => 'Biodada',
			'foto' => 'Foto',
			'email' => 'Email',
			'institucion' => 'Institucion',
			'telefono' => 'Telefono',
			'modo' => 'Modo',
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

		$criteria->compare('idpresentador',$this->idpresentador);
		$criteria->compare('apaterno',$this->apaterno,true);
		$criteria->compare('amaterno',$this->amaterno,true);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('biodada',$this->biodada,true);
		$criteria->compare('foto',$this->foto,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('institucion',$this->institucion,true);
		$criteria->compare('telefono',$this->telefono);
		$criteria->compare('modo',$this->modo,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Presentador the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
