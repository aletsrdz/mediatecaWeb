<?php

/**
 * This is the model class for table "aprendiente2".
 *
 * The followings are the available columns in table 'aprendiente2':
 * @property integer $idaprendiente
 * @property string $fecharegistro
 * @property string $fechainscripcion
 * @property string $cta_rfc
 * @property string $nombre
 * @property integer $categoria
 * @property integer $idioma
 * @property integer $procedencia
 * @property string $fechanacimiento
 * @property string $sexo
 * @property boolean $inscripcion
 * @property integer $numinscripcion
 */
class Aprendiente2 extends CActiveRecord
{
	public $idioma_search;
	
	
	

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'aprendiente2';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idaprendiente, cta_rfc, procedencia, idioma', 'required'),
			array('idaprendiente, numinscripcion', 'numerical', 'integerOnly'=>true),
			array('fecharegistro, fechainscripcion, nombre, apaterno, amaterno, nombres, fechanacimiento, sexo, inscripcion, comprobante', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('cta_rfc, nombre, categoria, idioma, procedencia, fechanacimiento, sexo, idioma_search, comprobante', 'safe', 'on'=>'search'),
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
			'idaprendiente' => 'No',
			'fecharegistro' => 'Fecha de Registro',
			'fechainscripcion' => 'Fecha de Inscripción',
			'cta_rfc' => 'Número de cuenta o RFC',
			'nombre' => 'Nombre Completo',
			'apaterno' => 'Apellidos Paterno',
			'amaterno' => 'Apellidos Materno',
			'nombres' => 'Nombre(s)',
			'categoria' => 'Categoria',
			'idioma' => 'Idioma',
			'procedencia' => 'Dependencia/Facultad',
			'fechanacimiento' => 'Fecha de Nacimiento',
			'sexo' => 'Genero',
			'inscripcion' => 'Inscripción',
			'numinscripcion' => 'No. Inscripción',
			'idioma_search'=>'Idioma',
			'comprobante'=>'No. de comprobante',
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
		#$criteria->addCondition("t.nombre=:nombre");
		#$criteria->params = array(":nombre"=>$this->nombre);
		#$criteria->addCondition('inscripcion=true');
		$criteria->compare('idaprendiente',$this->idaprendiente);
		$criteria->compare('fecharegistro',$this->fecharegistro);
		$criteria->compare('fechainscripcion',$this->fechainscripcion);
		$criteria->compare('cta_rfc',$this->cta_rfc,true);
		$criteria->compare('t.nombre',$this->nombre,true);
		$criteria->compare('categoria',$this->categoria);
		#$criteria->compare('idioma',$this->idioma);
		$criteria->compare('idiomas.nombre',$this->idioma_search,true);
		$criteria->compare('carrera.',$this->idioma_search,true);
		$criteria->compare('procedencia',$this->procedencia);
		$criteria->compare('fechanacimiento',$this->fechanacimiento,true);
		$criteria->compare('sexo',$this->sexo,true);
		$criteria->compare('inscripcion',$this->inscripcion);
		$criteria->compare('numinscripcion',$this->numinscripcion);
		$criteria->compare('numinscripcion',$this->comprobante);
		/*
		$sort->attributes = array(
    		'idaprendiente'=>array(
    			'asc'=>'idaprendiente',
    			'desc'=>'idaprendiente DESC',
        		
        		)
    	);
		*/
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			#'sort'=>$sort,
			'sort'=>array(
						'attributes'=>array(							
							'idioma_search'=>array(
								'asc'=>'idiomas.nombre ASC',
								'desc'=>'idiomas.nombre DESC',
							),
						),
                        'defaultOrder'=>'idaprendiente DESC',						
                    ),
			'pagination'=>array('pageSize'=>15),

		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Aprendiente2 the static model class
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
