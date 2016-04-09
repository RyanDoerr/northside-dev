<style>
#tabs {
	margin:auto;
	width:700px;
}
</style>


  
  
  <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Sale</a></li>
    <li><a href="#tabs-2">Custom Order</a></li>
	<li><a href="#tabs-3">Gift Order</a></li>
  </ul>
  
  <div id="tabs-1">
	<h3>Sale Order</h3>
				
				
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='sale'>
				<label class='selectItems'>Select Items
				<select name = 'item[]'>
					<?php foreach($items as $item) { ?>
					<option value='<?php echo $item['item_id'];?>'><?php echo $item['name']; ?></option>
					<?php } ?>
				</select>
				
				
				<label>Quantity </label><input type='text' name='quantity[]' value= 1 ><br> 
				</label>
				<input name= "add"type='button'  class='button' value='Add Item +'/>
				<br><br>
				<input class = 'button redButton' type='button' value='Cancel'/> <input class = 'button blueButton' type='submit' value='Next'/>
				</form>
				

  </div>
  <div id="tabs-2">
	<h3>Custom Order</h3>
				
				
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='custom'>
				<label class='selectItems'>Select Materials to be used:
				<select name = 'material[]'>
					<?php foreach($materials as $material) { ?>
						<option value="<?php echo $material['material_id'];?>"><?php echo $material['material_id']; ?></option>
					<?php } ?>
					
				</select>
				<label>Quantity</label><input type='text' name='quantity' value=1> <br> 
				</label>
				<input name="add" type='button' class="button" id='addNew' value='Add New +'/>
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
				
  </div>
  
  
  <div id="tabs-3">
	<h3>Gift Order</h3>
				
				
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='gift'>
				<label class='selectItems'>Select Items
				<select name = 'item[]'>
					<?php foreach($items as $item) { ?>
					<option value='<?php echo $item['item_id'];?>'><?php echo $item['name']; ?></option>
					<?php } ?>
				</select>
				
				<label>Quantity</label><input type='text' name='quantity[]' value=1><br> 
				</label>
				<input name= "add" type='button' class="button" value='Add Item +'/>
				<br><br>
				
				<h3>Customer Info</h3>
				
				<label>First Name <input type='text' name='firstName'></label><br>
				<label>Last Name <input type='text' name='lastName'></label><br>
				<label>Phone Number<input type='text' name='phone'></label><br>
				<label>Email<input type='text' name='email'></label><br>
				<label>Address Line 1 <input type='text' name='addressLine1'></label><br>
				<label>Address Line 2 <input type='text' name='addressLine2'></label><br>
				<label>Address Type </label>
				<select name='addressType'>
					<option>House</option>
					<option>Apartment</option>
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
				

  </div>
  
</div>

