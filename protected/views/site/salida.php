<?php
/* @var $this SalidaController */
/* @var $model Salida */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'salida-salida-form',
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
		<?php echo CHtml::submitButton('Registrar Salida', array('disabled'=>true)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<p class="errorInfo" style="display: none;"></p>

<script>
	jQuery(function($){
		$("#Salida_idaprendiente").focus();	
		$("#Salida_idaprendiente").change(function(){
		//e.preventDefault();
		var codigo = document.getElementById("Salida_idaprendiente").value;
		//alert("El codigo es: " + codigo);
		$.ajax({
            	type: "POST",
            	url: "<?php echo Yii::app()->createAbsoluteUrl('site/salida'); ?>",                     
           		data:
            	{           			
           			idaprendiente: codigo,
            	},
            	success: function(response)
            	{	                		            	
            		var obj = jQuery.parseJSON(response);            		            	            		
            		if(obj.success == true){   
            			var audiosuccess = new Audio('../../sounds/enabled.wav');     		           
	            		$(".errorInfo").html(obj.message).fadeIn("slow");
	            		$(".errorInfo").css({
	            			'font':'20px arial, sans-serif',
	            			"color":"green",
	            		});
	            		audiosuccess.play();
	            	}
	            	else if(obj.success == false){
	            		//var obj = jQuery.parseJSON(response);
	            		var audio = new Audio('../../sounds/ringout.wav');
	            		$(".errorInfo").html(obj.message).fadeIn("slow");
	            		$(".errorInfo").css({
	            			'font':'20px arial, sans-serif',
	            			"color":"orange",
	            		}); 
	            		audio.play();  				
	            	}           		            	
	            	else{		            			            		
	            		//alert(response);
	            		//alert(obj.Salida_idaprendiente);	            
	            		var audio = new Audio('../../sounds/ringout.wav');		
	            		var errors = obj.Salida_idaprendiente+"<br>";	            			            		
	            		$('.errorInfo').html(errors).fadeIn('slow');
 			    		$('.errorInfo').css({
 			    		'font':'20px arial, sans-serif',	 			    		
		    			'color':'red'
			    		});	  
			    		audio.play();   				
	            	}
	            	$('#salida-salida-form')[0].reset();
	            	$("#Salida_idaprendiente").focus();
	            	
        		}
        });//ajax
	});//change		
});//jquery
</script>