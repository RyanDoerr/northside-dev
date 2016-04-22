<?php
	session_start();	
	//var_dump($_SESSION);
?>
<!DOCTYPE html>
	<html>
		<head>
			<script src="lib/jquery.js"></script>
			<meta charset="utf-8">
			<link href="css/main.css" rel="stylesheet" type="text/css">
			<link href="css/reports.css" rel="stylesheet" type="text/css">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta name="description" content="Northside Craft Exchange Inventory Report">
			<!--<link href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.2/flatly/bootstrap.min.css" rel="stylesheet">-->

			<!--These two jquery-ui scripts are used for the tabs widget-->
			<link rel="stylesheet" href="jquery-ui/jquery-ui.min.css">
			<script type="text/javascript" src="jquery-ui/jquery-ui.min.js"></script>
			<script type='text/javascript' src='css/addItem.js'></script>
			<!-- links to the style sheet -->
		</head>
		<body>
			<header>

			<!-- <a href="http://localhost:4750/northside-dev/?controller=menus&action=mainMenu">Main Menu</a> -->
				
			</header>
			<!--
			<nav>
				<a style="float:left;" href="?controller=menus&action=mainMenu">Main Menu</a>
			</nav><br>
			-->
			<div class='wrapper'>
				<?php require_once('routes.php'); ?>
			</div>

		</body>
	</html>
