<!--Once a supplier is selected, this screen will show up for them to select the materials-->
<h3>Order Materials</h3>

<h4>Select Materials</h4>
<form action = "?controller=inventory&action=submitOrder" method="post">
	<label class='selectItems'>Select Materials
	<select name = "material[]">
		<?php foreach($materials as $material) { ?>
			<option value="<?php echo $material['material_id'];?>"><?php echo $material['material_id']; ?></option>
		<?php } ?>
	</select>
	
	<label>Quantity</label>
		<input type='text' name='quantity[]' value=1> <br> 
	</label>
		<input name="otherAdd" type='button' class="button" id='addNew' value='Add New +'/>
	<br><br>
	<input type = "hidden" name = "supplier_id" value="<?php echo $supplier_id; ?>">
	<a href="?controller=menus&action=mainMenu&subMenu=Inventory"><input type = "button" value="Cancel" class = "button redButton"></a><input type = "submit" value="Submit" class = "button blueButton">
</form>


				
		