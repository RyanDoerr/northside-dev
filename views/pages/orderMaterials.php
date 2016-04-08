<?php ?>

<h3>Order Materials</h3>

<h4>Select a Supplier</h4>
<form action = "?controller=inventory&action=getMaterials" method="post">
	<select name = "supplier">
		<?php foreach($suppliers as $supplier) { ?>
			<option value="<?php echo $supplier['supplier_id'];?>"><?php echo $supplier['company_name']; ?></option>
		<?php } ?>
	</select><br><br>
	<input type = "button" value="Cancel" class = "button redButton"><input type = "submit" value="Next" class = "button blueButton">
</form>

				
		