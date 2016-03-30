<?php
	function call($controller, $action) {
	//Pull in the file that matches the controller name
		require_once('controllers/' . $controller .  '_controller.php');
	//Here is where we create many different controller objects
	/*
	PagesController: Creates a basic page object
	ReportsController: Creates a basic ReportsController object

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
		}

		//call the action
		$controller->{ $action }();
	}

	//just a list of the controllers we have and their actiones
	$controllers = array('pages' => ['login', 'error', 'menu','success', 'startSession', 'verify'], 
						 'database'  => ['show', 'error'],
						 'reports' => []);

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