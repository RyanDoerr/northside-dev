<!--This page allows the user to edit a material for the Edit button that they clicked for a particular material-->
<h3>Editing Material ID <?php echo $materialID;?> </h3>
<form action = "" method = "post">
	<label>Material Name <input type="text" name="materialName" value = '<?php echo $materials[0]['name'];?>'></label><br>
	
	
	<h3>Item Information</h3>
	<label>Price <input type="text" name="currentPrice" value='<?php echo number_format($materials[0]['current_price'],2);?>'></label><br>
	<label>Minimum Price <input type="text" name="minPrice"value='<?php echo number_format($materials[0]['min_price'],2);?>'></label><br>

	<a href="?controller=inventory&action=manageinventory"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Update" class = "button blueButton">
</form>		
		