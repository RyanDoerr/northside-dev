<h3>Editing Discount for Supplier ID <?php echo $supplierID;?> and Material ID <?php echo $materialID; ?> </h3>

<form action = "" method = "post">
	<label>Minimum Quantity Required <input type="text" name="companyName" value='<?php echo $discount[0]['min_qty'];?>'></label><br>
	<label>Discount Percent <input type="text" name="phone" value='<?php echo $discount[0]['discount_percent'];?>'></label><br>
	

	<a href="?controller=suppliers&action=managediscounts"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Add" class = "button blueButton">
</form>