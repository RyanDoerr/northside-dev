<?php
	session_start();
?>
<!DOCTYPE html>
	<html>
		<head>
			<script src="jquery.js"></script>
			<meta charset="utf-8">
			<link href="css/main.css" rel="stylesheet" type="text/css">
			<link rel="stylesheet" href="jquery-ui/jquery-ui.min.css">
			<script type="text/javascript" src="jquery-ui/jquery-ui.min.js"></script>
			<script type='text/javascript' src='css/addItem.js'></script>
			<!-- links to the style sheet -->
		</head>
		<body>
			<header>
				
			</header>
			<nav>
				<a style="float:left;" href="?controller=menus&action=mainMenu">Main Menu</a>
			</nav><br>
			<?php require_once('routes.php'); ?>

		</body>
	</html>
