<?php
//select($table, $columns, $where)
require_once('connection.php');

//$database_db = databaseConnection::getInstance();
//Experimental
// $data = array(
// 	[0] => array(
// 		"post_user_id" => "1",
// 		"account_user_id" => "321"
// 	),
// 	[1] => array(
// 		"post_user_id" => "2",
// 		"account_user_id" => "322"
// 	)
// )
//This is probably a heavy performance hit, but I'm gonna play with it anyway
/*
                             \
                              \
                               \\
                                \\
                                 >\/7
                             _.-(6'  \
                            (=___._/` \
                                 )  \ |
                                /   / |
                               /    > /
                              j    < _\
                          _.-' :      ``.
                          \ r=._\        `.
                         <`\\_  \         .`-.
                          \ r-7  `-. ._  ' .  `\
                           \`,      `-.`7  7)   )
                            \/         \|  \'  / `-._
                                       ||    .'
                                        \\  (
		                                 >\  >
                                     ,.-' >.'
                                    <.'_.''
                                      <'
                                                                                   
                                                                                   
                                                                                   
         ,--,               ,--,                                                   
       ,'_ /|       ,---, ,--.'|               ,---.    __  ,-.      ,---,         
  .--. |  | :   ,-+-. /  ||  |,               '   ,'\ ,' ,'/ /|  ,-+-. /  |        
,'_ /| :  . |  ,--.'|'   |`--'_       ,---.  /   /   |'  | |' | ,--.'|'   |        
|  ' | |  . . |   |  ,"' |,' ,'|     /     \.   ; ,. :|  |   ,'|   |  ,"' |        
|  | ' |  | | |   | /  | |'  | |    /    / ''   | |: :'  :  /  |   | /  | |        
:  | | :  ' ; |   | |  | ||  | :   .    ' / '   | .; :|  | '   |   | |  | |        
|  ; ' |  | ' |   | |  |/ '  : |__ '   ; :__|   :    |;  : |   |   | |  |/         
:  | : ;  ; | |   | |--'  |  | '.'|'   | '.'|\   \  / |  , ;   |   | |--'          
'  :  `--'   \|   |/      ;  :    ;|   :    : `----'   ---'    |   |/              
:  ,      ____'---'       |  ,   /  \   \  /                   '---'               
 `--`---,'  , `.           ---`-'    `----'                                        
     ,-+-,.' _ |                        ,--,                                       
  ,-+-. ;   , ||                      ,--.'|                                       
 ,--.'|'   |  ;|             ,----._,.|  |,                                        
|   |  ,', |  ':  ,--.--.   /   /  ' /`--'_       ,---.                            
|   | /  | |  || /       \ |   :     |,' ,'|     /     \                           
'   | :  | :  |,.--.  .-. ||   | .\  .'  | |    /    / '                           
;   . |  ; |--'  \__\/: . ..   ; ';  ||  | :   .    ' /                            
|   : |  | ,     ," .--.; |'   .   . |'  : |__ '   ; :__                           
|   : '  |/     /  /  ,.  | `---`-'| ||  | '.'|'   | '.'|                          
;   | |`-'     ;  :   .'   \.'__/\_: |;  :    ;|   :    :                          
|   ;/         |  ,     .-./|   :    :|  ,   /  \   \  /                           
'---'           `--`---'     \   \  /  ---`-'    `----'                            
      ,----,     ,----..      `-,---,                                              
    .'   .' \   /   /   \    ,`--.' |    ,---.                                     
  ,----,'    | /   .     :  /    /  :   /     \                                    
  |    :  .  ;.   /   ;.  \:    |.' '  /    / '                                    
  ;    |.'  /.   ;   /  ` ;`----':  | .    ' /                                     
  `----'/  ; ;   |  ; \ ; |   '   ' ;'    / ;                                      
    /  ;  /  |   :  | ; | '   |   | ||   :  \                                      
   ;  /  /-, .   |  ' ' ' :   '   : ;;   |   ``.                                   
  /  /  /.`| '   ;  \; /  |   |   | ''   ;      \                                  
./__;      :  \   \  ',  /    '   : |'   |  .\  |                                  
|   :    .'    ;   :    /     ;   |.'|   :  ';  :                                  
;   | .'        \   \ .'      '---'   \   \    /                                   
`---'            `---`                 `---`--`                                    
                                                                                   
*/
class UnicornMagic {
	protected $magic_relationships = array(
											"ship_cost"	  			=> 			array("ship_id"),										//1
											"gift_shipping"	 	    => 			array("ship_id", "address_id", "gift_id"),				//2
											"address" 				=> 			array("address_id"),									//3
											"customer" 				=> 			array("customer_id", "address_id"),						//4
											"gift_order" 			=> 			array("order_id", "address_id"),						//5
											"custom_order" 			=> 			array("order_id"),										//6
											"user" 					=> 			array("employee_id"),									//7
											"local_vendors" 		=> 			array("address_id"),									//8
											"returns_inventory"		=> 			array("return_id","order_id"),							//9
											"order" 				=>			array("order_id","customer_id","employee_id"),			//10
											"order_details" 		=> 			array("order_id","item_id"),							//11
											"item" 					=>			array("item_id"),										//12
											"craft" 				=>			array("item_id", "craft_id"),							//13
											"craft_materials"		=>			array("material_id", "craft_id"),						//14
											"material"				=>			array("material_id","supplier_id","item_id"),			//15
											"supplier_order"		=>			array("supplier_order_id","employee_id","supplier_id"), //16
											"order_materials"		=>			array("material_id", "supplier_order_id"),				//17
											"supplier_discount"		=>			array("material_id", "supplier_id"),					//18
											"supplier"				=>			array("supplier_id", "address_id"),						//19
											"employee"				=>			array("employee_id","address_id"),						//20
											"return_details"		=>			array("return_id", "item_id"));
	protected $iterator;

