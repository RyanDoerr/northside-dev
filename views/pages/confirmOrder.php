<!-- This is the confirm order screen, used for all 3 types of orders.-->
<table>
<th>Items</th><th>Item Price</th><th>Quantity</th>
<?php
	
	$index = 0;
	if(self::$orderType != 'custom') //The gift and sale orders by have their items in result sets.
	{
		foreach(self::$OrderDetailsColumns['item_id'] as $item)    //Relates each quantity to that particular item.
		{
			echo '<tr><td>'.$item.'</td><td>'.self::$OrderDetailsColumns['item_price'][$index].'</td><td>'.self::$OrderDetailsColumns['qty'][$index].'</td></tr><br>';
			$index++;
		}
		
		echo '</table><br>Subtotal: $' . number_format(self::$orderColumns['subtotal'],2);
		echo '<br>Tax Amount: $' . number_format(self::$orderColumns['tax_amount'],2);
		echo '<br>Total: $' . number_format(self::$orderColumns['total'],2);
		
		self::confirm();
	}
	
	else
	{
		echo '<tr><td>'.$items.'</td><td>15.00</td><td>'.$quantities.'<br>';
		echo '</table>';
		//TO BE CONTINUED...
	}

?>
<form action="?controller=order&action=confirm" method="post">
<input  class = 'button redButton' type='button' value='Cancel'/><input class='button blueButton' type='submit' value='Confirm'/>
</form>