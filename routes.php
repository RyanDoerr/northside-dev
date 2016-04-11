<?php
	function call($controller, $action) {
	//Pull in the file that matches the controller name
		require_once('controllers/' . $controller .  '_controller.php');
	//Here is where we create many different controller objects
	/*
	PagesController: Creates a basic page object
	ReportsController: Creates a basic ReportsController object
	FormsController: Creates a basic FormsController object

	Each basic object must have an entry in the $controllers array, and have corresponding actions
	Controllers and Actions are sent in <a> tags as $_GET variables
	*/
		switch($controller) {
			case 'pages' :
				$controller = new PagesController();
			break;

			case 'reports' :
				$controller = new ReportsController();
			break;

			case 'forms' :
				$controller = new FormsController();
			break;

			case 'menus' :
				$controller = new MenusController();
			break;
			//Group Page Controllers
			case 'order' :
				$controller = new OrdersController();
				break;
			case 'employees' :
				$controller = new EmployeesController();
			break;
			case 'inventory' :
				$controller = new InventoryController();
				break;
		}

		//call the action
		$controller->{ $action }();
	}

	//just a list of the controllers we have and their actions
	//actions are "pages", but also functions that might be needed within the page class
	//for example startSession is not a page, but is included on pages to keep a user's session alive
	$controllers = array('pages' 	=> ['login', 'errors', 'menu','success', 'startSession', 'verify', 'stage'], 
						 'reports' 	=> [],
						 'forms' 	=> [],
						 'menus' 	=> ['mainMenu', 'subMenu'],
<<<<<<< HEAD
						 'order'	=> ['enterorder', 'lookuporder', 'findorder', 'submitForm']
						 );
=======
						 'order'	=> ['enterorder', 'lookuporder', 'findorder', 'returnorder', 'submitForm','confirm','manageorders','editGift'],
						 'employees' => ['addemployee'],
						'inventory' => ['ordermaterials', 'getMaterials','submitOrder','InsertOrder','manageinventory','addCraft','addMaterial','editMaterial']
						);

>>>>>>> be9fcab15dc115e6abfdbd763cd736315d1cc18f
	//Check if action and controller are allowed
	//with failure redirect to error page

	if (array_key_exists($controller, $controllers)) 
	{
		if (in_array($action, $controllers[$controller])) 
		{
			call($controller, $action);
		}
		else 
		{
			call('pages', 'login');
		}
	}
	else
	{
		call('pages', 'login');
	}
?>
