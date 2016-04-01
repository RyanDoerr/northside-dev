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
				$(document).ready(function(){
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
									
									
									//$('label').css('color', 'red');
								
				
								
								
								});
								
								
									
				
								
							});
							</script>";
			echo $jQueryScript;

		}
		
		
	
		public function drawForm($saleType)
		{
			if($saleType == 'sale')
			{	
				//$query = 'SELECT item_name FROM item';
				echo "<script>
				
				
				$(document).ready(function(){
						$('input[type=button]').click(function(){
							$( '#selectItems' ).clone().insertAfter( '#selectItems' );	
							
						});
								
								
				});
						
					</script>";
					
					
				print "<h3>Sale Order</h3>
				
				
				<form>
				<label id='selectItems'>Select Items
				<select>
					<option value='<?php echo volvo;'>Volvo</option>
				</select>
				<label>Quantity</label><input type='text' name=''/><br> 
				</label>
				<input type='button' value='Add Item +'/>
				<br><br>
				<input type='button' value='Cancel'/> <input type='button' value='Next'/>
				</form>
				
				
				
				
				";
				
			}
		}
		

}

<?php
	require_once('models/dataBaseModel.php');
	class OrdersController 
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
>>>>>>> origin/development
