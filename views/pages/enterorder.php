<!--The enter Order screen was consolidated into one screen with 3 tabs for ease of use.-->
 <?php

?>
  <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Sale</a></li>
    <li><a href="#tabs-2">Custom Order</a></li>
	<li><a href="#tabs-3">Gift Order</a></li>
  </ul>
  
  <div id="tabs-1">
	<h3>Sale Order</h3>
				
				<?php $_SESSION['orderType'] = 'sale'; ?>
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
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a>  <input class = 'button blueButton' type='submit' value='Next'/>
				</form>
				

  </div>
  <div id="tabs-2">
	<h3>Custom Order</h3>
				
				<?php $_SESSION['orderType'] = 'custom'; ?>
				<form action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='custom'>
				<label class='selectItems'>Select Materials to be used:
				<select name = 'material[]'>
					<?php foreach($materials as $material) { ?>
						<option value="<?php echo $material['material_id'];?>"><?php echo $material['name']; ?></option>
					<?php } ?>
					
				</select>
				<label>Quantity</label><input type='text' name='quantity' value=1> <br> 
				</label>
				<input name="add" type='button' class="button" id='addNew' value='Add New +'/>
				<br><br>
				<label>Name of Custom Craft <input type="text" name="itemName"></label><label> Quantity </label><input type='text' name='itemQuantity' value=1><br>
				<label>Custom Craft Comments </label><br><textarea name='comment' rows="5" columns = '10'></textarea>
				<br>
				<label>Estimated Minimum Price needed for Profit: <input type='text' name='estimatedPrice'></label><br>
				<h3>Customer Info</h3>
				
				<label>First Name <input type='text' name='firstName'></label><br>
				<label>Last Name <input type='text' name='lastName'></label><br>
				<label>Address Number <input type='text' name='streetNumber'></label>
				<label>Address Street <input type='text' name='streetName'></label><br>
				<label>Address Road Type <input type='text' name="streetType"></label>
				<label>Address Type </label>
				<select name="addressType">
					<option value='House'>House</option>
					<option value='Apartment'>Apartment</option>
				</select><br>
				<label>City <input type='text' name='city'></label><br>
				<label>State <input type='text' name='state'></label><br>
				<label>Zip <input type='text' name='zip'></label><br>
				<label>P.O. Box <input type='text' name='pobox'></label><br>
				
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a> <input class="button blueButton" type='submit' value='Next'/>
				</form>
				
  </div>
  
  
  <div id="tabs-3">
	<h3>Gift Order</h3>
				
				<?php $_SESSION['orderType'] = 'gift'; ?>
				<form action = '?controller=order&action=submitForm' method='post' autocomplete='on'>
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
				<label>Address Number <input type='text' name='streetNumber'></label>
				<label>Address Street <input type='text' name='streetName'></label><br>
				<label>Address Road Type <input type='text' name="streetType"></label>
				<label>Address Type </label>
				<select name='addressType'>
					<option value="House">House</option>
					<option value="Apartment">Apartment</option>
				</select><br>
				<label>City <input type='text' name='city'></label><br>
				<label>State <input type='text' name='state'></label><br>
				<label>Zip <input type='text' name='zip'></label><br>
				<label>P.O. Box <input type='text' name='pobox'></label><br>
				
				<h3>Recipient Info</h3>
				
				<label>First Name <input type='text' name='recFirstName'></label><br>
				<label>Last Name <input type='text' name='recLastName'></label><br>
				<label>Address Number <input type='text' name='recStreetNumber'></label>
				<label>Address Street <input type='text' name='recStreetName'></label><br>
				<label>Address Road Type <input type='text' name="recStreetType"></label>
				<label>Address Type </label>
				<select name='recAddressType'>
					<option value="House">House</option>
					<option value="Apartment">Apartment</option>
				</select><br>
				<label>City <input type='text' name='recCity'></label><br>
				<label>State <input type='text' name='recState'></label><br>
				<label>Zip <input type='text' name='recZip'></label><br>
				<label>P.O. Box <input type='text' name='recPobox'></label><br>

				
				
				
				
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a>  <input class="button blueButton" type='submit' value='Next'/>
				
				
				
				</form>
				

  </div>
  
</div>

