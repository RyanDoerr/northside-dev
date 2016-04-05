<?php
	$stageDBO = DatabaseObjectFactory::build('order');
	$arr = ['order_id', 'customer_id'];
	$records = $stageDBO->getRecords($arr);
	var_dump($records);
	//var_dump($stageDBO->$field_set);
?>
