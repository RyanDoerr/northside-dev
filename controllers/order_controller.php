
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
			require('views/pages/enterorder.php');
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
			$orderType = $_POST['orderType'];  //Determine if it is a sale, custom order, or gift from the hidden field.
			
			
			//For sale orders, only 2 things need to be grabbed from the POST array: The items and their quantities.
			if($orderType == 'sale')
			{
				$items = $_POST['item'];
				$quantities = $_POST['quantity'];
				$index = 0;
				foreach($items as $item) //This will store the current price of the item into a parallel array along with the array of items.
				{
					$itemPrices[$index] = $model->getPrice($item);
					$index++;
				}
				
			
				$subtotal = OrdersController::calculateSubtotal($itemPrices,$quantities);  //calculates the subtotal based on items and their quantities
				$tax_amount = $subtotal * self::$TAX_RATE; //Stores the tax amount using the TAX_RATE of this class
				$total = $subtotal + $tax_amount; //The total price of the order
				//Order::insertSale($items, $quantities);
			}
			
			else if($orderType == 'gift') //Grab all the fields from the gift order form, then call the Order model.
			{
				$items = $_POST['item'];
				$quantities = $_POST['quantity'];
				$firstName = $_POST['firstName'];
				$lastName = $_POST['lastName'];
				$addressLine1 = $_POST['addressLine1'];
				if(isset($_POST['addressLine2']))
					$addressLine2 = $_POST['addressLine2'];
				else $addressLine2 = NULL;
				$addressType = $_POST['addressType'];
				$city = $_POST['city'];
				$state = $_POST['state'];
				$zip = $_POST['zip'];
				$email = $_POST['email'];
				$phone = $_POST['phone'];
				
				$index = 0;
				
				//This will store the current price of the item into a parallel array along with the array of items.
				foreach($items as $item)
				{
					$itemPrices[$index] = $model->getPrice($item); 
					$index++;
				}
				
				//if(isset($_POST['pobox'])
				//	$pobox = $_POST['pobox'];
				$subtotal = OrdersController::calculateSubtotal($itemPrices,$quantities);  //calculates the subtotal based on items and their quantities
				$tax_amount = $subtotal - $subtotal * self::$TAX_RATE; //Stores the tax amount using the TAX_RATE of this class
				$total = $subtotal + $tax_amount; //The total price of the order
				//Order::insertGiftOrder($items,$quantities,$firstName,$lastName,$phone,$email,$addressLine1, $addressType, $city,$state,$zip);
			}
			
			else if($orderType == 'custom')
			{
				$items = $_POST['itemName']; //Each custom craft will have its own item id and name.
				$quantities = $_POST['itemQuantity'];
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

