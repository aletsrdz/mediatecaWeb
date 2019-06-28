<?php

/**
 * ContactForm class.
 * ContactForm is the data structure for keeping
 * contact form data. It is used by the 'contact' action of 'SiteController'.
 */
class InventarioForm extends CFormModel
{
	public $idacervo;
	public $tipoacervo;
	public $catalogo;
	public $fecha_ingreso;
	public $notas;
	public $catalogador;
	public $estatus;

	/**
	 * Declares the validation rules.
	 */
	public function rules()
	{
		return array(
			array('catalogo, ', 'required'),
			array('idacervo, tipoacervo, estatus', 'numerical', 'integerOnly'=>true),
			array('notas, catalogador', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idacervo, tipoacervo, catalogo, fecha_ingreso, notas, catalogador, estatus', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * Declares customized attribute labels.
	 * If not declared here, an attribute would have a label that is
	 * the same as its name with the first letter in upper case.
	 */
	public function attributeLabels()
	{
		return array(
			'idacervo' => 'Id Acervo',
			'tipoacervo' => 'Tipo Acervo',
			'catalogo' => 'Clasificación formulario',
			'fecha_ingreso' => 'Fecha Ingreso',
			'notas' => 'Notas',
			'catalogador' => 'Nombre del Catalogador',
			'estatus' => 'Estatus',
		);
	}
}