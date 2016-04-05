<?php

include('../../controllers/order_controller.php');
$materials = OrdersController::getItems('custom');

?>

<h3>Custom Order</h3>
				
				
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='custom'>
				<label class='selectItems'>Select Materials to be used:
				<select name = 'material[]'>
					<?php foreach($materials AS $m){ ?>
						<option><?php echo $m['name'] ?></option>
					<?php
					}
					?>
					
				</select>
				<label>Quantity</label><input type='text' name='quantity' value=1> <br> 
				</label>
				<input type='button' class="button" id='addNew' value='Add New +'/>
				<br><br>
				<label>Name of Custom Craft<input type="text" name="itemName"></label><label>Quantity</label><input type='text' name='itemQuantity' value=1><br>
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
				
				<input type='button' class = "button redButton" value='Cancel'/> <input class="button blueButton" type='submit' value='Next'/>
				</form>
				<script type='text/javascript' src='css/addItem.js'></script>
				
				