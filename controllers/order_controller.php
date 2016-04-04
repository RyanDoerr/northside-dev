
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
		
		
		
		public function submitForm()
		{
			require('models/order.php');   //Get the Orders model
			$model = new Order();
			$orderType = $_POST['orderType'];  //Determine if it is a sale, custom order, or gift from the hidden field.
			
			
		
			if($orderType == 'sale')
			{
				$items = $_POST['item'];
				$quantities = $_POST['quantity'];
				//Order::insertSale($items, $quantities);
			}
			
			else if($orderType == 'gift')
			{
				$items = $_POST['item'];
				$quantities = $_POST['quantity'];
				$firstName = $_POST['firstName'];
				$lastName = $_POST['lastName'];
				$addressLine1 = $_POST['addressLine1'];
			}
			
			else {
				echo 'Submit Form Error';
			}
			
			include('views/pages/confirmOrder.php');
			}
	
		public function drawForm($orderType)
		{
			require('../../models/order.php');   //Get the Orders model
			$model = new Order();
			
			if($orderType == 'sale' || $orderType == 'gift')
			{
				$dataset = $model->getItems();
				return $dataset;
			}
			
			else if($orderType == 'custom')
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

//	require_once('models/dataBaseModel.php');
/*	class OrdersController 
	{

//This will insert sessionstart into necessary pages
									//This may have to switch to a switch statement for efficiency reasons, but for now let's go with it.
									//Inventory English Field Names
		public static $displayNames = array('inventoryMaterialsFirst' 			=> ['Material ID', 'Material Name', 'Quantity', 'Unit Price'], 
						 			 'inventoryCraftsFirst'  			=> ['Craft ID', 'Craft Name', 'Current Price', 'Quantity'],
						 			 'inventoryReturnsFirst' 			=> ['Item ID', 'Item Name', 'Order ID', 'Quantity', 'Current Price'],
						 			 //Sales English Field Names
						 			 'OrderSalesFirst'					=> ['Sale ID','Employee Name','Sale Date','Subtotal','Tax Amount','Total Cost'],
						 			 'OrderCustomFirst'					=> ['Custom Order ID', 'Order ID', 'Employee Name', 'Order Date', 'Estimated Price', 'Total Price'],
						 			 'OrderGiftFirst'					=> ['Gift Order ID','Employee Name','Sale Date','Subtotal','Tax Amount','Total Cost'],
						 			 //View Sale Order
						 			 'OrderSalesView'					=>['Item ID', 'Item Name', 'Item Price', 'Quantity'],
						 			 'OrderCustomView'					=>['Material ID', 'Material Name', 'Unit Price'],

						             );
		public static $radioButtons = ['Sale', 'Order', 'Gift Order'];
		public static $firstItem = "Sale";



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

			print "<br><input type='button' id='loadform' value='Next'>";
			print "</form>";
			print "<div id='orderform'>";
			print "</div>";
			//Get the value out of the radio button
			$jQueryScript = "<script>

								$('input[type=button]').click(function(){
									var ordertypejs = $('input[name=ordertype]:checked').val();
									switch (ordertypejs){
										case 'sale':
											$('#orderform').load('views/pages/enterordersale.php');
										break;
										case 'order':
											$('#orderform').load('views/pages/enterordercustom.php');
										break;
										case 'giftorder':
											$('#orderform').load('views/pages/enterordergift.php');
										break;

									}
								});
							</script>";
			echo $jQueryScript;
			$testDatabaseObject = dataBaseModel::dropDownItemQuery();
			var_dump($testDatabaseObject);

		}

}
*/

