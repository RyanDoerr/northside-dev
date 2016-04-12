<h3>Editing Supplier ID <?php echo $supplierID;?> </h3>
<form action = "" method = "post">
	<label>Company Name <input type="text" name="companyName" value='<?php echo $supplier[0]['company_name'];?>'></label><br>
	<label>Company Phone Number <input type="text" name="phone" value='<?php echo $supplier[0]['company_phone'];?>'></label><br>
	<label>Contact Name <input type="text" name="contactName" value='<?php echo $supplier[0]['contact_name'];?>' ></label><br>
	<label>Contact Phone Number <input type="text" name="contactPhone" value='<?php echo $supplier[0]['contact_phone'];?>'</label><br>
	<label>Contact Job Title <input type="text" name="contactJobTitle" value='<?php echo $supplier[0]['contact_job_title'];?>'></label><br>
	<label>Contact Email <input type="text" name="contactEmail" value='<?php echo $supplier[0]['email'];?>'></label><br>
	
	
	
	<?php SuppliersController::drawAddressForm(); ?>

	<a href="?controller=suppliers&action=managesuppliers"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Add" class = "button blueButton">
</form>