<?php
/* @var $this AcervoController */
/* @var $model Acervo */
/* @var $form CActiveForm */
?>
<div class="form">

<?php /** @var TbActiveForm $form */
$form = $this->beginWidget(
    'booster.widgets.TbActiveForm',
    array(
        'id' => 'horizontalForm',
        'type' => 'horizontal',
        //'htmlOptions'=>array('target'=>'_blank'),
        //'action'=>Yii::app()->createUrl('acervo/generarEtiquetas'),
    )
); ?>

    <fieldset>
 
    <legend>Selecciona el rango de etiquetas a imprimir</legend>
    <!--div class="link_pdf" style="border: 3px solid #555; height: 50px; width: 50px; float: right; margin: 50px 200px 10px 10px" >   
    </div--> 
    <?php
        $criteria2 = new CDbCriteria();
        $criteria2 -> limit = 1;
        $criteria2 -> order = "idacervo DESC";

        foreach (Inventario::model()->findAll($criteria2) as $acervo => $value) {
            $idacervo = $value->idacervo;
        }

        $idacervo=$idacervo;
    ?>

    <?php //echo "El último registro del acervo es: ".CHtml::activeLabelEx($model, $idacervo);
            echo "El último registro del acervo es: ".$idacervo;
    ?>

    <?php echo $form->textFieldGroup(
        $etiqueta,
        'idinicial',
        array(
            'wrapperHtmlOptions' => array(
                'class' => 'col-sm-5',
            ),
            //'hint' => 'Número Inicial'
        )
    );
    ?>        
    <?php echo $form->textFieldGroup(
        $etiqueta,
        'idfinal',
        array(
            'wrapperHtmlOptions' => array(
                'class' => 'col-sm-5',
            ),
            //'hint' => 'Número final'
        )
    );
    ?>  
        <div class="form-actions">
        <?php $this->widget(
            'booster.widgets.TbButton',
            array(
                'buttonType' => 'submit',
                'context' => 'primary',
                'label' => 'Generar etiquetas'
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
unset($etiquetas);
?>
</div><!-- form -->