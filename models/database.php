<?php
//select($table, $columns, $where)
require_once('connection.php');

//$database_db = databaseConnection::getInstance();

class DatabaseObject {
	//protected static $database_db;
	public $database_db;
	//public static $database;
	public $field_set; //array that holds table field associative array
	protected $query; //actual query for reciept by medoo
	protected $data_set; //returned data set
	protected $table;
	protected $columns;
	protected $where;
	protected $lastInsertId;
	public function __construct(){
		$this->database_db = databaseConnection::getInstance();
	}
	public function getRecords($columns) {
		$data_set = $this->database_db->select($this->table, $columns);
		return $data_set;
	}
	public function setRecords($table, $data) {
		$lastInstertId = $database_db->insert($table, $data);
	}
	public function display($howMany) {
	}
	public function set_table($string){
		$this->table = $string;
	}
	public function get_table($string){
		return $this->table;
	}

}
class OrderDatabaseObject extends DatabaseObject {

	function __construct(){
		parent::__construct();
		//echo 'constructor called';
		$field_set = array( 'order_id', 'customer_id', 'employee_id', 'order_date',
					   'subtotal', 'tax_amount', 'total_price', 'order_type' );
		$this->set_table('order');
	}
	//function getRecords

}
class Order_DetailsDatabaseObject extends orderDatabaseObject {
	private $my_field_set = array('order_id','item_id', 'item_price', 'qty');
	function __construct(){
		parent::__construct();
		array_push($field_set, $my_field_set); 
		$this->set_table('order_details');
	}
}

class DatabaseObjectFactory {
	public static function build($tableName) {
		$DatabaseObject = ucwords($tableName) . "DatabaseObject";
		//var_dump($DatabaseObject);
		if (class_exists($DatabaseObject)) {
			return new $DatabaseObject;
		}
		else {
			throw new Exception("Error in Database Object Factory. Tablename doesn't exist.");
		}
	}

}
?>