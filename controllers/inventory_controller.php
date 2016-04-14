
<?php
	require_once('forms_controller.php');
	require_once('models/database.php'); 
	class InventoryController 
	{	
					
		public static function ordermaterials()
		{	
			//This function gets all the SupplierIDs and Company names to be used on the order materials page.
			$stageDBO = DatabaseObjectFactory::build('supplier');
			$arr = ['supplier_id','company_name'];
			$suppliers = $stageDBO->getRecords($arr);
			require_once('views/pages/orderMaterials.php');
		}
		
		public static function getMaterials()
		{
			//GRAB THE SUPPLIER ID TO BE USED IN WHERE CLAUSE
			$supplier_id = $_POST['supplier'];
			
			$stageDBO = DatabaseObjectFactory::build('material');
			$arr = ['material_id'];
			$materials = $stageDBO->getRecords($arr, ['supplier_id' => $supplier_id]);
			
			/*$stageDBO = DatabaseObjectFactory::build('supplier_discount');
			$arr = ['material_id','supplier_id'];
			$discounts = $stageDBO->getRecords($arr,'<?php echo $supplier_id; ?> = supplier_id');*/
			require_once('views/pages/orderMaterials2.php');
		}
			
		public static function submitOrder()
		{
			//THIS FUNCTION GRABS ALL THE VALUES FROM FORM AND STORES IT IN SESSION, so that they can be submitted after the confirmation.
			$_SESSION['material'] = $_POST['material'];
			$_SESSION['quantity'] = $_POST['quantity'];
			$_SESSION['supplier_id'] = $_POST['supplier_id'];
			
			//Confirms the order before inserting, hence the SESSION variables.
			require_once('views/pages/confirmSupplyOrder.php');
		}
		
		public static function InsertOrder()
		{
			//Just for testing, not implemented yet.
			for($i = 0; $i < count($_SESSION['material']); $i++)
			{
			echo $_SESSION['material'][$i] ."<br>". $_SESSION['supplier_id']."<br>";
			}
			
		}
		
		public static function manageinventory()
		{
			//This function gets craft, material, and return information for the manageinventory page.
			$stageDBO = DatabaseObjectFactory::build('Material');
			$arr = ['material_id','unit_price'];
			$materials = $stageDBO->getRecords($arr);
			
			$stageDBO = DatabaseObjectFactory::build('craft');
			$arr = ['craft_id'];
			$crafts = $stageDBO->getRecords($arr);
			include('views/pages/manageinventory.php');
		}
		
		public static function addCraft()
		{
			$stageDBO = DatabaseObjectFactory::build('material');
			$arr = ['material_id','unit_price'];
			$materials = $stageDBO->getRecords($arr);
			include('views/pages/addCraft.php');
		}
		
		public static function addMaterial()
		{
			$stageDBO = DatabaseObjectFactory::build('supplier');
			$arr = ['supplier_id','company_name'];
			$suppliers = $stageDBO->getRecords($arr);
			include('views/pages/addMaterial.php');
		}

		public static function editMaterial()
		{
			//Grab the material id passed by the Edit button
			$materialID = $_POST['material_id'];

			require_once('views/pages/editMaterial.php');

		}
		
			
			
	}