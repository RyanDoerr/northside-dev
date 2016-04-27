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
<<<<<<< HEAD
				
				<?php $_SESSION['orderType'] = 'sale'; ?>
				<form class="enterOrder" action = '?controller=order&action=submitForm' method='post'>
				<h3>Sale Order</h3><br>
=======
	<h3>Sale Order</h3>
				<?php $_SESSION['orderType'] = 'sale'; ?>
				<form id='saleForm'action = '?controller=order&action=submitForm' method='post'>
>>>>>>> origin/development
				<input type='hidden' name='orderType' value='sale'>
				<label class='selectItems'>Select Item&nbsp;
				<select name = 'item[]'>
					<?php foreach($items as $item) { ?>
					<option value='<?php echo $item['item_id'];?>'><?php echo $item['name']; ?></option>
					<?php } ?>
				</select>
				
				
<<<<<<< HEAD
				&emsp;&emsp;Quantity&nbsp; <input type='text' name='quantity[]' value= 1 ><br> 
				</label><br><br>
				<input style='float:left; margin-left: 75px;' name="add" type='button'  class='button blueButton' value='Add Item +'/>
				<br><br><br>
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input style="margin-right:60px;" class = 'button blueButton' type='submit' value='Next' /><input type='button' class = "redButton" value='Cancel'/></a>  
=======
				<label for='quantity[]'>Quantity </label><input style="width: 5%" type='text' id='quantity' name='quantity[]' value= 1 required><br> 
				</label>
				<input name= "add"type='button'  class='button' value='Add Item +'/>
				<br><br>
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a>  <input class = 'button blueButton' type='submit' value='Next'/>
>>>>>>> origin/development
				</form>
				

  </div>
  <div id="tabs-2">
				
				<?php $_SESSION['orderType'] = 'custom'; ?>
<<<<<<< HEAD
				<form class="customOrder" action = '?controller=order&action=submitForm' method='post'>
				<h3>Custom Order</h3><br>
				<h4>Select Materials to be Used:</h4>
=======
				<form id='customForm' action = '?controller=order&action=submitForm' method='post'>
>>>>>>> origin/development
				<input type='hidden' name='orderType' value='custom'>
				<label class='selectItems'><br>Material Name&nbsp;
				<select name = 'material[]'>
					<?php foreach($materials as $material) { ?>
						<option value="<?php echo $material['material_id'];?>"><?php echo $material['name']; ?></option>
					<?php } ?>
				</select>
<<<<<<< HEAD
				<label>&emsp;&emsp;Quantity&nbsp;</label><input  type='text' name='quantity' value=1> 
				</label><br><br><br>
				<input style="float:left;" name="add" type='button' class="button blueButton" id='addNew' value='Add New +'/>
				<br><br>
				<label>Name of Custom Craft&nbsp;</label><input type="text" name="itemName"><label>&emsp;&emsp;Quantity&nbsp;</label><input type='text' name='itemQuantity' value=1><br><br>
				<label>Custom Craft Comments </label><br><br><textarea name='comment' rows="5" columns = "10"></textarea>
				<br>
				<label>Estimated Minimum Price needed for Profit:&nbsp;<input type='text' name='estimatedPrice'></label><br><br>
				<h3>Customer Information</h3><br>
				<label>First Name <input style="margin-left:100px;" type='text' name='firstName'></label><br>
				<label>Last Name <input style="margin-left:100px;" type='text' name='lastName'></label><br>
				<label>Address Number <input style="margin-left:63px;" type='text' name='streetNumber'></label><br>
				<label>Address Street <input style="margin-left:77px;" type='text' name='streetName'></label><br>
				<label>Address Road Type <input style="margin-left:46px;" type='text' name="streetType"></label><br>
=======
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
>>>>>>> origin/development
				<label>Address Type </label>
				<select class="address" style="margin-left:85px;" name="addressType">
					<option value='House'>House</option>
					<option value='Apartment'>Apartment</option>
				</select><br>
<<<<<<< HEAD
				<label>City <input style="margin-left:145px;" type='text' name='city'></label><br>
				<label>State <input style="margin-left:137px;" type='text' name='state'></label><br>
				<label>Zip <input style="margin-left:150px;" type='text' name='zip'></label><br>
				<label>P.O. Box <input style="margin-left:115px;" type='text' name='pobox'></label><br><br><br>
=======
				<label>City <input type='text' name='city' required></label><br>
				<label>State <input type='text' name='state' required></label><br>
				<label>Zip <input type='text' name='zip' required></label><br>
>>>>>>> origin/development
				
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input style="margin-right:35px;" class="button blueButton" type='submit' value='Next'/><input type='button' class = "button redButton" value='Cancel'/></a>
				</form>
				
  </div>
  
  
  <div id="tabs-3">
	<h3>Gift Order</h3>
				
				<?php $_SESSION['orderType'] = 'gift'; ?>
<<<<<<< HEAD
				<form class="giftOrder" action = '?controller=order&action=submitForm' method='post' autocomplete='on'>
=======
				<form action = '?controller=order&action=submitForm' method='post' autocomplete='on' id="giftForm">
