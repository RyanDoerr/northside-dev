<!-- This is the confirm order screen, used for all 3 types of orders.-->
<table>
<th>Items</th><th>Item Price</th><th>Quantity</th>
<?php
	
	$index = 0;
	if($orderType != 'custom') //The gift and sale orders by have their items in result sets.
	{
		foreach($items as $item)    //Relates each quantity to that particular item.
		{
			echo '<tr><td>'.$item.'</td><td>'.$itemPrices[$index].'</td><td>'.$quantities[$index].'</td></tr><br>';
			$index++;
		}
		
		echo '</table><br>Subtotal: $' . number_format($subtotal,2);
		echo '<br>Tax Amount: $' . number_format($tax_amount,2);
		echo '<br>Total: $' . number_format($total,2);
	}
	
	else
	{
		echo '<tr><td>'.$items.'</td><td>15.00</td><td>'.$quantities.'<br>';
		echo '</table>';
		//TO BE CONTINUED...
	}

?>

<form>
<input class = 'button redButton' type='button' value='Cancel'/> <input class = 'button blueButton' type='submit' value='Confirm'/>
</form>