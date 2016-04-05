<?php
class Order
{
	//This function inserts sale orders into the database, as well as all the order details
	
	public function getItems()
	{
		include('../../connection.php');
		$database = databaseConnection::getInstance(); 
		$dataset = array();
		$dataset = $database->select("item", ["name", "item_id", "current_price"], [
			"LIMIT" => 20,
			"ORDER" => "name ASC"
		]);
		
		return $dataset;
	}
	
	public function getPrice($item_id)
	{
		$database = dataBaseConnection::getInstance(); 
		$dataset = $database->query('SELECT current_price FROM item WHERE item_id='.$item_id)->fetchAll(); //This query grabs the current price of one item
		return $dataset[0]['current_price'];  //This returns the current price of the item as a single value instead of a result set.
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
