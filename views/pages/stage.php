<?php
	$stageDBO = DatabaseObjectFactory::build('supplier');
	$arr = ['company_name'];
	//$stageDBO->UnicornMagic('gift_order', 'customer');
	$records = $stageDBO->getRecords($arr);
	$stageDBO->drawTable();
?>

