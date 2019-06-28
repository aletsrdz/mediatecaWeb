<?php

/**
 * This is the model class for table "inventario".
 *
 * The followings are the available columns in table 'inventario':
 * @property integer $idacervo
 * @property integer $tipoacervo
 * @property integer $catalogo
 * @property string $fecha_ingreso
 * @property string $notas
 * @property string $catalogador
 * @property integer $estatus
 */
class Inventario extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'inventario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('catalogo', 'required'),
			array('idacervo, tipoacervo, estatus', 'numerical', 'integerOnly'=>true),
			array('notas, catalogador', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idacervo, tipoacervo, catalogo, fecha_ingreso, notas, catalogador, estatus', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idacervo' => 'Id Acervo',
			'tipoacervo' => 'Tipo Acervo',
			'catalogo' => 'Clasificación inventario',
			'fecha_ingreso' => 'Fecha Ingreso',
			'notas' => 'Notas',
			'catalogador' => 'Nombre del Catalogador',
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

		$criteria->compare('idacervo',$this->idacervo);//70
		$criteria->compare('tipoacervo',$this->tipoacervo);//1 acervo impreso, 2 acervo digital
		$criteria->compare('catalogo',$this->catalogo);// ICL8.1    O9543 Ej. 1
		$criteria->compare('fecha_ingreso',$this->fecha_ingreso,true);
		$criteria->compare('notas',$this->notas,true);
		$criteria->compare('catalogador',$this->catalogador,true);
		$criteria->compare('estatus',$this->estatus);//1 activo , 2 baja

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Inventario the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
