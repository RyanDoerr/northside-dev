<?php

include('../../controllers/order_controller.php');
$dataset = OrdersController::drawForm('gift');

?>

<h3>Gift Order</h3>
				
				
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='gift'>
				<label class='selectItems'>Select Items
				<select name = 'item[]'>
					<?php foreach($dataset as $data) { ?>
					<option><?php echo $data['name']; ?></option>
					<?php } ?>
				</select>
				<label>Quantity</label><input type='text' name='quantity[]' value=1><br> 
				</label>
				<input type='button' class="button" value='Add Item +'/>
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

				
				
				
				
				<input type='button' class="button redButton" value='Cancel'/> <input class="button blueButton" type='submit' value='Next'/>
				
				
				
				</form>
				<script type='text/javascript' src='css/addItem.js'></script>