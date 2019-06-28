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
	'focus'=>array($model,'idaprendiente'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idaprendiente'); ?>
		<?php echo $form->textField($model,'idaprendiente'); ?>
		<?php echo $form->error($model,'idaprendiente'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Registrar', array('id'=>'btnRegister','disabled'=>true)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<p class="errorInfo" style="display: none;"></p>
<div id="respuesta"></div>

<script type="text/javascript">
	//jQuery(function($){	

	 $.fn.delayPasteKeyUp = function(fn, ms)
 	{
 		//alert("Entro a delayPasteKeyUp");

	 var timer = 0;
	 $(this).on("propertychange input", function()
	 {
		 //alert("Entro a propertychange");
		 clearTimeout(timer);
		 timer = setTimeout(fn, ms);
	 });
 	};


	$(document).ready(function(){
		$("#Entrada_idaprendiente").delayPasteKeyUp(function(){
		//$("#respuesta").append("Aprendiente: "+ $("#Entrada_idaprendiente").val() +"<br>");
		//var codigo = document.getElementById("Entrada_idaprendiente").value;
		var codigo = $("#Entrada_idaprendiente").val();
		//alert("El codigo es: " + codigo);
			$.ajax({
            	type: "POST",
            	url: "<?php echo Yii::app()->createAbsoluteUrl('site/entrada');?>",                 
           		data:
            	{           			
           			idaprendiente: codigo,
            	},
            	success: function(response)
            	{	    
            		var obj = jQuery.parseJSON(response);
            		if(obj.success == true){        		           	            		
	            		var obj = jQuery.parseJSON(response);
	            		var audiosuccess = new Audio('../../sounds/enabled.wav'); 
	            		$(".errorInfo").html(obj.message).fadeIn("slow");
	            		$(".errorInfo").css({
	            			'font':'20px arial, sans-serif',
	            			"color":"green",

	            		});
	            		audiosuccess.play();

	            	}	            	
	            	else{		            			            		
	            		//alert(obj.Entrada_idaprendiente);
	            		var errors = obj.Entrada_idaprendiente + "<br>";	
	            		var audio = new Audio('../../sounds/ringout.wav');            			            		
	            		$('.errorInfo').html(errors).fadeIn('slow');
 			    		$('.errorInfo').css({
 			    		'font':'20px arial, sans-serif',	 			    		
		    			'color':'red'
			    		});
 			    		audio.play();

	            	}
	            	$('#entrada-entrada-form')[0].reset();
	            	$("#Entrada_idaprendiente").focus();
	            	
        		},
        		error: function(xhr,tStatus,e){
                    if(!xhr){
                        alert(" We have an error ");
                        alert(tStatus+"   "+e.message);
                    }else{
                        alert("--else--: "+e.message); // the great unknown
                    }
                }
        	});//ajax
        
       //$("#Entrada_idaprendiente").val("");
        $('#entrada-entrada-form')[0].reset();
        $("#Entrada_idaprendiente").focus();
		}, 200);//change	 o delayPasteKeyUp	
});//jquery



</script>