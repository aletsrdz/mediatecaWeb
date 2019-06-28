<?php
class EstadisticaForm extends CFormModel
{

	//public static $rubro=array('Assistencia de usuarios', 'Inscripciones' , 'Reinscripciones');
	public $rubro;
	public $idioma;
	public $procedencia;
	public $carrera;
	public $tipoUsuario;
	public $periodoInicio;
	public $periodoFinal;

	public function rules()
	{
		return array(
			array("rubro, tipoUsuario", "required"),
			array("idioma", "safe"),
		);

	}


}