>>>>>>> origin/development
				<input type='hidden' name='orderType' value='gift'>
				<label class='selectItems'>Select Items&nbsp;
				<select name = 'item[]'>
					<?php foreach($items as $item) { ?>
					<option value='<?php echo $item['item_id'];?>'><?php echo $item['name']; ?></option>
					<?php } ?>
				</select>
				
<<<<<<< HEAD
				<label>&emsp;&emsp;Quantity&nbsp;</label><input type='text' name='quantity[]' value=1><br> 
				</label><br><br>
				<input style="margin-right:45px;" name= "add" type='button' class="button blueButton" value='Add Item +'/>
=======
				<label for="quantity[]">Quantity</label><input style="width: 5%" id='quantity' type='text' name='quantity[]' value=1 required><br> 
				</label>
				<input name= "add" type='button' class="button" value='Add Item +'/>
>>>>>>> origin/development
				<br><br>
				
				<h3>Customer Information</h3>
				
<<<<<<< HEAD
				<label>First Name <input style="margin-left:100px;" type='text' name='firstName'></label><br>
				<label>Last Name <input style="margin-left:100px;"type='text' name='lastName'></label><br>
				<label>Phone Number<input style="margin-left:80px;" type='text' name='phone'></label><br>
				<label>Email<input style="margin-left:138px;" type='text' name='email'></label><br>
				<label>Address Number <input style="margin-left:63px;" type='text' name='streetNumber'></label><br>
				<label>Address Street <input style="margin-left:77px;" type='text' name='streetName'></label><br>
				<label>Address Road Type <input style="margin-left:46px;" type='text' name="streetType"></label><br>
=======
				<label>First Name <input type='text' name='firstName' required></label><br>
				<label>Last Name <input type='text' name='lastName' required></label><br>
				<label for='phone'>Phone Number<input type='text' name='phone' id='phone' required></label><br>
				<label>Email<input type='email' name='email' required></label><br>
				<label>Address Number <input type='text' name='streetNumber' required></label><br>
				<label>Address Street <input type='text' name='streetName' required></label><br>
				<label>Address Road Type <input type='text' name="streetType" required></label><br>
>>>>>>> origin/development
				<label>Address Type </label>
				<select class="address" style="margin-left:85px;" name='addressType'>
					<option value="House">House</option>
					<option value="Apartment">Apartment</option>
				</select><br>
<<<<<<< HEAD
				<label>City <input style="margin-left:145px;" type='text' name='city'></label><br>
				<label>State <input style="margin-left:137px;" type='text' name='state'></label><br>
				<label>Zip <input style="margin-left:150px;" type='text' name='zip'></label><br>
				<label>P.O. Box <input style="margin-left:115px;" type='text' name='pobox'></label><br>
				
				<h3>Recipient Information</h3>
				
				<label>First Name <input style="margin-left:100px;" type='text' name='recFirstName'></label><br>
				<label>Last Name <input style="margin-left:100px;" type='text' name='recLastName'></label><br>
				<label>Address Number <input style="margin-left:63px;" type='text' name='recStreetNumber'></label><br>
				<label>Address Street <input style="margin-left:77px;" type='text' name='recStreetName'></label><br>
				<label>Address Road Type <input style="margin-left:46px;" type='text' name="recStreetType"></label><br>
=======
				<label>City <input type='text' name='city' required></label><br>
				<label>State <input type='text' name='state' required></label><br>
				<label for="zip">Zip<input id='zip' type='text' name='zip' required></label><br>
				
				<h3>Recipient Info</h3>
				
				<label>First Name <input type='text' name='recFirstName' required></label><br>
				<label>Last Name <input type='text' name='recLastName' required></label><br>
				<label>Address Number <input type='text' name='recStreetNumber' required></label><br>
				<label>Address Street <input type='text' name='recStreetName' required></label><br>
				<label>Address Road Type <input type='text' name="recStreetType" required></label><br>
>>>>>>> origin/development
				<label>Address Type </label>
				<select class="address" style="margin-left:85px;" name='recAddressType'>
					<option value="House">House</option>
					<option value="Apartment">Apartment</option>
				</select><br>
<<<<<<< HEAD
				<label>City <input style="margin-left:145px;" type='text' name='recCity'></label><br>
				<label>State <input style="margin-left:137px;" type='text' name='recState'></label><br>
				<label>Zip <input style="margin-left:150px;" type='text' name='recZip'></label><br>
				<label>P.O. Box <input style="margin-left:115px;" type='text' name='recPobox'></label><br>
=======
				<label>City <input type='text' name='recCity' required></label><br>
				<label>State <input type='text' name='recState' required></label><br>
				<label for="recZip">Zip <input id='recZip' type='text' name='recZip' required></label><br>
>>>>>>> origin/development

				
				
				
				<br>
				<a href="?controller=menus&action=mainMenu&subMenu=Order"><input type='button' class = "button redButton" value='Cancel'/></a>  <input class="button blueButton" type='submit' value='Next'/>
				
				
				
				</form>
				

  </div>
  
</div>

