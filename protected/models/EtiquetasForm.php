<?php
class EtiquetasForm extends CFormModel
{
	
	
	public $idinicial;
	public $idfinal;

	public function rules()
	{
		return array(
			array("idinicial, idfinal", "required"),
			array('idinicial, idfinal', 'length', 'min'=>'1', 'tooShort'=>'El código del aprendiente válido es longitud 1', 'max'=>'8', 'tooLong'=>"El código del aprendiente es menor a 8"),
			array('idinicial, idfinal', 'validarRango'),
			array('idinicial','exist','allowEmpty' => 'false', 'attributeName' => 'idacervo', 'className' => 'Inventario',
			      'message'=>'El id inicial del acervo no existe',			     
				),
			array('idfinal','exist','allowEmpty' => 'false', 'attributeName' => 'idacervo', 'className' => 'Inventario',
			      'message'=>'El id final del acervo no existe',			     
				),

			array('idfinal', 'compare', 'compareAttribute' => 'idinicial', 'operator'=>'>', 'message'=>Yii::t('app','El No. Final tiene que ser mayor que el No. Inicial.')),		
			array("idinicial, idfinal", "numerical"),

		);
	}

	public function validarRango($attribute, $params)
	{
		if (($this->idfinal) - ($this->idinicial) > 23){	
        	$this->addError('idfinal', 'El rango debe ser menor a 23');        	        	
        }
        
	}

	public function attributeLabels()
	{
		return array(
			'idinicial' => 'No Inicial',
			'idfinal' => 'No Final',
		);
	}		
			
}