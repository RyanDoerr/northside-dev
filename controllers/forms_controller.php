<?php
  class FormsController 
  {
			public static $AddressForm = array(
					['element' => 'input','name'=> 'streetNumber', 'label' => 'Street Number', 'type' => 'text'],
					['element' => 'input','name'=> 'streetName', 'label' => 'Street Name', 'type' => 'text'],
					['element' => 'input','name'=> 'streetType', 'label' => 'Street Type', 'type' => 'text'],	
					['element' => 'select','name' => 'addressType', 'options' => ['House', 'Apartment']],					
					['element' => 'input','name'=> 'city', 'label' => 'City', 'type' => 'text'],  
					['element' => 'input','name'=> 'state', 'label' => 'State', 'type' => 'text'],
					['element' => 'input','name'=> 'zip', 'label' => 'Zip', 'type' => 'text'],
					['element' => 'input','name'=> 'country', 'label' => 'Country', 'type' => 'text'],
					['element' => 'input','name'=> 'pobox', 'label' => 'P.O. Box', 'type' => 'text'],
					['element' => 'input','name'=> 'employeeID', 'label' => 'Employee ID', 'type' => 'text'],
					['element' => 'input','name'=> 'password', 'label' => 'Password', 'type' => 'text']);	
					
			public static $EmployeeForm = array(
					['element' => 'input','name'=> 'accessLevel', 'label' => 'Administrator', 'type' => 'radio'],
					['element' => 'input','name'=> 'accessLevel', 'label' => 'Sales Employee', 'type' => 'radio'],
					['element' => 'input','name'=> 'firstName', 'label' => 'First Name', 'type' => 'text'],  
					['element' => 'input','name'=> 'lastName', 'label' => 'Last Name', 'type' => 'text'],
					['element' => 'input','name'=> 'hireDate', 'label' => 'Hire Date', 'type' => 'text'],
					['element' => 'input','name'=> 'phone', 'label' => 'Phone Number', 'type' => 'text'],
					['element' => 'input','name'=> 'employeeID', 'label' => 'Employee ID', 'type' => 'text'],
					['element' => 'input','name'=> 'password', 'label' => 'Password', 'type' => 'text'],
					);		
					
			public static $ReturnItemForm = array(
					['element' => 'input','name'=> 'order_id', 'label' => 'Order ID', 'type' => 'text'],
					['element' => 'input','name'=> 'item_id', 'label' => 'Item ID', 'type' => 'text'],
					['element' => 'input','name'=> 'damaged', 'label' => 'Damaged', 'type' => 'radio'],
					['element' => 'input','name'=> 'damaged', 'label' => 'Not Damaged', 'type' => 'radio'],  
					['element' => 'input','name'=> 'refundable', 'label' => 'Refundable', 'type' => 'radio'],
					['element' => 'input','name'=> 'refundable', 'label' => 'Non-refundable', 'type' => 'radio']
					);		
			
			/*public static $CustomForm = array(
					['element' => 'input','name'=> 'orderType', 'value' => 'custom', 'type' => 'hidden'],
					['element' => 'select','name'=> 'material', 'label' => 'Item ID', 'type' => 'text', 'class' => 'selectItems'],
					['element' => 'input','name'=> 'damaged', 'label' => 'Damaged', 'type' => 'radio'],
					);*/
		
  }