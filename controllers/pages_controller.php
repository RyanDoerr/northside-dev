<?php
	class PagesController 
	{
		//private $employee_id;
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
		public static function verify()
		{
			$_SESSION["user"] = 0;
			require_once('models/authentication.php');
			$dataset = [];
			if (!empty($_POST["userform"]))
			{
				$employee_id   = $_POST["employee_id"];
				$password = $_POST["password_hash"];	
			}
			else{
				$employee_id   = $_POST["employee_id"];
				$password = $_POST["password_hash"];
			}
			$dataset = Authentication::verification($employee_id, $password);
			$hashed = $dataset[0]["password_hash"];
			$userLevel = $dataset[0]["accessLevel"];
			if (password_verify($password, $hashed)){
				if ($userLevel == 3){
					$_SESSION["user"] = 3;
					header('Location:?controller=menus&action=makeMenu');
				}
				else if ($userLevel == 1){
					$_SESSION["user"] = 1;
					header('Location:?controller=menus&action=makeMenu');
				}

			}
			else{
				$error = "error";
				PagesController::login($error);
			}
		}
		
		public function login($error = "")
		{
			$_SESSION["user"] = 0;
			require_once('views/pages/login.php');
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
