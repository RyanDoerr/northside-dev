<?php
class Authentication
{
	private $employee_id;
	private $password;

	public function __construct($employee_id, $password)
	{
	}

	public static function verify($employee_id, $password) {
		$dbpassword_hash = false;

		//$db = Db::getInstance();
		//$query = "SELECT password_hash FROM user WHERE employee_id = '$employee_id'";
		//$req = $db->query($query);
		//$result = $req->fetch();
		$table = 'user';
		$columns = 'password_hash';
		//$where = 
		$database = databaseConnection::getInstance();
		$datas = $database->select($table, $columns, ['employee_id' => $employee_id]);
		var_dump($datas);
		if ($datas[0] == $password){
			$dbpassword_hash = true;
		}
		return $dbpassword_hash;
	}
	public static function all() {
		$db = Db::getInstance();
		$req = $db->query('SELECT * FROM user');
		foreach($req->fetchAll() as $user){
			$list[] = new Authentication($user['employee_id'], $user['password_hash'], $user['accessLevel']);
	}
		return $list;

		return new Authentication($user['employee_id'], $user['password_hash']);


	}
}