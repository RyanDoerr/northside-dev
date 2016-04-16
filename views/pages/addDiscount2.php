<h4>Select Material</h4>
<form action = "" method="post">
	<label>Select Material
	<select name = "material">
		<?php foreach($materials as $material) { ?>
			<option value="<?php echo $material['material_id'];?>"><?php echo $material['material_id']; ?></option>
		<?php } ?>
	</select>
	<br>
	<label>Minimum Quantity Required
		<input type='text' name='min_qty'>
	</label><br> 
	<label>Discount Percent
		<input type='text' name='discountPct'><br> 
	</label>		

		
	<br><br>
	<input type = "hidden" name = "supplier_id" value="<?php echo $supplier_id; ?>">
		<a href="?controller=suppliers&action=managediscounts"><input type = "button" value="Cancel" class = "button redButton"></a>
		
	<input type = "submit" value="Submit" class = "button blueButton">
</form>
