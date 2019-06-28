<?php

/**
 * This is the model class for table "actividad".
 *
 * The followings are the available columns in table 'actividad':
 * @property integer $idactividad
 * @property string $dia
 * @property string $horario
 * @property string $lugar
 * @property integer $tema
 * @property integer $modalidad
 * @property string $titulo
 * @property integer $presentador
 *
 * The followings are the available model relations:
 * @property Presentador $presentador0
 */
class Actividad extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'actividad';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idactividad, dia, horario, lugar', 'required'),
			array('idactividad, tema, modalidad, presentador', 'numerical', 'integerOnly'=>true),
			array('titulo', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idactividad, dia, horario, lugar, tema, modalidad, titulo, presentador', 'safe', 'on'=>'search'),
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
			'presentador0' => array(self::BELONGS_TO, 'Presentador', 'presentador'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idactividad' => 'Idactividad',
			'dia' => 'Dia',
			'horario' => 'Horario',
			'lugar' => 'Lugar',
			'tema' => 'Tema',
			'modalidad' => 'Modalidad',
			'titulo' => 'Titulo',
			'presentador' => 'Presentador',
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

		$criteria->compare('idactividad',$this->idactividad);
		$criteria->compare('dia',$this->dia,true);
		$criteria->compare('horario',$this->horario,true);
		$criteria->compare('lugar',$this->lugar,true);
		$criteria->compare('tema',$this->tema);
		$criteria->compare('modalidad',$this->modalidad);
		$criteria->compare('titulo',$this->titulo,true);
		$criteria->compare('presentador',$this->presentador);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Actividad the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
