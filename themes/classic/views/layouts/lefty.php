<?php $this->beginContent('//layouts/main'); ?>
<div class="container">
	<div class="span-6"> <!-- Modificar el ancho de menú de navegación-->
		
			<h2></h2>
<?php        
  $this->widget(
   'booster.widgets.TbMenu',
    array(
        'type' => 'list',
        'items' => array(
            array(
                'label' => 'Catalogos', 'visible'=>Yii::app()->user->checkAccess("admin"),
                'itemOptions' => array('class' => 'nav-header')
            ),
            '',
                array('label' => 'Usuario',                              
			                 'url'=> array('/usuario/admin'),
                       'visible'=>Yii::app()->user->checkAccess("coord")
                     ),
                array('label' => 'Idioma',                              
                      'url'=> array('/idioma/admin'),
                      'visible'=>Yii::app()->user->checkAccess("admin")
                     ),
                array('label' => 'Material',                              
                      'url'=> array('/material/admin'),
                      'visible'=>Yii::app()->user->checkAccess("admin")
                     ),
                array('label' => 'Carreras',                              
                      'url'=> array('/carrera/admin'),
                      'visible'=>Yii::app()->user->checkAccess("super")
                     ),
                array('label' => 'Dependencia',                              
                      'url'=> array('/dependencia/admin'),
                      'visible'=>Yii::app()->user->checkAccess("super")
                     ),                                
                /*  
                array('label' => 'Tipo de Acervo',                              
                      'url'=> array('/tipoAcervo/index'),
                      'visible'=>Yii::app()->user->checkAccess("admin")
                     ),                
                array('label' => 'Temas',                              
                      'url'=> array('/tema/index'),
                      'visible'=>Yii::app()->user->checkAccess("admin")
                     ),                                
                array('label' => 'Tipo de Material',                              
                      'url'=> array('/tipoMaterial/index'),
                      'visible'=>Yii::app()->user->checkAccess("admin")
                     ),                   
                array('label' => 'Tipo de Soporte',                              
                      'url'=> array('/tipoSoporte/index'),
                      'visible'=>Yii::app()->user->checkAccess("admin")
                     ), 
                */                                       
			array(
                'label' => 'Aprendientes', 'visible'=>Yii::app()->user->checkAccess("asist"),
                'itemOptions' => array('class' => 'nav-header')
			),
			'',                                                
                array('label' => 'Inscribir',
                      'url' => '../aprendiente/create',
                      'visible'=>Yii::app()->user->checkAccess("asist")
                ), 

                array('label' => 'Consulta',
                      'url' => '../aprendiente/admin',
                      'visible'=>Yii::app()->user->checkAccess("asist")
                ),     

               array('label' => 'Actualizar Insc',
                      'url' => '../aprendiente/actualizarInscripcion',
                      'visible'=>Yii::app()->user->checkAccess("super")
                ),				
                array('label' => 'Cierre de Entradas',
                      'url' => '../entrada/cierreEntradas',
                      'visible'=>Yii::app()->user->checkAccess("admin")
                ),				
			/*
      array(
                'label' => 'Asistencia', 'visible'=>Yii::app()->user->checkAccess("asist"),
                'itemOptions' => array('class' => 'nav-header')
			),	
      
				array('label' => 'Consulta',
					    'url' => '../asistencia/admin',
				      'visible'=>Yii::app()->user->checkAccess("asist")
             ),
      */
			array(
				'label' => 'Acervo', 'visible'=>Yii::app()->user->checkAccess("admin"),
				'itemOptions' => array('class' => 'nav-header')
			),
      '',                       
                array('label' => 'Crear Acervo', 
                      'url' => '../private/acervo',
                      'visible'=>Yii::app()->user->checkAccess("admin")
                ),      
                array('label' => 'Generar Etiquetas', 
                      'url' => '../private/etiquetas',
                      'visible'=>Yii::app()->user->checkAccess("admin")
                ),
                /*
                array('label' => 'Crear A. Digital', 
                      'url' => '../acervoDigital/create',
                      'visible'=>Yii::app()->user->checkAccess("admin")
                ),
                */ 
                /*  
                array('label' => 'Migrar AcervoImpreso', 
                      'url' => '../acervoImpreso/migrar',
                      'visible'=>Yii::app()->user->checkAccess("super")
                ),
                array('label' => 'Migrar AcervoDigital', 
                      'url' => '../acervoDigital/migrar',
                      'visible'=>Yii::app()->user->checkAccess("super")
                ),
                */
                array('label' => 'Buscar A.Digital',
                      'url' => '../acervoDigital/admin',
                      'visible'=>Yii::app()->user->checkAccess("admin")
                ),
                array('label' => 'Buscar A.Impreso',
                      'url' => '../acervoImpreso/admin',
                      'visible'=>Yii::app()->user->checkAccess("admin")
                ),                
                array('label' => 'Etiquetas',
                       'url' => '../private/etiquetas',
                       'visible'=>Yii::app()->user->checkAccess("admin")
                ),
			array(
				'label' => 'Estadisticas', 'visible'=>Yii::app()->user->checkAccess("admin"),
				'itemOptions' => array('class' => 'nav-header')
			),
			'',	
				array('label' => 'Generar',
                     'url' => '../estadistica/index',
                     'visible'=>Yii::app()->user->checkAccess("admin")
				),
				
      array('label' => 'Aprendientes Registrados',
                           'url' => '../graficas/asistencia',
                           'visible'=>Yii::app()->user->checkAccess("admin")
              ),        
				
		)
  )
);        
?>
		

	</div>
	<div id="content" class="span-22"> <!-- Para cambiar el tamaño del contenido en la pantalla  -->
		<?php echo $content; ?>
	</div><!-- content -->
</div>
<?php $this->endContent(); ?>
