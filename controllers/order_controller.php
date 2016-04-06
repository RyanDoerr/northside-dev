
<?php
	class OrdersController 
	{
							//This will insert sessionstart into necessary pages
									//This may have to switch to a switch statement for efficiency reasons, but for now let's go with it.
									//Inventory English Field Names
		public static $displayNames = array('inventoryMaterialsFirst' 			=> ['Material ID', 'Material Name', 'Quantity', 'Unit Price'], 
						 			 'inventoryCraftsFirst'  			=> ['Craft ID', 'Craft Name', 'Current Price', 'Quantity'],
						 			 'inventoryReturnsFirst' 			=> ['Item ID', 'Item Name', 'Order ID', 'Quantity', 'Current Price'],
						 			 //Sales English Field Names
						 			 'OrderSalesFirst'					=> ['Order ID','Employee Name','Sale Date','Subtotal','Tax Amount','Total Cost'],
						 			 'OrderCustomFirst'					=> ['Custom Order ID', 'Order ID', 'Employee Name', 'Order Date', 'Estimated Price', 'Total Price'],
						 			 'OrderGiftFirst'					=> ['Gift Order ID','Employee Name','Sale Date','Subtotal','Tax Amount','Total Cost'],
						 			 //View Sale Order
						 			 'OrderSalesView'					=>['Item ID', 'Item Name', 'Item Price', 'Quantity'],
						 			 'OrderCustomView'					=>['Material ID', 'Material Name', 'Unit Price'],

						             );
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
			require_once('views/pages/enterorder.php');
		}

		public function drawRadioButtons(){

			

			print "<form>";

			foreach(OrdersController::$radioButtons as $radioButton)
			{
				print "<input type='radio' name='ordertype' value='".strtolower(str_replace(' ', '', $radioButton))."'";
				if ($radioButton == OrdersController::$firstItem)
				{
					echo "checked";
				}
				print ">".$radioButton;
			}

			print "<br><input type='button' class='button' id='loadform' value='Next'>";
			print "</form>";
			print "<div id='orderform'>";
			print "</div>";
			//Get the value out of the radio button
			$jQueryScript = "<script>
				$(document).ready(function(){
								$('input[type=button]').click(function(){
									
									var ordertypejs = $('input[name=ordertype]:checked').val();
									switch (ordertypejs){
										case 'sale':
											$('#orderform').load('views/pages/enterordersale.php');
										break;
										case 'customorder':
											$('#orderform').load('views/pages/enterordercustom.php');
										break;
										case 'giftorder':
											$('#orderform').load('views/pages/enterordergift.php');
										break;

									}
								});
								
								
									
				
								
							});
							</script>";
			echo $jQueryScript;

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
				self::$orderColumns['total'] = self::$orderColumns['subtotal'] + self::$orderColumns['tax_amount'];
				
			}
			
			else if($orderType == 'custom')
			{
				$items = $_POST['itemName']; //Each custom craft will have its own item id and name.
				$quantities = $_POST['itemQuantity'];
				$subtotal = $items * $quantities;  //calculates the subtotal based on items and their quantities
				$tax_amount = $subtotal - $subtotal * self::$TAX_RATE; //Stores the tax amount using the TAX_RATE of this class
				$total = $subtotal + $tax_amount; //The total price of the order
				//TO BE CONTINUED....
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
	
		//This function gets all the items/materials to be used in the enterorder pages.
		public function getItems($orderType)
		{
			require('../../models/order.php');   //Get the Orders model
			$model = new Order();
			
			if($orderType == 'sale' || $orderType == 'gift')  //Both sales and gifts use items
			{
				$dataset = $model->getItems();
				return $dataset;
			}
			
			else if($orderType == 'custom')  //Custom orders are made of materials, so this returns a materials result set.
			{
				$dataset = $model->getMaterials();
				return $dataset;
			}
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
			require('views/pages/lookuporder.php');
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

}

