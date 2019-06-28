<?php
/* @var $this EntradaController */
/* @var $model Entrada */
/* @var $form CActiveForm */
?>





<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'entrada-entrada-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>true,	
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idaprendiente'); ?>
		<?php echo $form->textField($model,'idaprendiente'); ?>
		<?php echo $form->error($model,'idaprendiente'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Registrar', array('id'=>'btnRegister', 'disabled'=>true)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<p class="errorInfo" style="display: none;"></p>

<script>
	jQuery(function($){
		$("#Entrada_idaprendiente").focus();		
		$("#Entrada_idaprendiente").change(function(){
		//e.preventDefault();
		var codigo = document.getElementById("Entrada_idaprendiente").value;
		//alert("El codigo es: " + codigo);
		$.ajax({
				
            	type: "POST",
            	url: "<?php echo Yii::app()->createAbsoluteUrl('site/entrada'); ?>",                     
           		data:
            	{           			
           			idaprendiente: codigo,
            	},
            	success: function(response)
            	{	    
            		var obj = jQuery.parseJSON(response);
            		if(obj.success == true){        		           
	            
	            		var obj = jQuery.parseJSON(response);
	            		$(".errorInfo").html(obj.message).fadeIn("slow");
	            		$(".errorInfo").css({
	            			'font':'20px arial, sans-serif',
	            			"color":"green",
	            		});

	            	}	            	
	            	else{		            			            		
	            		//alert(obj.Entrada_idaprendiente);
	            		var errors = obj.Entrada_idaprendiente+"<br>";	            			            		
	            		$('.errorInfo').html(errors).fadeIn('slow');
 			    		$('.errorInfo').css({
 			    		'font':'20px arial, sans-serif',	 			    		
		    			'color':'red'
			    		});
	    				

	            	}
	            	$('#entrada-entrada-form')[0].reset();
	            	$("#Entrada_idaprendiente").focus();
	            	
        		}
        });//ajax
	});//change		
});//jquery
</script>