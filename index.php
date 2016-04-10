<?php 
//Here we start the session for the user.
//Here is our DB include
	require_once('connection.php');
//Here we check for our controller and action variables
	/*
		function customError($errno, $errstr) {
  			echo "<b>Error:</b> [$errno] $errstr<br>";
  			echo "errline:";
  			echo $errline;
  			echo "Ending Script";
  			die();
			}
	set_error_handler("customError");
	*/
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