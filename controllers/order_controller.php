<<<<<<< HEAD
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
			//$testDatabaseObject = dataBaseModel::dropDownItemQuery();
			//var_dump($testDatabaseObject);

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
=======
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
		
	
		public function drawForm($orderType)
		{
			if($orderType == 'sale')
			{	
				echo "<script>
				
				
				$(document).ready(function(){
						$('input[type=button]').click(function(){
							$( '.selectItems' ).first().clone().insertAfter( '.selectItems:last' );	
							
						});

								
						$( 'form' ).submit(function( event ) {
							//var fields = $(':input').serializeArray();
							
							
							
							//console.log( $( this ).serializeArray() );
							//event.preventDefault();
						});		
				});
						
					</script>";
					
					
				print "<h3>Sale Order</h3>
				
				
				<form>
				<label class='selectItems'>Select Items
				<select>
					<option name = 'item' value='Item 1'>Item 1</option>
					<option name = 'item2' value='Item 2'>Item 2</option>
				</select>
				<label>Quantity</label><input type='text' name='quantity' value=1 ><br> 
				</label>
				<input type='button' value='Add Item +'/>
				<br><br>
				<input type='button' value='Cancel'/> <input type='submit' value='Next'/>
				</form>
				
				
				
				
				";
				
			}
			
			
			else if($orderType == 'gift')
			{
				
				echo "
				
				<script>
				
				
				$(document).ready(function(){
						$('input[type=button]').click(function(){
							$( '.selectItems' ).first().clone().insertAfter( '.selectItems:last' );	
							
						});

								
						$( 'form' ).submit(function( event ) {
							//var fields = $(':input').serializeArray();
							
							
							
							//console.log( $( this ).serializeArray() );
							//event.preventDefault();
						});		
				});
						
					</script>";
					
					
				print "<h3>Gift Order</h3>
				
				
				<form>
				<label class='selectItems'>Select Items
				<select>
					<option name = 'item' value='Item 1'>Item 1</option>
					<option name = 'item2' value='Item 2'>Item 2</option>
				</select>
				<label>Quantity</label><input type='text' name='quantity' value=1><br> 
				</label>
				<input type='button' value='Add Item +'/>
				<br><br>
				
				<h3>Customer Info</h3>
				
				<label>First Name <input type='text' name='firstName'></label><br>
				<label>Last Name <input type='text' name='lastName'></label><br>
				<label>Address Line 1 <input type='text' name='addressLine1'></label><br>
				<label>Address Line 2 <input type='text' name='addressLine2'></label><br>
				<label>Address Type </label>
				<select>
					<option name = 'house' value='House'>House</option>
					<option name = 'apartment' value='Apartment'>Apartment</option>
				</select><br>
				<label>City <input type='text' name='city'></label><br>
				<label>State <input type='text' name='state'></label><br>
				<label>Zip <input type='text' name='zip'></label><br>
				<label>P.O. Box <input type='text' name='pobox'></label><br>
				
				<h3>Recipient Info</h3>
				
				<label>First Name <input type='text' name='recfirstName'></label><br>
				<label>Last Name <input type='text' name='reclastName'></label><br>
				<label>Address Line 1 <input type='text' name='recaddressLine1'></label><br>
				<label>Address Line 2 <input type='text' name='recaddressLine2'></label><br>
				<label>Address Type </label>
				<select>
					<option name = 'rechouse' value='House'>House</option>
					<option name = 'recapartment' value='Apartment'>Apartment</option>
				</select><br>
				<label>City <input type='text' name='reccity'></label><br>
				<label>State <input type='text' name='recstate'></label><br>
				<label>Zip <input type='text' name='reczip'></label><br>
				<label>P.O. Box <input type='text' name='recpobox'></label><br>

				
				
				
				
				<input type='button' value='Cancel'/> <input type='submit' value='Next'/>
				
				
				
				</form>
				
				
				
				
				";
				
			}
			
			else if($orderType == 'custom')
			{
					echo "<script>
				
				
				$(document).ready(function(){
						$('input[type=button]').click(function(){
							$( '.selectItems' ).first().clone().insertAfter( '.selectItems:last' );	
							
						});

								
						$( 'form' ).submit(function( event ) {
							//var fields = $(':input').serializeArray();
							
							
							
							//console.log( $( this ).serializeArray() );
							//event.preventDefault();
						});		
				});
						
					</script>";
					
					
				print "<h3>Custom Order</h3>
				
				
				<form>
				<label class='selectItems'>Select Materials to be used:
				<select>
					<option name = 'material'>Material 1</option>
					<option name = 'material'>Material 2</option>
				</select>
				<label>Quantity</label><input type='text' name='quantity' value=1> <br> 
				</label>
				<input type='button' id='addNew' value='Add New'/>
				<br><br>
				<label>Custom Craft Comments <input type='textfield' name='comment'></label>
				<br>
				<label>Estimated Minimum Price needed for Profit: <input type='text'></label><br>
				<h3>Customer Info</h3>
				
				<label>First Name <input type='text' name='firstName'></label><br>
				<label>Last Name <input type='text' name='lastName'></label><br>
				<label>Address Line 1 <input type='text' name='addressLine1'></label><br>
				<label>Address Line 2 <input type='text' name='addressLine2'></label><br>
				<label>Address Type </label>
				<select>
					<option name = 'house' value='House'>House</option>
					<option name = 'apartment' value='Apartment'>Apartment</option>
				</select><br>
				<label>City <input type='text' name='city'></label><br>
				<label>State <input type='text' name='state'></label><br>
				<label>Zip <input type='text' name='zip'></label><br>
				<label>P.O. Box <input type='text' name='pobox'></label><br>
				
				<input type='button' value='Cancel'/> <input type='submit' value='Next'/>
				</form>
				
				
				
				
				";
				
			}
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
>>>>>>> origin/development
