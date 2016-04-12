
<?php
	require_once('models/database.php');
	require_once('controllers/forms_controller.php');  
	class SuppliersController 
	{	
					
		public static function managesuppliers()
		{	
			$stageDBO = DatabaseObjectFactory::build('supplier');
			$arr = ['supplier_id','company_name'];
			$suppliers = $stageDBO->getRecords($arr);
			require_once('views/pages/manageSuppliers.php');
		}

		public static function addSupplier()
		{	
			require_once('views/pages/addSupplier.php');
		}

		public static function editSupplier()
		{	
			$supplierID = $_POST['supplier_id'];
			$stageDBO = DatabaseObjectFactory::build('supplier');
			$arr = ['supplier_id','company_name','contact_name','contact_job_title','company_phone','contact_phone','email'];
			$supplier = $stageDBO->getRecords($arr, ['supplier_id' => $supplierID]);
			require_once('views/pages/editSupplier.php');
		}

		public static function managediscounts()
		{
			$stageDBO = DatabaseObjectFactory::build('supplier_discount');
			$arr = ['material_id','supplier_id','min_qty','discount_percent'];
			$discounts = $stageDBO->getRecords($arr);
			require_once('views/pages/manageDiscounts.php');
		}
		
		public static function drawAddressForm()
		{
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
		}
			
			
	}