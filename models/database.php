<?php
//select($table, $columns, $where)
require_once('connection.php');

//$database_db = databaseConnection::getInstance();

class DatabaseObject {
	//protected static $database_db;
	public $database_db;
	//public static $database;
	protected $field_set; //array that holds table field associative array
	protected $my_field_set;//holds any necessary appends to the array
	protected $query; //actual query for reciept by medoo
	protected $joinQuery;
	protected $data_set; //returned data set
	protected $join = false; //boolean for innerJoin
	protected $table;
	protected $columns;
	protected $where;
	protected $lastInsertId;
	public function __construct(){
		$this->database_db = databaseConnection::getInstance();
	}
	public function getRecords($columns, $where = "") {
		$this->columns = $columns;
		if (!empty($where)){
				if ($this->join){
					$this->where = $where;
					$this->data_set = $this->database_db->select($this->table, $this->join, $columns, $this->where);
				}
			$this->where = $where;
			$this->data_set = $this->database_db->select($this->table, $columns, $this->where);
		}
		else {
			$this->data_set = $this->database_db->select($this->table, $columns);
		}
		return $this->data_set;
	}
	public function setRecords($table, $data) {
		$this->lastInstertId = $database_db->insert($table, $data);
	}
	public function display($howMany) {
	}
	//$switch is boolean, turns inner join on.

	//$stageDBO->setJoin("order_details", "custom_order");
	// The row author_id from table post is equal the row user_id from table account
	//"[>]account" => ["author_id" => "user_id"],
	public function setJoin($joinTable, $joinColumn){
		$this->join = true;
		$this->joinQuery = array($joinTable, $joinColumn, $joinTable.$joinColumn);


		//('' => , );'"[><]".$joinTable' => ['$joinColumn', '$joinTable.$joinColumn'];
		//$this->joinQuery = '"[><]'.$joinTable.'" => ["'.$joinColumn.'" => "'.$joinTable.'.'.$joinColumn'"]';
	}
	public function set_table($string){
		$this->table = $string;
	}
	public function get_table($string){
		return $this->table;
	}
	public function drawTable(){
		//var_dump($this->field_set);
		$rows = sizeof($this->data_set);
		$cols = sizeof($this->columns);
		echo "<table border='1'>";

		//draw header labels
		foreach($this->columns as $colHeading){
			echo "<th>";
			echo str_replace("Id", "ID", ucwords(str_replace("_", " ",$colHeading)));
			echo "</th>";
		}
		//var_dump($this->data_set);

		for ($tr=1; $tr<=$rows; $tr++){
			echo "<tr>";
				for($td = 1; $td<=$cols;$td++){
					//var_dump($cols);
					echo "<td align='center'>".$this->data_set[$tr-1][$this->columns[$td-1]]."</td>";
				}
			echo "</tr>";
		}
		echo "</table>";
	}

}
class OrderDatabaseObject extends DatabaseObject {

	function __construct(){
		parent::__construct();
		$this->field_set = array( 'order_id', 'customer_id', 'employee_id', 'order_date',
					   'subtotal', 'tax_amount', 'total_price', 'order_type' );
		$this->set_table('order');
	}
	//function getRecords

}
class OrderDetailsDatabaseObject extends OrderDatabaseObject {
	
	function __construct(){
		parent::__construct();
		$this->my_field_set = array('order_id','item_id', 'item_price', 'qty');
		$this->set_table('order_details');
	}
}
class GiftOrderDatabaseObject extends OrderDatabaseObject {
	function __construct(){
		parent::__construct();
		$this->my_field_set = array('gift_id','order_id','rec_last_name','rec_first_name','address_id');
		$this->set_table('gift_order');

	}
}
//base object is no my_field_set
class AddressDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('address_id', 'street_number', 'street_suffix', 'street_name',
								 'street_type','street_type','street_direction','address_type',
								 'address_type_identifier','minor_municipality','major_municipality',
								 'governing_district','zip', 'iso_country_code');
		$this->set_table('address');

	}
}


class DatabaseObjectFactory {
	public static function build($tableName) {
		$tableName = ucwords(str_replace("_", " ", $tableName));
		$DatabaseObject = str_replace(" ","", $tableName."DatabaseObject");
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