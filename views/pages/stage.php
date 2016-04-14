<?php
		$table           = 'user';
		$columns         = 'password_hash';
		$employee_id = 0;
		$database        = databaseConnection::getInstance();
		$dataset         = $database->select($table, $columns, [
																"employee_id" => $employee_id
																]);
		echo $dataset[0]."<br>";
?>


