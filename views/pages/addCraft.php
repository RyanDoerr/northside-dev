<!--This is the page for the Add Craft form, which is located on the Manage Inventory page-->
<h3>Add Craft</h3>
<form action = "" method = "post">
	<label>Craft Name <input type="text" name="craftName"></label><br>
	
	<label class='selectItems'>Add Craft Materials
	<select name = "material[]">
		<?php foreach($materials as $material) { ?>
			<option value="<?php echo $material['material_id'];?>"><?php echo $material['material_id']; ?></option>
		<?php } ?>
	</select>
	
	<label>Quantity</label>
		<input type='text' name='quantity[]' value=1> <br> 
	</label>
	<input name = "otherAdd" type='button' class="button" id='addNew' value='Add New +'/><br><!--The name attribute on this input is important for the addItem.js -->
	
	<h3>Item Information</h3>
	<label>Price <input type="text" name="currentPrice"></label><br>
	<label>Minimum Price <input type="text" name="minPrice"></label><br>

	<a href="?controller=inventory&action=manageinventory"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input  type = "submit" value="Add" class = "button blueButton">
</form>		
		