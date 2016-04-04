<?php
class Order
{
	//This function inserts sale orders into the database, as well as all the order details
	
	public function getItems()
	{
		include('../../connection.php');
		$database = databaseConnection::getInstance(); 
		$dataset = array();
		$dataset = $database->select("item", ["name", "item_id"], [
			"LIMIT" => 20,
			"ORDER" => "name ASC"
		]);
		return $dataset;
	}
	
	public function getMaterials()
	{
		include('../../connection.php');
		$database = databaseConnection::getInstance(); 
		$dataset = array();
		$dataset = $database->query("SELECT name, material.material_id, item.item_id FROM Material, Item WHERE Material.item_id = Item.item_id
									ORDER BY name ASC")->fetchAll();
		return $dataset;
	}
	
	public function insertSale($items, $quantities) 
	{
		$database = dataBaseConnection::getInstance(); //connect to database
		//$dataset = array(); //turn dataset into an array, only needed for select statements, etc.
		$i = 0;
		
		
		$database->insert("order", [
			"order_id" => 5002,
			"employee_id" => 2000,
			"order_date" => date("F j, Y, g:i a"),
			"subtotal" => 50.00,
			"tax_amount" => 5.00,
			"total_price" => 55.00,
			"order_type" => 'sale'
		]);
		
		foreach($items as $item)
		{
			echo $item;
			echo 'foreach';
			$database->insert("order_details", [
				"order_id" => 5002,
				"item_id" => 5000+$i,
				"item_price" => 5.00,
				"qty" => $quantities[$i]
		]);
		$i++;
		}
		
		//$employee_id = PagesController::getEmployee();
		//print_r($employee_id);
		
		//echo $_SESSION['employee_id'];
		//INSERT INTO Order VALUES 
		
		/*$dataset = $database->select("item", ["name", 'item_id']);
		
		foreach((array) $dataset as $result)
			{
				
				echo $result['name']."<br>";
				echo $result['item_id']."<br>";
				
			}
		echo "selectStuff was called: ";
		*/
		//return $dataset;
		
	}
	
}
