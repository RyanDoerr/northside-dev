
<?php
	class AddressesController 
	{
			public static $AddressForm = array(
					['name'=> 'streetNumber', 'label' => 'Street Number', 'type' => 'text'],
					['name'=> 'streetName', 'label' => 'Street Name', 'type' => 'text'],
					['name'=> 'streetType', 'label' => 'Street Type', 'type' => 'text'],		
					['name'=> 'city', 'label' => 'City', 'type' => 'text'],  
					['name'=> 'state', 'label' => 'State', 'type' => 'text'],
					['name'=> 'zip', 'label' => 'Zip', 'type' => 'text'],
					['name'=> 'country', 'label' => 'Country', 'type' => 'text'],
					['name'=> 'pobox', 'label' => 'P.O. Box', 'type' => 'text'],
					['name'=> 'employeeID', 'label' => 'Employee ID', 'type' => 'text'],
					['name'=> 'password', 'label' => 'Password', 'type' => 'text'],
					);		
					
			public static $AddressSelect = array(
					['name' => 'addressType', 'option1' => 'House', 'option2' => 'Apartment']
			);		
			
	}