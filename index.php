<?php 
// mikayla was here :)
//Here we start the session for the user.
//Here is our DB include
	require_once('connection.php');
//Here we check for our controller and action variables
	if(isset($_GET['controller']) && isset($_GET['action'])) 
	{
		$controller = $_GET['controller'];
		$action = $_GET['action'];
	}
	else 
	{
		$controller = 'pages';
		$action = 'home';
	}

	require_once('views/layout.php');
?>