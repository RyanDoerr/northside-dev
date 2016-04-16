
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

		public static function addDiscount()
		{	
			$stageDBO = DatabaseObjectFactory::build('supplier');
			$arr = ['supplier_id','company_name'];
			$suppliers = $stageDBO->getRecords($arr);
			require_once('views/pages/addDiscount.php');
		}

		public static function getMaterials()
		{
			//GRAB THE SUPPLIER ID TO BE USED IN WHERE CLAUSE
			$supplier_id = $_POST['supplier_id'];
			
			$stageDBO = DatabaseObjectFactory::build('material');
			$arr = ['material_id'];
			$materials = $stageDBO->getRecords($arr, ['supplier_id' => $supplier_id]);
			
			require_once('views/pages/addDiscount2.php');
		}

		public static function editDiscount()
		{	
			$supplierID = $_POST['supplier_id'];
			$materialID = $_POST['material_id'];
			$stageDBO = DatabaseObjectFactory::build('supplier_discount');
			$arr = ['supplier_id','material_id','min_qty','discount_percent'];
			$discount = $stageDBO->getRecords($arr, ['AND' => ['supplier_id' => $supplierID, 'material_id' => $materialID]]);

			require_once('views/pages/editDiscount.php');
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

		public static function editAddressForm($supplierID)
			{	
				$stageDBO = DatabaseObjectFactory::build('supplier');
				$arr = ['supplier_id', 'address_id','street_number','street_name','street_type','address_type','major_municipality','governing_district','iso_country_code','zip'];
				$stageDBO->SetJoin(["[><]address" => "address_id"]);
				$supplier = $stageDBO->getRecords($arr, ['supplier_id'=>$supplierID] );

				print "<h4>Address Information</h4>";
				for($index = 0; $index < count(FormsController::$AddressForm); $index++)
				{
					if(FormsController::$AddressForm[$index]['element'] == 'input')  //FOR INPUT TAGS
						print "<label>" . FormsController::$AddressForm[$index]['label'] . " <input type = '". FormsController::$AddressForm[$index]['type'] . "'name = '".FormsController::$AddressForm[$index]['name'] . "' value='" . $supplier[0][FormsController::$AddressForm[$index]['value']]."'></label><br>";
					else if(FormsController::$AddressForm[$index]['element'] == 'select') //IF THE ELEMENT IS A SELECT
					{		print "<label>Address Type </label><select name='" . FormsController::$AddressForm[$index]['name'] . "'>"; 
							for($i = 0; $i < count(FormsController::$AddressForm[$index]['options']); $i++)
								print "<option>" .FormsController::$AddressForm[$index]['options'][$i] ."</option>"; 
								
							print "</select><br>";		
					}
				}
			
				print "</form>";
			}

			
			
	}