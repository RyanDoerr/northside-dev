
<?php
	require_once('addresses_controller.php');
	
	class EmployeesController 
	{
			public static $EmployeeForm = array(
					['name'=> 'accessLevel', 'label' => 'Administrator', 'type' => 'radio'],
					['name'=> 'accessLevel', 'label' => 'Sales Employee', 'type' => 'radio'],
					['name'=> 'firstName', 'label' => 'First Name', 'type' => 'text'],  
					['name'=> 'lastName', 'label' => 'Last Name', 'type' => 'text'],
					['name'=> 'hireDate', 'label' => 'Hire Date', 'type' => 'text'],
					['name'=> 'phone', 'label' => 'Phone Number', 'type' => 'text'],
					['name'=> 'employeeID', 'label' => 'Employee ID', 'type' => 'text'],
					['name'=> 'password', 'label' => 'Password', 'type' => 'text'],
					);		
					
					
			public static function addemployee()
			{
				require_once('views/pages/addemployee.php');
			}
			
			public static function drawForm()
			{	
				//require_once('addresses_controller.php');
				print "<h3>Add Employee</h3>";
				print "<form>";
				print "<h4>Employee Information</h4>";
				for($index = 0; $index < count(self::$EmployeeForm); $index++)
					print "<label>" . self::$EmployeeForm[$index]['label'] . " <input type = '". self::$EmployeeForm[$index]['type'] . "'name = '".self::$EmployeeForm[$index]['name'] . "'></label><br>";
				
				print "<h4>Address</h4>";
				for($index = 0; $index < count(AddressesController::$AddressForm); $index++)
					print "<label>" . AddressesController::$AddressForm[$index]['label'] . " <input type = '". AddressesController::$AddressForm[$index]['type'] . "'name = '".AddressesController::$AddressForm[$index]['name'] . "'></label><br>";
				
				print "<label>Address Type </label><select name='" . AddressesController::$AddressSelect[0]['name'] . "'> 
						<option>".AddressesController::$AddressSelect[0]['option1'] . "</option>
						<option>".AddressesController::$AddressSelect[0]['option2'] . "</option>
						</select><br>";
				
				print "<input type='button' class = 'button redButton' value='Cancel'/> <input class='button blueButton' type='submit' value='Next'/>";
				print "</form>";
			}
	}