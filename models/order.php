<!--This whole model might just get deleted, but keeping it for now so I can reference some of the queries I used-->

<?php
require_once('models/database.php'); 
class Order
{
	//This function inserts sale orders into the database, as well as all the order details
	

	public function getItems()
	{
		$stageDBO = DatabaseObjectFactory::build('item');
		$arr = ['item_id','name','current_price'];
		$items = $stageDBO->getRecords($arr);
		
		//return $items;
	}
	
	public function getPrice($item_id)
	{
		$stageDBO = DatabaseObjectFactory::build('item');
		$arr = ['current_price'];
		$itemPrice = $stageDBO->getRecords($arr,['item_id' => $item_id]);
		return $itemPrice[0]['current_price'];
		
	}
	
	public function getMaterials()
	{

		$stageDBO = DatabaseObjectFactory::build('material');
		$stageDBO->setJoin("'[>]item' => 'item_id'");
		$arr = ['material_id','name'];
		$materials = $stageDBO->getRecords($arr);
		//print_r($materials);


		/*include('../../connection.php');
		$database = databaseConnection::getInstance(); 
		$dataset = array();
		$dataset = $database->query("SELECT name, material.material_id, item.item_id FROM Material, Item WHERE Material.item_id = Item.item_id
									ORDER BY name ASC")->fetchAll();*/
		return $materials;
	}
	
	public function insertSale($items = '', $quantities = '') 
	{
		$database = dataBaseConnection::getInstance(); //connect to database
		$i = 0;
		
		$database->insert("order", $_SESSION['orderInsert']);

		//$_SESSION
			//"employee_id" => $_SESSION["employee_id"],
			//"order_date" => $_SESSION["order_date"],
			//"subtotal" => $_SESSION["subtotal"],
			//"tax_amount" => 5.00,
			//"total_price" => 55.00,
			//"order_type" => 'sale'
		
		
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
		
	}
	
	public function insertGiftOrder($items, $quantities, $firstName, $lastName, $phone, $email, $addressLine1, $addressType, $city, $state, $zip)
	{
		$database = dataBaseConnection::getInstance(); //connect to database
		$i = 0;
		$database->insert("address", [
			"address_id" =>  NULL
		]);
		
		//INSERT INTO CUSTOMER TABLE FIRST
		$database->insert("customer", [
			"customer_id" => 25,
			"last_name" => $lastName,
			"first_name" => $firstName,
			"phone_number" => $phone,
			"email" => $email
		]);

		$database->insert("order", [
			"order_id" => 5002,
			"employee_id" => 2000,
			"order_date" => date("F j, Y, g:i a"),
			"subtotal" => 50.00,
			"tax_amount" => 5.00,
			"total_price" => 55.00,
			"order_type" => 'gift'
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
		
	
	}
	
}
