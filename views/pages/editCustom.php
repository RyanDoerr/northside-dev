<h3>Manage Orders - Edit Custom Order</h3>

<h4>Editing Custom Order ID <?php echo $custom_order_id; ?></h4>
<form action="?controller=order&action=updateCustomOrder" method = "post">
	<!--<label> Customer Last Name <input type = "text" name="customerLName"></label>-->
	

	<label> Customer First Name <input value="<?php echo $custom[0]['first_name'];?>" type = "text" name="LName"></label><br>
	<label> Customer Last Name <input value="<?php echo $custom[0]['last_name'];?>" type = "text" name="FName"></label>
	<br>
	<label> Custom Gift Comment <textarea   name="comment" rows="5" columns = '10' ><?php echo $custom[0]['comment'];?></textarea></label>
	<br>
	
	<input type="submit" class="button blueButton" value="Generate">
	
</form>
