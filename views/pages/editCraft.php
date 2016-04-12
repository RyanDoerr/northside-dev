<!--This page allows the user to edit a craft for the Edit button that they clicked for a particular craft-->
<h3>Editing Craft ID <?php echo $craftID;?> </h3>
<form action = "" method = "post">
	<label>Craft Name <input type="text" name="craftName" value='<?php echo $craft[0]['name'];?>'></label><br>

	<h4>Materials Used</h4>
	<table>
	<th>Delete</th><th>Material Name</th><th>Unit Price</th>
	<?php foreach($materials as $material)
	{
		echo "<tr><td>
		<form action='' method='post'><input class='button redButton' type='submit' value='Delete'><input type='hidden' value='".$material['material_id']."'>
		</form>	
		<td>".$material['name']."</td><td>".$material['unit_price']."</td></tr>";
	}?>
	</table>
	<h3>Item Information</h3>
	<label>Price <input type="text" name="currentPrice" value='<?php echo number_format($craft[0]['current_price'],2); ?>'></label><br>
	<label>Minimum Price <input type="text" name="minPrice" value='<?php echo number_format($craft[0]['current_price'],2); ?>'></label><br>

	<a href="?controller=inventory&action=manageinventory"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Update" class = "button blueButton">
</form>		
		