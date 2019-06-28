<?php

/**
 * This is the model class for table "acervo".
 *
 * The followings are the available columns in table 'acervo':
 * @property integer $idacervo
 * @property integer $material
 * @property string $isbn
 * @property string $issn
 * @property integer $idioma
 * @property string $clave
 * @property string $titulo
 * @property string $autor_personal
 * @property string $autor_corporativo
 * @property string $edicion
 * @property string $pie_imp
 * @property string $descripcion_fisica
 * @property string $serie
 * @property string $nota
 * @property string $descripcion_area
 * @property string $fondo
 * @property string $resumen
 * @property integer $acento
 * @property string $referencia
 * @property string $dificultad
 * @property string $cata
 * @property string $fechaingreso
 * @property string $cons
 */
class Acervo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'acervo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idacervo', 'required'),
			array('idacervo, material, idioma, acento', 'numerical', 'integerOnly'=>true),
			array('isbn, issn, clave, titulo, autor_personal, autor_corporativo, edicion, pie_imp, descripcion_fisica, serie, nota, descripcion_area, fondo, resumen, referencia, dificultad, cata, fechaingreso, cons', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idacervo, material, isbn, issn, idioma, clave, titulo, autor_personal, autor_corporativo, edicion, pie_imp, descripcion_fisica, serie, nota, descripcion_area, fondo, resumen, acento, referencia, dificultad, cata, fechaingreso, cons', 'safe', 'on'=>'search'),
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
			'idacervo' => 'No Acervo',
			'material' => 'Material',
			'isbn' => 'ISBN',
			'issn' => 'ISSN',
			'idioma' => 'Idioma',
			'clave' => 'Clave',
			'titulo' => 'Título',
			'autor_personal' => 'Autor Personal',
			'autor_corporativo' => 'Autor Corporativo',
			'edicion' => 'Edición',
			'pie_imp' => 'Pie de imprenta',
			'descripcion_fisica' => 'Descripción Fisica',
			'serie' => 'Serie',
			'nota' => 'Nota',
			'descripcion_area' => 'Descripción de área',
			'fondo' => 'Fondo',
			'resumen' => 'Resumen',
			'acento' => 'Acento',
			'referencia' => 'Referencia',
			'dificultad' => 'Dificultad',
			'cata' => 'Cata',
			'fechaingreso' => 'Fecha de Ingreso',
			'cons' => 'Cons',
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
		$criteria->compare('material',$this->material);
		$criteria->compare('isbn',$this->isbn,true);
		$criteria->compare('issn',$this->issn,true);
		$criteria->compare('idioma',$this->idioma);
		$criteria->compare('clave',$this->clave,true);
		$criteria->compare('titulo',$this->titulo,true);
		$criteria->compare('autor_personal',$this->autor_personal,true);
		$criteria->compare('autor_corporativo',$this->autor_corporativo,true);
		$criteria->compare('edicion',$this->edicion,true);
		$criteria->compare('pie_imp',$this->pie_imp,true);
		$criteria->compare('descripcion_fisica',$this->descripcion_fisica,true);
		$criteria->compare('serie',$this->serie,true);
		$criteria->compare('nota',$this->nota,true);
		$criteria->compare('descripcion_area',$this->descripcion_area,true);
		$criteria->compare('fondo',$this->fondo,true);
		$criteria->compare('resumen',$this->resumen,true);
		$criteria->compare('acento',$this->acento);
		$criteria->compare('referencia',$this->referencia,true);
		$criteria->compare('dificultad',$this->dificultad,true);
		$criteria->compare('cata',$this->cata,true);
		$criteria->compare('fechaingreso',$this->fechaingreso,true);
		$criteria->compare('cons',$this->cons,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Acervo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
