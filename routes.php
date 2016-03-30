<?php
	function call($controller, $action) {
	//Pull in the file that matches the controller name
		require_once('controllers/' . $controller .  '_controller.php');
	//Create new instance of that controller
		switch($controller) {
			case 'pages' :
				$controller = new PagesController();
			break;
			case 'database'  :
				$controller = new DatabaseController();
			break;
		}

		//call the action
		$controller->{ $action }();
	}

	//just a list of the controllers we have and their actiones
	$controllers = array('pages' => ['login', 'error', 'menu','success', 'startSession', 'verify'], 
						 'database'  => ['show', 'error']);

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