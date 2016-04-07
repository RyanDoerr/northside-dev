
<?php
	require_once('forms_controller.php');
	
	class EmployeesController 
	{
			/*public static $EmployeeForm = array(
					['element' => 'input','name'=> 'accessLevel', 'label' => 'Administrator', 'type' => 'radio'],
					['element' => 'input','name'=> 'accessLevel', 'label' => 'Sales Employee', 'type' => 'radio'],
					['element' => 'input','name'=> 'firstName', 'label' => 'First Name', 'type' => 'text'],  
					['element' => 'input','name'=> 'lastName', 'label' => 'Last Name', 'type' => 'text'],
					['element' => 'input','name'=> 'hireDate', 'label' => 'Hire Date', 'type' => 'text'],
					['element' => 'input','name'=> 'phone', 'label' => 'Phone Number', 'type' => 'text'],
					['element' => 'input','name'=> 'employeeID', 'label' => 'Employee ID', 'type' => 'text'],
					['element' => 'input','name'=> 'password', 'label' => 'Password', 'type' => 'text'],
					);		
			*/		
					
			public static function addemployee()
			{
				require_once('views/pages/addemployee.php');
			}
			
			public static function drawForm()
			{	
				print "<h3>Add Employee</h3>";
				print "<form>";
				print "<h4>Employee Information</h4>";
				for($index = 0; $index < count(FormsController::$EmployeeForm); $index++)
					print "<label>" . FormsController::$EmployeeForm[$index]['label'] . " <input type = '". FormsController::$EmployeeForm[$index]['type'] . "'name = '".FormsController::$EmployeeForm[$index]['name'] . "'></label><br>";
				
				print "<h4>Address</h4>";
				for($index = 0; $index < count(FormsController::$AddressForm); $index++)
				{
					if(FormsController::$AddressForm[$index]['element'] == 'input')  //FOR INPUT TAGS
						print "<label>" . FormsController::$AddressForm[$index]['label'] . " <input type = '". FormsController::$AddressForm[$index]['type'] . "'name = '".FormsController::$AddressForm[$index]['name'] . "'></label><br>";
					else if(FormsController::$AddressForm[$index]['element'] == 'select') //IF THE ELEMENT IS A SELECT
					{		print "<label>Address Type </label><select name='" . FormsController::$AddressForm[$index]['name'] . "'>"; 
							for($i = 0; $i < count(FormsController::$AddressForm[$index]['options']); $i++)
								print "<option>" .FormsController::$AddressForm[$index]['options'][$i] ."</option>"; 
								
							print "</select><br>";		
					}
				}
				print "<input type='button' class = 'button redButton' value='Cancel'/> <input class='button blueButton' type='submit' value='Add'/>";
				print "</form>";
			}
	}