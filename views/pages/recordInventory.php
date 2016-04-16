
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Record Inventory</a></li>
    <li><a href="#tabs-2">Update Inventory</a></li>
  </ul>
  <div id="tabs-1">
  I AM REDOING THIS SCREEN -- ALEX
    <table>
<th>Item ID</th><th>Item Name</th><th>Quantity on Hand</th><th>Calculated Quantity On Hand</th>

<?php foreach($items as $item)
{ ?>
	<tr>
		<td><?php echo $item['item_id'] ?></td>
		<td><?php echo $item['name'] ?></td>
		<td><?php echo $item['qoh'] ?></td>
		<td><?php echo $item['calculated_qoh'] ?></td>
	</tr>
<?php } ?>

</table>
  </div>
  <div id="tabs-2">
   <table>
<th>Item ID</th><th>Item Name</th><th>Quantity on Hand</th><th>Calculated Quantity On Hand</th>

<?php foreach($items as $item)
{ ?>
	<tr>
		<td><?php echo $item['item_id'] ?></td>
		<td><?php echo $item['name'] ?></td>
		<td><?php echo $item['qoh'] ?></td>
		<td><?php echo $item['calculated_qoh'] ?></td>
	</tr>
<?php } ?>

</table>
  </div>
  
</div>


