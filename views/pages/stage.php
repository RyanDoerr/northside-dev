<?php
	$stageDBO = DatabaseObjectFactory::build('order');
	$arr = ['order_id', 'last_name'];
	$stageDBO->UnicornMagic('gift_order', 'customer');
	$records = $stageDBO->getRecords($arr);
	$stageDBO->drawTable();
?>
