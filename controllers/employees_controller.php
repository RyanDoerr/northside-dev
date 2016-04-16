
<?php
	require_once('forms_controller.php');
	require_once('models/database.php');
	
	class EmployeesController 
	{	
					
			public static function addemployee()
			{
				require_once('views/pages/addemployee.php');
			}

			public static function editemployee()
			{
				$stageDBO = DatabaseObjectFactory::build('employee');
				$arr = ['employee_id', 'first_name','last_name','hire_date','phone_number'];
				$stageDBO->SetJoin(["[><]user" => "employee_id"]);
				$admins = $stageDBO->getRecords($arr, ['accessLevel' => 1] );

				$stageDBO = DatabaseObjectFactory::build('employee');
				$arr = ['employee_id', 'first_name','last_name','hire_date','phone_number'];
				$stageDBO->SetJoin(["[><]user" => "employee_id"]);
				$employees = $stageDBO->getRecords($arr, ['accessLevel' => 2] );

				require_once('views/pages/editEmployee.php');
			}
			
			public static function drawForm()
			{	
				print "<h3>Add Employee</h3>";
				print "<form action='' method='post'>";
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

			public static function drawAddressForm($employeeID)
			{	
				$stageDBO = DatabaseObjectFactory::build('employee');
				$arr = ['employee_id', 'address_id','street_number','street_name','street_type','address_type','major_municipality','governing_district','iso_country_code','zip'];
				$stageDBO->SetJoin(["[><]address" => "address_id"]);
				$employee = $stageDBO->getRecords($arr, ['employee_id'=>$employeeID] );

				print "<h4>Address Information</h4>";
				for($index = 0; $index < count(FormsController::$AddressForm); $index++)
				{
					if(FormsController::$AddressForm[$index]['element'] == 'input')  //FOR INPUT TAGS
						print "<label>" . FormsController::$AddressForm[$index]['label'] . " <input type = '". FormsController::$AddressForm[$index]['type'] . "'name = '".FormsController::$AddressForm[$index]['name'] . "' value='" . $employee[0][FormsController::$AddressForm[$index]['value']]."'></label><br>";
					else if(FormsController::$AddressForm[$index]['element'] == 'select') //IF THE ELEMENT IS A SELECT
					{		print "<label>Address Type </label><select name='" . FormsController::$AddressForm[$index]['name'] . "'>"; 
							for($i = 0; $i < count(FormsController::$AddressForm[$index]['options']); $i++)
								print "<option>" .FormsController::$AddressForm[$index]['options'][$i] ."</option>"; 
								
							print "</select><br>";		
					}
				}
			
				print "</form>";
			}



			public static function getEmployee()
			{
				$employeeID = $_POST['employee_id'];


				$stageDBO = DatabaseObjectFactory::build('employee');
				$arr = ['employee_id', 'first_name', 'accessLevel','last_name','hire_date','phone_number'];
				$stageDBO->SetJoin(["[><]user" => "employee_id"]);
				$employee = $stageDBO->getRecords($arr, ['employee_id'=>$employeeID] );
				require_once('views/pages/editEmployee2.php');

			}
	}