<h3>Manage Orders - Edit Gift Order</h3>

<h4>Editing Gift ID <?php echo $gift_id; ?></h4>
<form action="?controller=order&action=updateGiftOrder" method = "post">
	<!--<label> Customer Last Name <input type = "text" name="customerLName"></label>-->
	<label> Recipient Last Name <input value="<?php echo $gifts[0]['rec_last_name'];?>" type = "text" name="recLName"></label>
	<br>
	
	<input type="submit" class="button blueButton" value="Generate">
	
</form>
