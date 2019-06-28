<?php
/* @var $this AcervoController */
/* @var $model Acervo */
/* @var $form CActiveForm */
?>

<div class="wide form">


<?php /** @var TbActiveForm $form */
$form = $this->beginWidget(
	'booster.widgets.TbActiveForm',
	array(
		'id' => 'inlineForm',
		'type' => 'inline',

	)
); ?>
 
	<fieldset>
		<legend>Búsqueda en Inventario</legend>
 
		<?php
		/*
			$Criteria = new CDbCriteria();
			$Criteria -> order = "idmaterial ASC";
			echo $form->dropDownListGroup(
                $model,
                'material',
                array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
	   			'widgetOptions' => array(
				
					'data' => CHtml::listData(Material::model()->findAll($Criteria),"idmaterial" ,"SelectMaterial"),	   				
					'htmlOptions' => array(
						'empty'=>'Seleccione el material',
						//'multiple' => true
					),
				)
			)
            ); 
         */
         ?> 

        <?php echo $form->textFieldGroup(
			$model,
			'clasificacion',
			array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-20',
				),
				'hint' => ''
			)
		);?> 

		<?php echo $form->textFieldGroup(
			$model,
			'fecha_ingreso',
			array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-20',
				),
				'hint' => ''
			)
		);?>         		
 
		<?php echo $form->textFieldGroup(
			$model,
			'pie_imprenta',
			array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
				'hint' => ''
			)
		); ?>

		<?php echo $form->textFieldGroup(
			$model,
			'descripcion_fisica',
			array(
				'wrapperHtmlOptions' => array(
					'class' => 'col-sm-5',
				),
				'hint' => ''
			)
		); ?>
	
<div class="form-actions">
		<?php $this->widget(
			'booster.widgets.TbButton',
			array(
				'buttonType' => 'submit',
				'context' => 'primary',
				'label' => 'Buscar'
                
			)
        
		); ?>
		<?php $this->widget(
			'booster.widgets.TbButton',
			array(
                'buttonType' => 'reset',
                'label' => 'Limpiar'
                
            )
		); ?>
	</div>
<?php
$this->endWidget();
unset($form);	
?>
</div><!-- search-form -->