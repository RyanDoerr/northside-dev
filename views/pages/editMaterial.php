<!--This page allows the user to edit a material for the Edit button that they clicked for a particular material-->
<h3>Editing Material ID <?php echo $materialID;?> </h3>
<form action = "" method = "post">
	<label>Material Name <input type="text" name="materialName"></label><br>
	
	
	<h3>Item Information</h3>
	<label>Price <input type="text" name="currentPrice"></label><br>
	<label>Minimum Price <input type="text" name="minPrice"></label><br>

	<a href="?controller=inventory&action=manageinventory"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Update" class = "button blueButton">
</form>		
		