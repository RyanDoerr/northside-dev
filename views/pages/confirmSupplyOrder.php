<!-- This is the confirm order screen for the Order Materials section -->
<h3>Order for Supplier ID <?php echo $_SESSION['supplier_id']; ?></h3>
<th>Material ID </th><th> Cost </th><th> Quantity</th>
<table>
<?php
	
	$index = 0;
		
		for($i = 0; $i < count($_SESSION['material']); $i++)
			{
			echo "<tr><td>".$_SESSION['material'][$i] ."</td><td>".$_SESSION['supplier_id']."<td>".$_SESSION['quantity'][$i]."</td></tr>";
			}
			
		echo '</table><br>';	
	
		/*
		echo '</table><br>Subtotal: $' . number_format(self::$orderColumns['subtotal'],2);
		echo '<br>Tax Amount: $' . number_format(self::$orderColumns['tax_amount'],2);
		echo '<br>Total: $' . number_format(self::$orderColumns['total'],2);
		
		self::confirm();
	}
	

*/
?>
<form action="?controller=inventory&action=InsertOrder" method="post">
<input  class = 'button redButton' type='button' value='Cancel'/><input class='button blueButton' type='submit' value='Confirm'/>
</form>