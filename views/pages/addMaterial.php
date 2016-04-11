<?php

?>
<h3>Add Material</h3>
<form action = "" method = "post">
	<label>Material Name <input type="text" name="materialName"></label><br>
	
	<label>Select Supplier <select name = "supplier">
		<?php foreach($suppliers as $supplier) { ?>
			<option value="<?php echo $supplier['supplier_id'];?>"><?php echo $supplier['company_name']; ?></option>
		<?php } ?>
	</select></label><br>
	
	<h3>Item Information</h3>
	<label>Price <input type="text" name="currentPrice"></label><br>
	<label>Minimum Price <input type="text" name="minPrice"></label><br>

	<a href="?controller=inventory&action=manageinventory"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Add" class = "button blueButton">
</form>
<script type='text/javascript' src='css/addItem.js'></script>			
		