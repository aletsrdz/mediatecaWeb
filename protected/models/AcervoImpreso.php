<?php

/**
 * This is the model class for table "acervo_impreso".
 *
 * The followings are the available columns in table 'acervo_impreso':
 * @property integer $idacervo
 * @property integer $catalogo
 * @property integer $material
 * @property integer $idioma
 * @property string $titulo
 * @property string $autor_personal
 * @property string $autor_corporativo
 * @property string $edicion
 * @property string $isbn
 * @property string $descripcion_area
 * @property string $serie
 * @property string $fondo
 * @property string $acento
 * @property string $tipo_formato
 */
class AcervoImpreso extends CActiveRecord
{
	public $languages_search; // Se agrega esta variable para que pueda funcionar el admin.php de AcervoImpreso
	public $materiales_search;
	public $catalogos_search;


	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'acervo_impreso';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('catalogo, material, idioma, titulo', 'required'),
			array('catalogo, material, idioma', 'numerical', 'integerOnly'=>true),
			array('autor_personal, autor_corporativo, edicion, isbn, descripcion_area, serie, fondo, acento, tipo_formato', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idacervo, catalogo, material, idioma, titulo, autor_personal, autor_corporativo, edicion, isbn, descripcion_area, serie, fondo, acento, tipo_formato, catalogos_search, languages_search, materiales_search', 'safe', 'on'=>'search'),
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
			'materiales' => array(self::BELONGS_TO, 'Material', 'material'),
			'languages' => array(self::BELONGS_TO, 'Idioma', 'idioma'),
			'catalogos' => array(self::BELONGS_TO, 'Catalogo', 'catalogo'),
		);
		
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idacervo' => 'ID. Acervo',
			'catalogo' => 'Catalogo',			
			'material' => 'Material',
			'idioma' => 'Idioma',
			'titulo' => 'Titulo',
			'autor_personal' => 'Autor Personal',
			'autor_corporativo' => 'Autor Corporativo',
			'edicion' => 'Edición',
			'isbn' => 'ISBN',
			'descripcion_area' => 'Descripción Area',
			'serie' => 'Serie',
			'fondo' => 'Fondo',
			'acento' => 'Acento',
			'tipo_formato' => 'Tipo Formato',
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
		//$criteria->with = array('materiales');	
		//$criteria->with = array('idiomas');					
		//$criteria->with = array('materiales');			
		$criteria->with = array('materiales','languages','catalogos');
		$criteria->compare('idacervo',$this->idacervo);
		$criteria->compare('catalogos.nombre',$this->catalogos_search, true);
		//$criteria->compare('catalogo',$this->catalogo);
		//$criteria->compare('material',$this->material);
		$criteria->compare('materiales.descripcion',$this->materiales_search, true);
		//$criteria->compare('idioma',$this->idioma);
		$criteria->compare('languages.nombre',$this->languages_search,true);
		$criteria->compare('titulo',$this->titulo,true);
		$criteria->compare('autor_personal',$this->autor_personal,true);
		$criteria->compare('autor_corporativo',$this->autor_corporativo,true);
		$criteria->compare('edicion',$this->edicion,true);
		$criteria->compare('isbn',$this->isbn,true);
		$criteria->compare('descripcion_area',$this->descripcion_area,true);
		$criteria->compare('serie',$this->serie,true);
		$criteria->compare('fondo',$this->fondo,true);
		$criteria->compare('acento',$this->acento,true);
		$criteria->compare('tipo_formato',$this->tipo_formato,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>array(
						'attributes'=>array(
							'idacervo'=>array(
								'asc'=>'idacervo ASC',
								'desc'=>'idacervo DESC',
							),							
							'materiales_search'=>array(
								'asc'=>'materiales.descripcion ASC',
								'desc'=>'materiales.descripcion DESC',
							),
							'languages_search'=>array(
								'asc'=>'languages.nombre ASC',
								'desc'=>'languages.nombre DESC',
							),				
							'catalogos_search'=>array(
								'asc'=>'catalogos.nombre ASC',
								'desc'=>'catalogos.nombre DESC',
							),
						),                
						'defaultOrder'=>'idacervo DESC',      
                    ),		
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return AcervoImpreso the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
