
<?php
	require_once('forms_controller.php');
	require_once('models/database.php');
	class OrdersController 
	{
		public static $radioButtons = ['Sale', 'Custom Order', 'Gift Order'];
		public static $firstItem = "Sale";
		public static $TAX_RATE = 0.095; //To be used in $total calculations.
		public static $orderType;
		
		
		public static $orderColumns = array(
					'order_id' => NULL,
					'customer_id' => NULL,
					'employee_id' => NULL,
					'order_date' => NULL,
					'subtotal' => NULL,
					'tax_amount' => NULL,
					'total_price' => NULL,
					'order_type' => NULL
					);		
					
		public static $OrderDetailsColumns = array(
					'order_id' => NULL,
					'item_id' => NULL,
					'item_price' => NULL,
					'qty' => NULL
					);
					
		public static $GiftOrder = array(
					'gift_id' => NULL,
					'order_id' => NULL,
					'rec_last_name' => NULL,
					'rec_first_name' => NULL,
					'address_id' => NULL
					);		
					
		public static $address = array(
					'address_id' => NULL, 
					'street_number' => NULL,
					'street_suffix' => NULL,
					'street_name' => NULL,
					'street_type' => NULL,
					'street_direction' => NULL, 
					'address_type' => NULL,
					'address_type_identifier' => NULL,
					'minor_municipality' => NULL,
					'major_municipality' => NULL,
					'governing_district' => NULL,
					'zip' => NULL,
					'iso_country_code' => NULL
		);
		
		public static $GiftShipping = array(
					'ship_id' => NULL, 
					'address_id' => NULL,
					'gift_id' => NULL
		);
		
		public static $ShipCost = array(
					'ship_cost_id' => NULL,
					'ship_distance' => NULL,
					'ship_id' => NULL,
					'shipping_cost' => NULL
					);	
		
		public static $Customer = array(
					'customer_id' => NULL,
					'last_name' => NULL,
					'first_name' => NULL,
					'phone_number' => NULL,
					'email' => NULL,
					'address_id' => NULL
					);	
					
		public static $CustomItem = array(
					'item_id' => NULL,
					'qoh' => NULL,
					'calculated_qoh' => NULL,
					'name' => NULL,
					'original_price' => NULL,
					'current_price' => NULL,
					'min_price' => NULL
					);
					
		public static $CraftMaterials = array(
					'craft_id' => NULL,
					'material_id' => NULL
					);
					


		public function session($set)
		{
			
				switch($set)
				{
				case 'start':
					echo 'session_start();';
					break;

				case 'unset':
					echo 'session_unset();<br>';
					break;
				}
		}

		//This function is not a page, and handles requests by specific page functions
		public function enterorder()
		{
			$stageDBO = DatabaseObjectFactory::build('Item');
			$arr = ['item_id','name'];
			$items = $stageDBO->getRecords($arr); 

			$stageDBO = DatabaseObjectFactory::build('material');
			$stageDBO->SetJoin(["[><]item" => "item_id"]);
			$arr = ['material_id','name'];
			$materials = $stageDBO->getRecords($arr);
		
			require_once('views/pages/enterorder.php');
		}

		
		
		//This function grabs all the data from the 3 order forms, and calls the appropriate method in the order model.
		public function submitForm()
		{
			require('models/order.php');   //Get the Orders model
			$model = new Order();
			OrdersController::$orderType = $_POST['orderType'];  //Determine if it is a sale, custom order, or gift from the hidden field.
			
			
			//For sale orders, only 2 things need to be grabbed from the POST array: The items and their quantities.
			if(self::$orderType == 'sale')
			{
				self::$OrderDetailsColumns['item_id'] = $_POST['item'];
				self::$OrderDetailsColumns['qty'] = $_POST['quantity'];
				//print_r(self::$OrderDetailsColumns['item_id'] );
				//print_r(self::$OrderDetailsColumns['qty'] );

				$index = 0;
				foreach(self::$OrderDetailsColumns['item_id'] as $item)
				{
					self::$OrderDetailsColumns['item_price'][$index] = $model->getPrice($item);
					$index++;

				}
				
				self::$orderColumns['subtotal'] = self::calculateSubtotal(self::$OrderDetailsColumns['item_price'],self::$OrderDetailsColumns['qty']);  //calculates the subtotal based on items and their quantities
				self::$orderColumns['tax_amount'] = self::$orderColumns['subtotal'] * self::$TAX_RATE;
				self::$orderColumns['total'] = self::$orderColumns['subtotal'] + self::$orderColumns['tax_amount'];
				
				//Order::insertSale($items, $quantities);
			}
			
			else if(self::$orderType == 'gift') //Grab all the fields from the gift order form, then call the Order model.
			{
				//ITEMS ORDERED, STORED IN ARRAY
				self::$OrderDetailsColumns['item_id'] = $_POST['item'];
				
				//QUANTITIES OF THOSE ITEMS IN A PARALLEL ARRAY
				self::$OrderDetailsColumns['qty'] = $_POST['quantity'];
				
				//GETS THE ITEM PRICES OF ITEMS USING getPrice() FUNCTION. WILL PROBABLY CHANGE THIS FUNCTION?
				$index = 0;
				foreach(self::$OrderDetailsColumns['item_id'] as $item)
				{
					self::$OrderDetailsColumns['item_price'][$index] = $model->getPrice($item);
					$index++;
				}
				
				//RECIPIENT INFORMATION
				self::$GiftOrder['rec_last_name'] = $_POST['reclastName'];
				self::$GiftOrder['rec_first_name'] = $_POST['recfirstName'];
				
				//GRAB ADDRESS INFO HERE (2 times, one for customer and for Recipient). Parsing it seems....difficult. E
				
				//self::$GiftShipping['address_id']  This address id will have to reference the one that was inserted. Need to figure this out.
				
				//GET SHIPPING COST INFO
				self::$ShipCost['ship_distance'] = 'continental';
				if(self::$ShipCost['ship_distance'] == 'continental')
					self::$ShipCost['ship_cost'] = 5.00;
				else
					self::$ShipCost['ship_cost'] = 10.00;
				
				//GET CUSTOMER INFO
				self::$Customer['last_name'] = $_POST['lastName'];
				self::$Customer['first_name'] = $_POST['firstName'];
				self::$Customer['phone_number'] = $_POST['phone'];
				self::$Customer['email'] = $_POST['email'];
				
				//GET THE SUBTOTAL/TOTAL INFORMATION
				self::$orderColumns['subtotal'] = self::calculateSubtotal(self::$OrderDetailsColumns['item_price'],self::$OrderDetailsColumns['qty']);  //calculates the subtotal based on items and their quantities
				self::$orderColumns['tax_amount'] = self::$orderColumns['subtotal'] * self::$TAX_RATE;
				self::$orderColumns['total'] = self::$orderColumns['subtotal'] + self::$orderColumns['tax_amount'] + self::$ShipCost['ship_cost'];
				
			}
			
			else if(self::$orderType == 'custom')
			{
				//GET MATERIALS INFORMATION
				self::$CraftMaterials['material_id'] = $_POST['material'];
				
				//GRAB AND INSERT NEW ITEM INTO ITEM AND CRAFT TABLE
				self::$CustomItem['name'] = $_POST['itemName']; //Each custom craft will have its own item id and name.
				self::$OrderDetailsColumns['qoh'] = 0;
				
				//INSERT INTO THE CRAFT_MATERIALS TABLE USING THE CRAFT ID FROM ABOVE INSERT
				
				
				self::$orderColumns['subtotal'] = $items * $quantities;  //calculates the subtotal based on items and their quantities
				self::$orderColumns['tax_amount'] = self::$orderColumns['subtotal'] - self::$orderColumns['subtotal'] * self::$TAX_RATE;
				self::$orderColumns['total'] = self::$orderColumns['subtotal'] + self::$orderColumns['tax_amount']; //The total price of the order
				
				//GET CUSTOMER INFORMATION
				
				//GET CUSTOM_ORDER INFORMATION
				
				//INSERT ALL THE ORDER INFORMATION HERE
			}
			
			else {
				echo 'Submit Form Error';
			}
			
			include('views/pages/confirmOrder.php');
			}
			
		public function calculateSubtotal($itemPrices, $quantities)
		{	
			$subtotal = 0;
			$index = 0;
			foreach($itemPrices AS $price)
			{
				$subtotal += $itemPrices[$index] * $quantities[$index];
				$index++;
			}
			
			
			return round($subtotal,2);
		}
		
		public function confirm()
		{
			//TESTING: echo 'item id: '.self::$OrderDetailsColumns['item_id'][0];
		}
	
	
		
		//find order page action
		public function findorder()
		{
			require_once('views/pages/findorder.php');
			$xxx = 'xxxxxx';
			$formidnames = ['Customer Name:', 'Order Date:', 'Items Charged:', 'Total:'];

			foreach($formidnames as $formidname)
			{
				print $formidname.'&nbsp&nbsp.&nbsp.&nbsp'.$xxx.'<br>';
			}


		}
		
		//look up order page action
		public function lookuporder()
		{
			//make array for form id names
			$formidnames = ['Order ID','Customer Name','Order Date'];
			//function lookuporder()
			require_once('views/pages/lookuporder.php');
			//print all form fields 
			print "<form action='?controller=order&action=findorder' method='post'>";
			foreach ($formidnames as $formidname){
		  		print $formidname;
		  		print "<input type='text' name='filter'><br>";
  			}
  			print "<input type='submit' value='Find Order'>";
			print "<input type='button' value='Cancel'>";
			print "</form>";
		}

		public function returnorder()
		{
			require_once('views/pages/returnItem.php');
		}
		
		public function drawForm($orderType)
		{
			if($orderType == 'custom')
			{
				print "<form action = '?controller=order&action=submitForm' method='post'>";
			}
		}
		
		public function drawReturnForm()
		{
			print "<form>";
				print "<h4>Return Item</h4>";
				for($index = 0; $index < count(FormsController::$ReturnItemForm); $index++)
					print "<label>" . FormsController::$ReturnItemForm[$index]['label'] . " <input type = '". FormsController::$ReturnItemForm[$index]['type'] . "'name = '".FormsController::$ReturnItemForm[$index]['name'] . "'></label><br>";
			
			print "<input type='button' class = 'button redButton' value='Cancel'/> <input class='button blueButton' type='submit' value='Next'/>";
			print "</form>";
		}
		
		public function manageorders()
		{
			$stageDBO = DatabaseObjectFactory::build('order');
			$arr = ['gift_id', 'order.order_id', 'rec_last_name','rec_first_name','order_date','last_name','first_name','total_price'];
			$stageDBO->SetJoin(['[><]gift_order' => 'order_id', '[><]customer' => 'customer_id']);
			$gifts = $stageDBO->getRecords($arr);
			
			$stageDBO = DatabaseObjectFactory::build('custom_order');
			$arr = ['custom_order_id','order_id','comment','price_estimation'];
			$customs = $stageDBO->getRecords($arr);
			
			
			require_once('views/pages/manageorder.php');
		}
		
		public function editGift()
		{
			$gift_id = $_POST['gift_id'];
			$stageDBO = DatabaseObjectFactory::build('gift_order');
			$stageDBO->SetJoin(['[><]order' => 'order_id', '[><]customer' => 'customer_id']);
			$arr = ['gift_id','order_id','rec_last_name', 'rec_first_name'];
			$gifts = $stageDBO->getRecords($arr);
			
			include('views/pages/editGift.php');
		}
		
		public function editCustom()
		{
			$custom_order_id = $_POST['custom_id'];
			$stageDBO = DatabaseObjectFactory::build('custom_order');
			$arr = ['custom_order_id','order_id','comment', 'rec_first_name'];
			$gifts = $stageDBO->getRecords($arr);
			
			include('views/pages/editGift.php');
		}
}

