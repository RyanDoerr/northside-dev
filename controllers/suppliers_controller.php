
<?php
	require_once('models/database.php'); 
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
			$supplier_id = $_POST['supplier_id'];
			require_once('views/pages/addSupplier.php');
		}
		
		
			
			
	}