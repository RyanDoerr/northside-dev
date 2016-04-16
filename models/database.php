<?php
//select($table, $columns, $where)
require_once('connection.php');
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
	protected $insert;
	public function __construct(){
		$this->database_db = databaseConnection::getInstance();
	}
	public function getRecords($columns, $where = "") {
		$this->columns = $columns;

		if($this->join){

			$this->data_set = $this->database_db->select($this->table, $this->joinQuery, $columns, $where);
		}
		else if ($where != ""){
			$this->data_set = $this->database_db->select($this->table, $this->columns, $where);
		}
		else{
			$this->data_set = $this->database_db->select($this->table, $this->columns);
		}
		return $this->data_set;
	}
	public function setRecords($table, $data) {
		$this->lastInstertId = $database_db->insert($table, $data);
	}
	public function setTable($string){
		$this->table = $string;
	}
	public function getTable($string){
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

	public function setJoin($join_array){
		$this->join = true;
		$this->joinQuery = $join_array;
	}
	public function sendInsert($arrayToInsert){
		$this->insert = $arrayToInsert;
	}



}
//1
class OrderDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array( 'order_id', 'customer_id', 'employee_id', 'order_date',
					   'subtotal', 'tax_amount', 'total_price', 'order_type' );
		$this->setTable('order');
	}
}
//2
class OrderDetailsDatabaseObject extends OrderDatabaseObject {
	
	function __construct(){
		parent::__construct();
		$this->my_field_set = array('order_id','item_id', 'item_price', 'qty');
		$this->setTable('order_details');
	}
}
//3
class GiftOrderDatabaseObject extends OrderDatabaseObject {
	function __construct(){
		parent::__construct();
		$this->my_field_set = array('gift_id','order_id','rec_last_name','rec_first_name','address_id');
		$this->setTable('gift_order');
	}
}
//base object is no my_field_set
//3
class AddressDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('address_id', 'street_number', 'street_suffix', 'street_name',
								 'street_type','street_type','street_direction','address_type',
								 'address_type_identifier','minor_municipality','major_municipality',
								 'governing_district','zip', 'iso_country_code');
		$this->setTable('address');
	}
}
//4
class CustomerDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('customer_id','last_name','first_name','phone_number','email','address_id');
		$this->setTable('customer');
	}
}
//5
class EmployeeDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('employee_id','last_name','first_name','hire_date','address_id','phone_number');
		$this->setTable('employee');
	}
}
//6
class LocalVendorsDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('vendor_id','last_name','first_name','vendor_name','phone_number', 'address_id','email');
	}
}
//7
class SupplierOrderDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('supplier_order_id','employee_id', 'supplier_id', 'order_date', 'subtotal', 'tax_amount','total_discount', 'total_price');
	}
}
//8
class OrderMaterialsDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('material_id','supplier_order_id', 'qty', 'discount_amount');
	}
}
//9
class SupplierDiscountDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('material_id','supplier_id', 'min_qty', 'discount_percent');
		$this->setTable('supplier_discount');
	}
}
//10
class SupplierDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('supplier_id','company_name','contact_name','contact_job_title','company_phone','contact_phone','address_id','email');
		$this->setTable('supplier');
	}
}
//11
class ItemDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('item_id', 'qoh','calculated_qoh','name','original_price','current_price','min_price');
		$this->setTable('item');
	}
}
//12
class ReturnDetailsDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('return_id','item_id','qty');
		$this->setTable('return_details');
	}
}
//13
class ReturnsInventoryDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('return_id','item_id','return_date');
		$this->setTable('returns_inventory');
	}
}
//14
class CraftDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('craft_id','item_id');
		$this->table = 'craft';
	}
}
//15
class CraftMaterialsDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('material_id','craft_id');
		$this->setTable('craft_materials');
	}
}
//16
class UserDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('employee_id','password_hash', 'accessLevel');
		$this->setTable('user');
	}
}
//17
class ShipCostDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('ship_cost_id','ship_distance', 'ship_id', 'shipping_cost');
		$this->setTable('ship_cost');
	}
}
//18
class GiftShippingDatabaseObject extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('ship_id','address_id', 'gift_id');
	}
}
//19
class CustomOrderDatabaseObject extends OrderDatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('custom_order_id','order_id', 'comment', 'price_estimation');
		$this->setTable('custom_order');

	}
}
//20
class MaterialDatabaseObject extends ItemDatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('material_id','supplier_id', 'item_id', 'item_price','unit_price');
		$this->setTable('material');
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