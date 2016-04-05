<?php
	$stageDBO = DatabaseObjectFactory::build('order');
	$arr = ['order_id', 'customer_id', 'employee_id'];
	$filter = ['order_id' => '6001'];
	$records = $stageDBO->getRecords($arr, $filter);
	$stageDBO->drawTable();
	//var_dump($records);
	//var_dump($stageDBO->$field_set);
?>
