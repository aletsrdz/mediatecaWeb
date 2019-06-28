<?php

/**
 * This is the model class for table "inventario".
 *
 * The followings are the available columns in table 'inventario':
 * @property integer $idacervo
 * @property integer $idacervo_anterior
 * @property integer $tipoacervo
 * @property string $clasificacion
 * @property string $pie_imprenta
 * @property string $descripcion_fisica
 * @property string $issn
 * @property string $dificultad
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
			array('idacervo, idacervo_anterior, tipoacervo, clasificacion, fecha_ingreso, estatus', 'required'),
			array('idacervo, idacervo_anterior, tipoacervo, estatus', 'numerical', 'integerOnly'=>true),
			array('pie_imprenta, descripcion_fisica, issn, dificultad, notas, catalogador', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idacervo, idacervo_anterior, tipoacervo, clasificacion, pie_imprenta, descripcion_fisica, issn, dificultad, fecha_ingreso, notas, catalogador, estatus', 'safe', 'on'=>'search'),
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
			'idacervo' => 'Id. Acervo',
			'idacervo_anterior' => 'Id. acervo anterior',
			'tipoacervo' => 'Tipo Acervo',
			'clasificacion' => 'Clasificación',
			'pie_imprenta' => 'Pie Imprenta',
			'descripcion_fisica' => 'Descripción Fisica',
			'issn' => 'ISSN',
			'dificultad' => 'Dificultad',
			'fecha_ingreso' => 'Fecha Ingreso',
			'notas' => 'Notas',
			'catalogador' => 'Catalogador',
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

		$criteria->compare('idacervo',$this->idacervo);
		$criteria->compare('idacervo_anterior',$this->idacervo_anterior);
		$criteria->compare('tipoacervo',$this->tipoacervo);
		$criteria->compare('clasificacion',$this->clasificacion,true);
		$criteria->compare('pie_imprenta',$this->pie_imprenta,true);
		$criteria->compare('descripcion_fisica',$this->descripcion_fisica,true);
		$criteria->compare('issn',$this->issn,true);
		$criteria->compare('dificultad',$this->dificultad,true);
		$criteria->compare('fecha_ingreso',$this->fecha_ingreso,true);
		$criteria->compare('notas',$this->notas,true);
		$criteria->compare('catalogador',$this->catalogador,true);
		$criteria->compare('estatus',$this->estatus);
		//$criteria->join="INNER JOIN tbl_user as user ON(user.userid=t.user_id)";
		$criteria->join="INNER JOIN acervo_digital as ad ON(ad.idacervo=inventario.idacervo)";

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
