<table>
<th>Items</th><th>Item Price</th><th>Quantity</th>
<?php
	
	$index = 0;
	foreach($items as $item)    //Relates each quantity to that particular item.
		{
			echo '<tr><td>'.$item.'</td><td>15.00</td><td>'.$quantities[$index].'<br>';
			$index++;
		}
	

?>
</table>
<form>
<input class = 'button redButton' type='button' value='Cancel'/> <input class = 'button blueButton' type='submit' value='Confirm'/>
</form>