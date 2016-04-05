<?php
class Order
{
	public function selectStuff()
	{
		echo "selectStuff was called";
	}
	
}

/*
	private $employee_id;
	private $password;

	public function __construct($employee_id, $password){}

	public static function dropdownItemQuery()
	{
		//Select name from item where item id is not in craft or materials
		$database = dataBaseConnection::getInstance();
		$dataset = $database->select("item", "item.name",   [ 
																"AND" => [
																"item.item_id[!]" => $database->select("craft", "item_id"),
																"item.item_id[!]" => $database->select("material", "item_id")
																]
															]);
		return $dataset;

	}
	public static function outputDatabase($arrayOfTables, $password) 
	{
		$database = databaseConnection::getInstance();
		$dataset = $database->select($table, $columns, ['employee_id' => $employee_id]);
		return $dbpassword_hash;
	}
	public static function all() {
		$db = Db::getInstance();
		$req = $db->query('SELECT * FROM user');
		foreach($req->fetchAll() as $user){
			$list[] = new Authentication($user['employee_id'], $user['password_hash'], $user['accessLevel']);
	}
		return $list;

		//return new Authentication($user['employee_id'], $user['password_hash']);


	}
}*/