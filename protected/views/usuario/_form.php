<?php
/* @var $this UsuarioController */
/* @var $model Usuario */
/* @var $form CActiveForm */
?>

<div class="form">


<?php /** @var TbActiveForm $form */
    $form = $this->beginWidget(
	'booster.widgets.TbActiveForm',	
	array(
		'id' => 'horizontalForm',
		'type' => 'horizontal',
	)
); ?>
 
	<fieldset>

		<legend>Crear Usuario</legend>
 
		<?php 

            echo $form->textFieldGroup(
                $model,
                'username',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            ); 
            echo $form->textFieldGroup(
                $model,
                'password',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );     
            echo $form->textFieldGroup(
                $model,
                'nombre',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );

            echo $form->textFieldGroup(
                $model,
                'apaterno',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );             

            echo $form->textFieldGroup(
                $model,
                'amaterno',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                )
            );             

			
            echo $form->textFieldGroup(
                $model,
                'email',
                array(
                    'wrapperHtmlOptions' => array('class' => 'col-sm-5'),                    
                    #'hint' => 'Movilidad estudiantil',
                    #'prepend' => 'Movilidad estudiantil'
                    'htmlOptions' => array(
						'empty'=>'Escribe el email',						
					),
                )

            );						          
						
			echo $form->radioButtonListGroup(
			$model,
			'tipo',
				array(
					'widgetOptions' => array(
						'data' => array(
							'asist','admin','coord',
						)
					)
				)
			);

				
			
			
        ?>
   
	<div class="form-actions">
		<?php $this->widget(
			'booster.widgets.TbButton',
			array(
				'buttonType' => 'submit',
				'context' => 'primary',
				'label' => 'Enviar'
			)
		); ?>
		<?php $this->widget(
			'booster.widgets.TbButton',
			array('buttonType' => 'reset', 'label' => 'Limpiar')
		); ?>
	</div>
	</fieldset>
<?php
$this->endWidget();
unset($form);
?>	

</div><!-- form -->