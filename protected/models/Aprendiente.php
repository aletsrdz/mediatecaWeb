<?php

/**
 * This is the model class for table "aprendiente".
 *
 * The followings are the available columns in table 'aprendiente':
 * @property integer $idaprendiente
 * @property string $fecharegistro
 * @property string $fechainscripcion
 * @property string $cta_rfc
 * @property string $apellidopaterno
 * @property string $apellidomaterno
 * @property string $nombres
 * @property string $email
 * @property integer $categoria
 * @property integer $idioma
 * @property integer $dependencia
 * @property integer $carrera
 * @property string $fechanacimiento
 * @property string $sexo
 * @property boolean $inscripcion
 * @property integer $numinscripcion
 * @property string $movilidad
 * @property string $difusion
 * @property string $observacion
 * @property integer $comprobante
 */
class Aprendiente extends CActiveRecord
{
	public $idioma_search;
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'aprendiente';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idaprendiente, cta_rfc, apellidopaterno, nombres', 'required'),
			array('idaprendiente, categoria, idioma, dependencia, carrera, numinscripcion, comprobante', 'numerical', 'integerOnly'=>true),
			array('fecharegistro, fechainscripcion, nombres, email, fechanacimiento, sexo, inscripcion, movilidad, difusion, observacion', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idaprendiente, fecharegistro, fechainscripcion, cta_rfc, apellidopaterno, apellidomaterno, nombres, email, categoria, idioma, dependencia, carrera, fechanacimiento, sexo, inscripcion, numinscripcion, movilidad, difusion, observacion, comprobante', 'safe', 'on'=>'search'),
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
			'asistencias' => array(self::MANY_MANY, 'Asistencia', 'Asistencia(idaprendiente, horaentrada)'),
			'idiomas' => array(self::BELONGS_TO, 'Idioma', 'idioma'),
			'carrera' => array(self::BELONGS_TO, 'Carrera', 'idcarrera'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idaprendiente' => 'No. aprendiente',
			'fecharegistro' => 'Fecha Registro',
			'fechainscripcion' => 'Vigencia hasta',
			'cta_rfc' => 'Cta/Rfc',
			'apellidopaterno' => 'Apellido Paterno',
			'apellidomaterno' => 'Apellido Materno',
			'nombres' => 'Nombres',
			'email' => 'Email',
			'categoria' => 'Categoria',
			'idioma' => 'Idioma',
			'dependencia' => 'Dependencia',
			'carrera' => 'Carrera',
			'fechanacimiento' => 'Fecha Nacimiento',
			'sexo' => 'Sexo',
			'inscripcion' => 'Inscripción',
			'numinscripcion' => 'No. inscripcion',
			'movilidad' => 'Movilidad',
			'difusion' => 'Difusion',
			'observacion' => 'Observacion',
			'comprobante' => 'No. comprobante',
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
		$sort = new CSort();		
		$criteria->with = array('idiomas');
		$criteria->compare('idaprendiente',$this->idaprendiente);
		$criteria->compare('fecharegistro',$this->fecharegistro,true);
		$criteria->compare('fechainscripcion',$this->fechainscripcion,true);
		$criteria->compare('cta_rfc',$this->cta_rfc,true);
		$criteria->compare('apellidopaterno',$this->apellidopaterno,true);
		$criteria->compare('apellidomaterno',$this->apellidomaterno,true);
		$criteria->compare('nombres',$this->nombres,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('categoria',$this->categoria);
		//$criteria->compare('idioma',$this->idioma);
		$criteria->compare('idiomas.nombre',$this->idioma_search,true);
		$criteria->compare('dependencia',$this->dependencia);
		$criteria->compare('carrera',$this->carrera);
		$criteria->compare('fechanacimiento',$this->fechanacimiento,true);
		$criteria->compare('sexo',$this->sexo,true);
		$criteria->compare('inscripcion',$this->inscripcion);
		$criteria->compare('numinscripcion',$this->numinscripcion);
		$criteria->compare('movilidad',$this->movilidad,true);
		$criteria->compare('difusion',$this->difusion,true);
		$criteria->compare('observacion',$this->observacion,true);
		$criteria->compare('comprobante',$this->comprobante);
		
		//$criteria->condition = "fecharegistro BETWEEN "."'2010-01-01'". " AND "."'2018-12-30'";
		//$criteria->order = 'idaprendiente DESC';
		//$criteria->condition = "fechainscripcion >"."'2010-01-01'"; 

		
		//$criteria->addInCondition('fecharegistro', "fecharegistro >"."'2018-01-01'");
		//$criteria->condition = 'fecharegistro=:fecharegistro';
		//$criteria->params = array(':fecharegistro'=>"fecharegistro >"."'2018-01-01'");

		/*
		echo '<pre>';
			print_r($criteria);
			echo '</pre>';
			Yii::app()->end(); // termino la aplicación para poder ver los resultados en pantalla 
			
		*/
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,						
			'sort'=>array(
						'attributes'=>array(	
							'idaprendiente'=>array(
								'asc'=>'idaprendiente ASC',
								//'desc'=>'idaprendiente DESC',
							),
							/*
							'fechainscripcion'=>array(
								'fechainscripcion'=>'fechainscripcion ASC',
								'fechainscripcion'=>'fechainscripcion DESC',
								'default' => 'desc',
							),
							*/									
						),
                      'defaultOrder'=>'fecharegistro DESC',			
                    ),			
			
			'pagination'=>array('pageSize'=>25),


		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Aprendiente the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getMenuDependencia()
    {
        $dependencia = Dependencia::model()->findAll();
        return CHtml::listData($dependencia,"dependencia" ,"SelectDependencia");
    }
	
	 public function getMenuSubdependencia($dependencia)
    {
        if($dependencia == null) $dependencia = 323;
        $subdependencia = Subdependencia::model()->findAll('dependencia=?',array($dependencia));
        return CHtml::listData($subdependencia,"subdep","SelectSubdependencia");
        //return $this->subdep." ".$this->nomabrevia;    
    }
}
