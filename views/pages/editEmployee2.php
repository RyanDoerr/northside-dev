<h3>Editing Employee ID <?php echo $employeeID;?> </h3>


<form action = "" method = "post">
	<h4>Access Level</h4>
	<label>Administrator<input type="radio" name="accessLevel" <?php if($employee[0]['accessLevel'] == 1) echo "checked";?>></label>
	<label>Sales Employee<input type="radio" name="accessLevel" <?php if($employee[0]['accessLevel'] == 2) echo "checked";?>></label><br>
	<label>First Name <input type="text" value='<?php echo $employee[0]['first_name'];?>' name="firstName"></label><br>
	<label>Last Name <input type="text" value='<?php echo $employee[0]['last_name'];?>' name="lastName"></label><br>
	<label>Hire Date <input type="text" value='<?php echo $employee[0]['hire_date'];?>' name="hireDate"></label><br>
	<label>Phone Number <input type="text" value='<?php echo $employee[0]['phone_number'];?>' name="phoneNumber"></label><br>
	<label>Password <input type="button" class="button" value='reset' name="password"></label><br>
	
	
	
	<?php EmployeesController::drawAddressForm($employeeID); ?> 

	<a href="?controller=employees&action=editemployee"><input type = "button" value="Cancel" class = "button redButton"></a>

		
	<input type = "submit" value="Add" class = "button blueButton">
</form>