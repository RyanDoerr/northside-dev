<?php
	class PagesController 
	{
		private $employee_id;
//This will insert sessionstart into necessary pages
		public function session($set)
		{
			switch($set)
			{
				case 'start':
					echo 'session_start();';
					break;

				case 'unset':
					echo 'session_unset();<br>';
					break;
			}
		}
		public function verify()
		{
			require_once('models/authentication.php');

			if (isset($_POST['login']))
			{
				$_SESSION['employee_id'] = $_POST['employee_id'];
				$_SESSION['password_hash'] = $_POST['password_hash'];
				$employee_id = $_SESSION['employee_id']; //new, testing
			}

			$user = Authentication::verify($_SESSION['employee_id'], $_SESSION['password_hash']);

			//verify user integrity
			if ($user){
				return true;
			}
			else{
				return false;
			}

		}
		
		public function login()
		{
			require_once('views/pages/login.php');
		}
		public function menu()
		{
			if (PagesController::verify())
			{
				header('Location:?controller=menus&action=mainMenu');
			}

		}
		public function errors()
		{
			include('views/pages/error.php');
		}
		public function stage()
		{
			require('models/database.php');
			require('views/pages/stage.php');


		}
		

	
	}
