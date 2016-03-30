<?php
	class PagesController 
	{
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
			}

			$user = Authentication::verify($_SESSION['employee_id'], $_SESSION['password_hash']);

			//echo $user;

			if ($user){
				echo '<br>MISSION SUCCESS :) ACCESS GRANTED!<br>';
			}
			else{
				echo 'Access DENIED.';
			}

		}
		
		public function login()
		{
			require_once('views/pages/login.php');
		}
		public function menu()
		{
			PagesController::verify();
			require_once('views/pages/menu.php');
		}

	}
