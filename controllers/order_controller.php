
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
				self::$CraftMaterials['material_id'] = $_POST['material']; // Get all the material id's into array.
				
				$index = 0;
				self::$OrderDetailsColumns['item_price'] = $_POST['estimatedPrice'];  //Get the user-entered price estimate.
				
				self::$CustomItem['name'] = $_POST['itemName']; //Each custom craft will have its own item id and name.
				self::$OrderDetailsColumns['qoh'] = $_POST['itemQuantity']; //The quantity of the custom craft.  				
				
				self::$orderColumns['subtotal'] = self::$OrderDetailsColumns['item_price'] * self::$OrderDetailsColumns['qoh'];  //calculates the subtotal based on the custom item and its quantity
				self::$orderColumns['tax_amount'] = self::$orderColumns['subtotal']  * self::$TAX_RATE;
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
			$filter = array();
			$orderID = $_POST['order_id'];
			$lastName = $_POST['last_name'];
			$order_date = $_POST['order_date'];

			//CHECKING WHAT FILTERS ARE APPLIED
			if(!empty($orderID) && !empty($lastName) && !empty($order_date))
			{
				$filter['order_id'] = $orderID;
				$filter['order_date'] = $orderDate;
				$filter['last_name'] = $lastName;
				
			}
			else if(!empty($orderID) && empty($lastName) && empty($order_date))
		    {
			 	unset($filter['last_name']);
			 	$filter['order_id'] = $orderID;
		    	unset($filter['order_date']);
			}

		    else if(empty($orderID) && !empty($lastName) && empty($order_date))
		    {
			 	$filter['last_name'] = $lastName;
			 	unset($filter['order_id']);
		    	unset($filter['order_date']);
			}

			else if(empty($orderID) && empty($lastName) && !empty($order_date))
		    {
			 	$filter['order_date'] = $order_date;
			 	unset($filter['order_id']);
		    	unset($filter['last_name']);
			}

			else if(!empty($orderID) && empty($lastName) && !empty($order_date))
		    {
			 	$filter['order_date'] = $order_date;
			 	$filter['order_id'] = $orderID;
		    	unset($filter['last_name']);
			}

			else if(empty($orderID) && !empty($lastName) && !empty($order_date))
		    {
			 	$filter['order_date'] = $order_date;
			 	$filter['last_name'] = $lastName;
		    	unset($filter['order_id']);
			}

			else if(!empty($orderID) && !empty($lastName) && empty($order_date))
		    {
			 	$filter['order_id'] = $orderID;
			 	$filter['last_name'] = $lastName;
		    	unset($filter['order_date']);
			}



			require_once('views/pages/findorder.php');
			$stageDBO = DatabaseObjectFactory::build('order');
			$arr = ['order_id','customer_id','first_name','last_name','order_date','total_price'];
			$stageDBO->SetJoin(['[><]customer' => 'customer_id']);
			if(count($filter) > 1) //More than one filter needs an AND statement
			{
				$order = $stageDBO->getRecords($arr, ["AND" => $filter]);
			}

			else //when there is only one filter, no and statement is required
			{
				$order = $stageDBO->getRecords($arr, $filter);
			}

			
	
			if(count($order) == 0) //When no orders are returned to the $order variable
			{
				print "<h3>No Orders Found</h3>";
			}

			else if(count($order) > 1) //With multiple results usually found on Order Date or Name searches. 
			{
				print "<table><th>Order ID</th><th>Customer Name</th><th>Order Date</th><th>Total Price</th>";
				foreach($order as $o)
				{
					print "<tr><td>
					<form action='?controller=order&action=viewOrder' method= 'post'>
						<input type='submit' class = 'button' value='View Order ".$o['order_id']."'>
						<input type='hidden' name='orderID' value='".$o['order_id']."'>
					</form></td>";
					print "<td>".$o['first_name'] . " " . $o['last_name']."</td>";
					print "<td>".$o['order_date'] . "</td>";
					print "<td>".$o['total_price']."</td></tr>";
					
				}

				print "</table>";
			}

			else  //For when the order returned is only 1.
			{	
				print "<table><th>Order ID</th><th>Customer Name</th><th>Order Date</th><th>Total Price</th>";

				if(!empty($order[0]['customer_id'])) //For Orders that have customer information
				{	$stageDBO = DatabaseObjectFactory::build('order_details');
					$arr = ['item_id', 'name', 'item_price', 'qty'];
					$stageDBO->SetJoin(['[><]item' => 'item_id']);
					$items = $stageDBO->getRecords($arr, ['order_id' => $order[0]['order_id']]);
					print "<tr><td>".$order[0]['order_id']."</td>";
					print "<td>".$order[0]['first_name'] . " " . $order[0]['last_name']."</td>";
					print "<td>".$order[0]['order_date'] ."</td>";
					print "<td>".$order[0]['total_price']."</td>";
					print "</table>";

					print "<h4>Items on Order ".$order[0]['order_id'].":</h4>";
					print "<table><th>Item ID</th><th>Item Name</th><th>Item Price</th><th>Quantity</th>";

					foreach ($items as $item) {
						print "<tr><td>".$item['item_id']."</td>
							  <td>".$item['name']."</td>
							  <td>".$item['item_price']."</td>
							  <td>".$item['qty']."</td></tr>";
					}

					print "</table>";
				}

				else  //FOR SALE ORDERS, which have no Customer Information
				{
					$stageDBO = DatabaseObjectFactory::build('order');
					$arr = ['order_id','order_date','total_price'];
					$order = $stageDBO->getRecords($arr,$filter);

					$stageDBO = DatabaseObjectFactory::build('order_details');
					$arr = ['item_id', 'name', 'item_price', 'qty'];
					$stageDBO->SetJoin(['[><]item' => 'item_id']);
					$items = $stageDBO->getRecords($arr, ['order_id' => $order[0]['order_id']]);
					print "<tr><td>".$order[0]['order_id']."</td>";
					print "<td>N/A</td>";
					print "<td>".$order[0]['order_date'] ."</td>";
					print "<td>".$order[0]['total_price']."</td>";
					print "</table>";

					print "<h4>Items on Order ".$order[0]['order_id'].":</h4>";
					print "<table><th>Item ID</th><th>Item Name</th><th>Item Price</th><th>Quantity</th>";

					foreach ($items as $item) {
						print "<tr><td>".$item['item_id']."</td>
							  <td>".$item['name']."</td>
							  <td>".$item['item_price']."</td>
							  <td>".$item['qty']."</td></tr>";
					}

					print "</table>";
				}
			}

			


		}
		
		public static function viewOrder() //When there are multiple results for a Look Up Order, this page will show the details when the View Order # button is selected to show the specific items on that order.
		{
			$orderID = $_POST['orderID'];

			$stageDBO = DatabaseObjectFactory::build('order');
			$arr = ['order_id','first_name','last_name','order_date','total_price'];
			$stageDBO->SetJoin(['[><]customer' => 'customer_id', '[><]order_details' => 'order_id']);
			$order = $stageDBO->getRecords($arr, ['order_id' => $orderID]);

			$stageDBO = DatabaseObjectFactory::build('order_details');
			$arr = ['item_id', 'name', 'item_price', 'qty'];
			$stageDBO->SetJoin(['[><]item' => 'item_id']);
			$items = $stageDBO->getRecords($arr, ['order_id' => $orderID]);


				print "<table>";
				print "<tr><td>".$order[0]['order_id']."</td>";
				print "<td>".$order[0]['first_name'] . " " . $order[0]['last_name']."</td>";
				print "<td>".$order[0]['order_date'] ."</td>";
				print "<td>".$order[0]['total_price']."</td>";
				print "</table>";

				print "<h4>Items on Order ".$order[0]['order_id'].":</h4>";
				print "<table><th>Item ID</th><th>Item Name</th><th>Item Price</th><th>Quantity</th>";

				foreach ($items as $item) {
					print "<tr><td>".$item['item_id']."</td>
						  <td>".$item['name']."</td>
						  <td>".$item['item_price']."</td>
						  <td>".$item['qty']."</td></tr>";
				}

				print "</table>";

		}
		//look up order page action
		public function lookuporder()
		{
			//make array for form id names
			$formidnames = ['Order ID','Customer Last Name','Order Date'];
			$formNames = ['order_id','last_name', 'order_date'];
			//function lookuporder()
			require_once('views/pages/lookuporder.php');
			//print all form fields 
			print "<form action='?controller=order&action=findorder' method='post'>";
			$index = 0;
			foreach ($formidnames as $formidname){
		  		print $formidname;
		  		print "<input type='text' name='".$formNames[$index]."'><br>";
		  		$index++;
  			}
  			print "<a href='?controller=menus&action=mainMenu&subMenu=Order'><input type='button' class = 'button redButton' value='Cancel'/></a> ";
  			print "<input type='submit' class='button blueButton' value='Find Order'>";
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
			
			print "<a href='?controller=menus&action=mainMenu&subMenu=Order'><input type='button' class = 'button redButton' value='Cancel'/></a> <input class='button blueButton' type='submit' value='Next'/>";
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
			$stageDBO->SetJoin(['[><]address' => 'address_id','[><]order' => 'order_id', '[><]customer' => 'customer_id']);
			$arr = ['gift_id','order_id','rec_last_name', 'rec_first_name','last_name','first_name','street_number','street_name','street_type','major_municipality','governing_district','iso_country_code','zip'];
			$gifts = $stageDBO->getRecords($arr, ['gift_id'=>$gift_id]);
			
			include('views/pages/editGift.php');
		}
		
		public function editCustom()
		{
			$custom_order_id = $_POST['custom_id'];
			$stageDBO = DatabaseObjectFactory::build('custom_order');
			$stageDBO->SetJoin(['[><]order' => 'order_id', '[><]customer' => 'customer_id']);
			$arr = ['custom_order_id','order_id','comment', 'first_name','last_name'];
			$custom = $stageDBO->getRecords($arr);
			
			include('views/pages/editCustom.php');
		}

		public static function updateGift()
		{
			
		}
}

