<html>
<head>
<title>Lector de codigo de barras</title>
<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){				
		$("#codigo").change(function(){
			var codigo = document.getElementById("codigo").value;
			alert("El codigo es: " + codigo);	
		});		
	});
</script>
</head>
<body>
 <h3>Formulario</h3>
   Codigo de barras:
  <input type="text" name="valor" id="codigo" value=""/>
  <br/>
 </body>
</html>




