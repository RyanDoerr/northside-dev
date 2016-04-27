<!--The enter Order screen was consolidated into one screen with 3 tabs for ease of use.-->
 <?php

?>
				<script>
					$().ready(function() {
						$("#giftForm").validate({
							rules: {
								number: {
									digits:true,
									decimal:true
								},
								zip: {
									minlength:5,
									maxlength:5,
									digits:true
								},
								recZip: {
									minlength:5,
									maxlength:5,
									digits:true
								},
								phoneNumber: {
									phoneUS:true
								},
								'quantity[]': {
									minlength:1,
									maxlength:5,
									digits:true
								}

							}
						}),
						$("#customForm").validate({
							rules: {
								number: {
									digits:true,
									decimal:true
								},
								zip: {
									minlength:5,
									maxlength:5,
									digits:true
								},
								recZip: {
									minlength:5,
									maxlength:5,
									digits:true
								},
								phone: {
									phoneUS:true
								},
								'quantity': {
									minlength:1,
									maxlength:5,
									digits:true
								}

							}
						}),
						$("#saleForm").validate({
							rules: {
								'quantity[]': {
									minlength:1,
									maxlength:5,
									digits:true
								}

							}
						})
					});
				</script>
  <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Sale</a></li>
    <li><a href="#tabs-2">Custom Order</a></li>
	<li><a href="#tabs-3">Gift Order</a></li>
  </ul>
  
  <div id="tabs-1">
	<h3>Sale Order</h3>
				<?php $_SESSION['orderType'] = 'sale'; ?>
				<form id='saleForm'action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='sale'>
				<label class='selectItems'>Select Items
				<select name = 'item[]'>
					<?php foreach($items as $item) { ?>
					<option value='<?php echo $item['item_id'];?>'><?php echo $item['name']; ?></option>
					<?php } ?>
				</select>
				
				
				<label for='quantity[]'>Quantity </label><input style="width: 5%" type='text' id='quantity' name='quantity[]' value= 1 required><br> 
				</label>
				<input name= "add"type='button'  class='button' value='Add Item +'/>
				<br><br>
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a>  <input class = 'button blueButton' type='submit' value='Next'/>
				</form>
				

  </div>
  <div id="tabs-2">
	<h3>Custom Order</h3>
				
				<?php $_SESSION['orderType'] = 'custom'; ?>
				<form id='customForm' action = '?controller=order&action=submitForm' method='post'>
				<input type='hidden' name='orderType' value='custom'>
				<label class='selectItems'>Select Materials to be used:
				<select name = 'material[]'>
					<?php foreach($materials as $material) { ?>
						<option value="<?php echo $material['material_id'];?>"><?php echo $material['name']; ?></option>
					<?php } ?>
				</select>
				<label for='quantity[]'>Quantity</label><input  style="width: 5%" id='quantity' type='text' name='quantity' value=1 required> 
				</label>
				<input name="add" type='button' class="button" id='addNew' value='Add New +'/>
				<br><br>
				<label>Name of Custom Craft <input type="text" name="itemName" required></label><label> Quantity </label><input type='text' name='itemQuantity' value=1><br>
				<label for='comment'>Custom Craft Comments </label><br><textarea name='comment' rows="5" columns = '10'></textarea>
				<br>
				<label>Estimated Minimum Price needed for Profit: <input type='text' name='estimatedPrice'></label><br>
				<h3>Customer Info</h3>
				<label>First Name <input type='text' name='firstName' required></label><br>
				<label>Last Name <input type='text' name='lastName' required></label><br>
				<label>Address Number <input type='text' name='streetNumber' required></label><br>
				<label>Address Street <input type='text' name='streetName' required></label><br>
				<label>Address Road Type <input type='text' name="streetType" required></label><br>
				<label>Address Type </label>
				<select name="addressType">
					<option value='House'>House</option>
					<option value='Apartment'>Apartment</option>
				</select><br>
				<label>City <input type='text' name='city' required></label><br>
				<label>State <input type='text' name='state' required></label><br>
				<label>Zip <input type='text' name='zip' required></label><br>
				
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a> <input class="button blueButton" type='submit' value='Next'/>
				</form>
				
  </div>
  
  
  <div id="tabs-3">
	<h3>Gift Order</h3>
				
				<?php $_SESSION['orderType'] = 'gift'; ?>
				<form action = '?controller=order&action=submitForm' method='post' autocomplete='on' id="giftForm">
				<input type='hidden' name='orderType' value='gift'>
				<label class='selectItems'>Select Items
				<select name = 'item[]'>
					<?php foreach($items as $item) { ?>
					<option value='<?php echo $item['item_id'];?>'><?php echo $item['name']; ?></option>
					<?php } ?>
				</select>
				
				<label for="quantity[]">Quantity</label><input style="width: 5%" id='quantity' type='text' name='quantity[]' value=1 required><br> 
				</label>
				<input name= "add" type='button' class="button" value='Add Item +'/>
				<br><br>
				
				<h3>Customer Info</h3>
				
				<label>First Name <input type='text' name='firstName' required></label><br>
				<label>Last Name <input type='text' name='lastName' required></label><br>
				<label for='phone'>Phone Number<input type='text' name='phone' id='phone' required></label><br>
				<label>Email<input type='email' name='email' required></label><br>
				<label>Address Number <input type='text' name='streetNumber' required></label><br>
				<label>Address Street <input type='text' name='streetName' required></label><br>
				<label>Address Road Type <input type='text' name="streetType" required></label><br>
				<label>Address Type </label>
				<select name='addressType'>
					<option value="House">House</option>
					<option value="Apartment">Apartment</option>
				</select><br>
				<label>City <input type='text' name='city' required></label><br>
				<label>State <input type='text' name='state' required></label><br>
				<label for="zip">Zip<input id='zip' type='text' name='zip' required></label><br>
				
				<h3>Recipient Info</h3>
				
				<label>First Name <input type='text' name='recFirstName' required></label><br>
				<label>Last Name <input type='text' name='recLastName' required></label><br>
				<label>Address Number <input type='text' name='recStreetNumber' required></label><br>
				<label>Address Street <input type='text' name='recStreetName' required></label><br>
				<label>Address Road Type <input type='text' name="recStreetType" required></label><br>
				<label>Address Type </label>
				<select name='recAddressType'>
					<option value="House">House</option>
					<option value="Apartment">Apartment</option>
				</select><br>
				<label>City <input type='text' name='recCity' required></label><br>
				<label>State <input type='text' name='recState' required></label><br>
				<label for="recZip">Zip <input id='recZip' type='text' name='recZip' required></label><br>

				
				
				
				
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a>  <input class="button blueButton" type='submit' value='Next'/>
				
				
				
				</form>
				

  </div>
  
</div>

