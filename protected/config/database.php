<?php

// This is the database connection configuration.
return array(
	'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
	
	
	
	
	// uncomment the following lines to use a MySQL database	
	#'connectionString' => 'mysql:host=localhost;dbname=mediateca',
/*	
	'connectionString' => 'pgsql:host=localhost;port=5432;dbname=mediatecaweb',
	'emulatePrepare' => true,
	'username' => 'arodriguez',
	'password' => 'yFN2rUYdXu',
	'charset' => 'utf8',
*/
	
	/*
	DataBase: encuestasweb
	usuario:encuestasweb
	pass: eEJ8&nMP4u
*/
	'connectionString' => 
	'pgsql:host=localhost;port=5432;dbname=mediateca2',
    'username'=>'alex',
    'password'=>'rasdak21',
    'charset'=>'UTF8',

);