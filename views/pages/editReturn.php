<!--This page allows the user to edit a return item -->
<h3>Editing Return ID <?php echo $returnID;?> </h3>
<form action = "" method = "post">
	
	<h3>Item Information</h3>
	<label>Current Price <input type="text" name="currentPrice" value='<?php echo number_format($return[0]['current_price'],2);?>'></label><br>
	<label>Minimum Price <input type="text" name="minPrice"value='<?php echo number_format($return[0]['min_price'],2);?>'></label><br>

	<a href="?controller=inventory&action=manageinventory"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Update" class = "button blueButton">
</form>		
		