<?php

/**
 * This is the model class for table "idioma".
 *
 * The followings are the available columns in table 'idioma':
 * @property integer $ididioma
 * @property string $nombre
 */
class Idioma extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'idioma';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nombre', 'required', 'message'=>'Campo Requerido'),
			array('ididioma', 'numerical', 'integerOnly'=>true),
			array('nombre', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ididioma, nombre', 'safe', 'on'=>'search'),
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
			'aprendiente'=>array(self::HAS_MANY, 'Aprendiente2', 'idioma'),
			'acervo'=>array(self::HAS_MANY, 'Acervo', 'idioma'),
			'acervo_impreso'=>array(self::HAS_MANY, 'AcervoImpreso', 'idioma'),
			'language'=>array(self::BELONGS_TO, 'AcervoImpreso', 'ididioma'),
			'languages'=>array(self::BELONGS_TO, 'AcervoImpreso', 'ididioma'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ididioma' => 'No. Idioma',
			'nombre' => 'Nombre',
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

		$criteria->compare('ididioma',$this->ididioma);
		$criteria->compare('nombre',$this->nombre,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>array(
				'defaultOrder'=>'ididioma ASC',
				),
			'pagination'=>array('pageSize'=>15),
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Idioma the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	
	public function getSelectIdioma(){
		return $this->ididioma." - ".$this->nombre; 
		
	}
	
}
