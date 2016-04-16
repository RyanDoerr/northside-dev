<?php
class Authentication
{
	//private $employee_id;
	//private $password
	public static function verification($employee_id, $password) {

		//$dbpassword_hash = false;
		$table           = 'user';
		$columns         = ['password_hash', 'accessLevel'];
		$database        = databaseConnection::getInstance();
		$dataset         = $database->select($table, $columns, [
																"employee_id" => $employee_id
																]);
		//var_dump($dataset);
		return $dataset;
	}
}