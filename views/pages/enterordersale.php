<?php

include('../../controllers/order_controller.php');
$dataset = OrdersController::drawForm('sale');

?>

<h3>Sale Order</h3>
				
				
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='sale'>
				<label class='selectItems'>Select Items
				<select name = 'item[]'>
					<?php foreach($dataset as $data) { ?>
					<option><?php echo $data['name']; ?></option>
					<?php } ?>
				</select>
				<label>Quantity</label><input type='text' name='quantity[]' value=1 ><br> 
				</label>
				<input type='button' class='button' value='Add Item +'/>
				<br><br>
				<input class = 'button redButton' type='button' value='Cancel'/> <input class = 'button blueButton' type='submit' value='Next'/>
				</form>
				<script type='text/javascript' src='css/addItem.js'></script>