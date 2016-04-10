<?php
//include medoo library
require '/lib/medoo.php';
/*
$database = new medoo([
	'database_type' => 'mysql',
	'database_name' => '4750',
	'server'		=> 'localhost',
	'username'		=> 'root',
	'password'		=> '',
	'charset'		=> 'utf8'
	]);
*/








	class databaseConnection {
		private static $instance = NULL;

		private function __construct() {}

		private function __clone() {}

		public static function getInstance() 
		{
//Load Database Configuration File as Array


//Attempt Connection		
			if (!isset(self::$instance)) {
			databaseConnection::$instance = new medoo([
				'database_type' => 'mysql',
				'database_name' => '4850',
				'server'		=> 'localhost',
				'username'		=> 'root',
				'password'		=> '',
				'charset'		=> 'utf8'
			]);
			}
			return self::$instance;
		}
	}
	////fghjfghjfghjfghjfghj
