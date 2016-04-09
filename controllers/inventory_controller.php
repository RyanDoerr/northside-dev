
<?php
	require_once('forms_controller.php');
	require_once('models/database.php'); 
	class InventoryController 
	{	
					
		public static function ordermaterials()
		{	
			$stageDBO = DatabaseObjectFactory::build('supplier');
			$arr = ['supplier_id','company_name'];
			//$stageDBO->UnicornMagic('gift_order', 'customer');
			$suppliers = $stageDBO->getRecords($arr);
			//$stageDBO->drawTable();
			//$InventoryDBO = DatabaseObject;
			//$InventoryDBO->setTable('customer');
			//$arr = ['first_name'];
			//$InventoryDBO->UnicornMagic('gift_order');
			//$suppliers = $InventoryDBO->getRecords($arr);
			//drawTable($arr);
			require_once('views/pages/orderMaterials.php');
			
			//require_once('views/pages/stage.php');
		}
		
		public static function getMaterials()
		{
			//GRAB THE SUPPLIER ID TO BE USED IN WHERE CLAUSE
			$supplier_id = $_POST['supplier'];
			
			$stageDBO = DatabaseObjectFactory::build('material');
			$arr = ['material_id','supplier_id'];
			$materials = $stageDBO->getRecords($arr,'<?php echo $supplier_id; ?> = supplier_id');
			
			$stageDBO = DatabaseObjectFactory::build('supplier_discount');
			$arr = ['material_id','supplier_id'];
			$discounts = $stageDBO->getRecords($arr,'<?php echo $supplier_id; ?> = supplier_id');
			require_once('views/pages/orderMaterials2.php');
		}
			
		public static function submitOrder()
		{
			//THIS FUNCTION GRABS ALL THE VALUES FROM FORM AND STORES IT IN SESSION
			$_SESSION['material'] = $_POST['material'];
			$_SESSION['quantity'] = $_POST['quantity'];
			$_SESSION['supplier_id'] = $_POST['supplier_id'];
			
			//Confirms the order before inserting, hence the SESSION variables.
			require_once('views/pages/confirmSupplyOrder.php');
		}
		
		public static function InsertOrder()
		{
			for($i = 0; $i < count($_SESSION['material']); $i++)
			{
			echo $_SESSION['material'][$i] ."<br>". $_SESSION['supplier_id']."<br>";
			}
			
			//echo $_SESSION['employee_id'];
			//header('Location: ?controller=menus&action=mainMenu');
			
		}
		
		public static function manageinventory()
		{
			$stageDBO = DatabaseObjectFactory::build('material');
			$arr = ['material_id','unit_price'];
			$materials = $stageDBO->getRecords($arr);
			//include('views/pages/manageinventory.php');
			
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