
<h3>Add Supplier</h3>
<form action = "" method = "post">
	<label>Company Name <input type="text" name="companyName"></label><br>
	<label>Company Phone Number <input type="text" name="phone"></label><br>
	<label>Contact Name <input type="text" name="contactName"></label><br>
	<label>Contact Phone Number <input type="text" name="contactPhone"></label><br>
	<label>Contact Job Title <input type="text" name="contactJobTitle"></label><br>
	<label>Contact Email <input type="text" name="contactEmail"></label><br>
	
	
	
	<?php SuppliersController::drawAddressForm(); ?>

	<a href="?controller=suppliers&action=managesuppliers"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Add" class = "button blueButton">
</form>
		
		