	protected function setIterator(){
		$this->iterator = 0;
	}
/*
// Multiple condition
	"[>]account" => [
		"author_id" => "user_id",
		"album.user_id" => "user_id"
	]
], [
	"post.post_id",
	"post.title",
	"account.user_id",
	"account.city",
	"replyer.user_id",
	"replyer.city"
], 
$database->select("account", "user_name", [
	"email" => "foo@bar.com"
]);
// WHERE email = 'foo@bar.com'
bool in_array ( mixed $needle , array $haystack [, bool $strict = FALSE ] )
*/
//todo: array intersect
 //['[><]gift_order' => ['order_id']] 
	public function doMagic($table, $where_tables){

		if (is_array($where_tables)){
			$i = 0;
			foreach($where_tables as $where_table){
				$found_arr[$i] = $this->magic_relationships($where_table);

				if (($i % 2 == 0) && ($i > 0)) {
					$found_intersect = array_intersect($found_arr[$i], $found_arr[$i-1]);
					$appended_intersected_columns[$i/2] += array('[><]'.$table => $found_intersect);
				}
				$i++;
			}
			$anded_appended_intersected_columns = array("AND" => $appended_intersected_columns);

		}
		else{
			$found_intersect = array_intersect($this->magic_relationships[$table],$this->magic_relationships[$where_tables]);
			$appended_intersected_columns = array('[><]'.$where_tables => $found_intersect[0]);
			//$anded_appended_intersected_columns = array("AND" => $appended_intersected_columns);
			$anded_appended_intersected_columns = $appended_intersected_columns;
			//$anded_appended_intersected_columns = array_values($anded_appended_intersected_columns);
		}
		//return $anded_appended_intersected_columns;
		//$anded_appended_intersected_columns = array( "AND" => $anded_appended_intersected_columns);
		return $anded_appended_intersected_columns;

	}
}



//end->experiment
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
		//echo "<br>"."where array:";
		//var_dump($this->where);
		if ($this->where != ""){
			$where = $this->where;
			/*
			echo "<br>";
			echo "<br>";
			var_dump($this->table);
			echo "<br>";
			echo "<br>";
			var_dump($columns);
			echo "<br>";
			echo "<br>";
			var_dump($where);
			//$this->data_set = $this->database_db->select('order', ['[><]gift_order' => ['order_id']] , 'order_id' );
			*/
			$this->data_set = $this->database_db->select($this->table, $where, $columns);
			//$this->data_set = $this->database_db->select($this->table, $columns, $where);
		}
		else {
			$this->data_set = $this->database_db->select($this->table, $columns);
		}
		//echo "<br>"."returned data set:";
		//var_dump($this->data_set);
		return $this->data_set;
		
		

		/*
		if (!empty($where)){
				if ($this->join){
					$this->where = $where;
					$this->data_set = $this->database_db->select($this->table, $columns, $where);
				}
			//$this->where = $where;
			$this->data_set = $this->database_db->select($this->table, $columns, $where);
		}
		*/

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
	/*
	public function setJoin($joinTable, $joinColumn){
		if ($this->join){
			$this->joinQuery += array($joinTable, $joinColumn, $joinTable.$joinColumn);
		}
		else {
			$this->join = true;
			$this->joinQuery = array($joinTable, $joinColumn, $joinTable.$joinColumn);
		}
	}
	*/
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
/*	           _.  
            ;=',_  
           S" .--` 
          sS  \__  
       __.' ( \--> 
    _=/    _./-\/  
   ((\( /-'   -'l  
    ) |/ \\    
      \\  \ 
        `~ `~
*/
	public function UnicornMagic($where_tables){
		if ($this->table != ""){
			$unicorn = /*summon*/ new UnicornMagic();
			$where = $unicorn->doMagic($this->table, $where_tables);
			$this->where = $where;
			//var_dump($where);
		}
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
class Customer extends DatabaseObject {
	function __construct(){
		parent::__construct();
		$this->field_set = array('customer_id','last_name','first_name','phone_number','email','address_id');

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