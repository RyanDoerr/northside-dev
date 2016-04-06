<?php
	$stageDBO = DatabaseObjectFactory::build('order');
	$arr = ['customer_id', 'subtotal'];
	$joinTable = "customer";
	$joinColumn = "customer_id";
	//$filter = ['order_id[>]' => '6013'];
	//$stageDBO->setJoin(["[><]order_details" => ["order_id" => "custom_order.order_id"]]);
	$stageDBO->setJoin($joinTable, $joinColumn);
	$records = $stageDBO->getRecords($arr);
	$stageDBO->drawTable();
	// The row author_id from table post is equal the row user_id from table account
	//"[>]account" => ["author_id" => "user_id"],
	//var_dump($records);
	//var_dump($stageDBO->$field_set);
?>
