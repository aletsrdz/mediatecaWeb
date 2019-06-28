<?php
$this->breadcrumbs=array(
	'Grafica de Asistencia'=>array('asistencia'),
);

/*
echo '<pre>';
echo print_r($clavefechas);
echo '</pre>';
echo 'SERIES'.'<br>';
echo '<pre>';
echo print_r($series);
echo '</pre>';
echo 'EJE X'.'<br>';
echo '<pre>';
echo print_r($ejeX);
echo '</pre>';
echo 'EJE Y'.'<br>';
echo '<pre>';
echo print_r($ejeY);
echo '</pre>';
echo 'Datos nuevos'.'<br>';
echo '<pre>';
echo print_r($dataNew);
echo '</pre>';
$out = array_values($series);
echo json_encode($out);
*/
/*
$this->widget('ext.highcharts.HighchartsWidget', array(
	
   'options' => array(
      'title' => array('text' => 'Contar alumnos en el periodo'),
      'xAxis' => array(
        //'categories' => array('Enero', 'Febrero', 'Marzo')
        //'categories' => array('Enero', 'Febrero', 'Marzo')
        'categories' => $ejeX
      ),
      'yAxis' => array(
         'title' => array('text' => 'Número de aprendientes')
      ),
      //'series' => $out
      
      'series' => array(
         array('name' => '2018-05-02', 'data' => array(2,1,5,7,9,10)),
         array('name' => '2018-05-03', 'data' => array(4,8)),
         array('name' => '2018-05-05', 'data' => array(8)),
         array('name' => '2018-05-07', 'data' => array(10)),
         array('name' => '2018-05-09', 'data' => array(5)),
         array('name' => '2018-05-14', 'data' => array(1)),
         array('name' => '2018-05-16', 'data' => array(8)),
         array('name' => '2018-05-17', 'data' => array(7)),
         array('name' => '2018-05-21', 'data' => array(7)),
         array('name' => '2018-05-22', 'data' => array(3)),
         array('name' => '2018-05-24', 'data' => array(7)),
         array('name' => '2018-05-28', 'data' => array(9)),
         array('name' => '2018-05-30', 'data' => array(7))         


      )
      
      
   )
));



$this->widget('ext.highcharts.HighchartsWidget', array(
   'options' => array(

      'title' => array('text' => 'Fruit Consumption'),
      'xAxis' => array(
         'categories' => array('Apples', 'Bananas', 'Oranges')
      ),
      'yAxis' => array(
         'title' => array('text' => 'Fruit eaten')
      ),
      'series' => array(
         array('name' => 'Jane', 'data' => array(1, 0, 4)),
         array('name' => 'John', 'data' => array(5, 7, 3))
      )
   )
));





$this->widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
        'modules/exporting',
        'themes/grid-light',
    ),
    'options' => array(
        'title' => array(
            'text' => 'Combination chart',
        ),
        'xAxis' => array(
            'categories' => array('Apples', 'Oranges', 'Pears', 'Bananas', 'Plums'),
        ),
        'labels' => array(
            'items' => array(
                array(
                    'html' => 'Total fruit consumption',
                    'style' => array(
                        'left' => '50px',
                        'top' => '18px',
                        'color' => 'js:(Highcharts.theme && Highcharts.theme.textColor) || \'black\'',
                    ),
                ),
            ),
        ),
        'series' => array(
            array(
                'type' => 'column',
                'name' => 'Jane',
                'data' => array(3, 2, 1, 3, 4),
            ),
            array(
                'type' => 'column',
                'name' => 'John',
                'data' => array(2, 3, 5, 7, 6),
            ),
            array(
                'type' => 'column',
                'name' => 'Joe',
                'data' => array(4, 3, 3, 9, 0),
            ),
            array(
                'type' => 'spline',
                'name' => 'Average',
                'data' => array(3, 2.67, 3, 6.33, 3.33),
                'marker' => array(
                    'lineWidth' => 2,
                    'lineColor' => 'js:Highcharts.getOptions().colors[3]',
                    'fillColor' => 'white',
                ),
            ),
            array(
                'type' => 'pie',
                'name' => 'Total consumption',
                'data' => array(
                    array(
                        'name' => 'Jane',
                        'y' => 13,
                        'color' => 'js:Highcharts.getOptions().colors[0]', // Jane's color
                    ),
                    array(
                        'name' => 'John',
                        'y' => 23,
                        'color' => 'js:Highcharts.getOptions().colors[1]', // John's color
                    ),
                    array(
                        'name' => 'Joe',
                        'y' => 19,
                        'color' => 'js:Highcharts.getOptions().colors[2]', // Joe's color
                    ),
                ),
                'center' => array(100, 80),
                'size' => 100,
                'showInLegend' => false,
                'dataLabels' => array(
                    'enabled' => false,
                ),
            ),
        ),
    )
));

*/

$this->widget('ext.highcharts.HighchartsWidget', array(
//$this->widget('ext.yii-highcharts.highcharts.HighchartsWidget', array(
	'options'=>array(
		'chart'=> array('defaultSeriesType'=>'column',),
		'title' => array('text' => 'Aprendientes Registrados'),
		'legend'=>array('enabled'=>false),
		//'xAxis'=>array('categories'=>array('Apples', 'Mangos', 'Strawberries', 'Grapes', 'Oranges'),),
		'xAxis'=>array('categories'=>$ejeX,),
		'yAxis'=> array(
			'min'=> 0,
			'title'=> array(
				'text'=>'No. aprendientes'
			),
		),		
		
		'series' => array(
			//array('data' => array(10,9,13,15,20,8,1,13,15,20)),
			array('data' => $ejeY)
		),
		
		//'tooltip' => array('formatter' => 'js:function() {return “<b>”+ this.x +”</b><br/>”+”Fruits : “+ this.y; }'),
			'plotOptions'=>array('pie'=>(array(
			'allowPointSelect'=>true,
			'showInLegend'=>true,
			'cursor'=>'pointer',
				)
			) 
		),
		'credits'=>array('enabled'=>false),
	)
));
