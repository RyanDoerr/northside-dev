<style>
#tabs {
	margin:auto;
	width:700px;
}
</style>



  
  
  <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Materials</a></li>
    <li><a href="#tabs-2">Crafts</a></li>
	<li><a href="#tabs-3">Returns</a></li>
  </ul>
  
  <div id="tabs-1">
		<h3>Materials Inventory</h3>
			<form action = "?controller=inventory&action=addMaterial" method="post">
				<input style="width:160px;"class="button blueButton" type="submit" value="Add Material">
			</form>

			<table>
				<th>Edit</th><th>Material ID</th><th>Unit Price</th>
					<?php foreach($materials AS $material)
					{  ?>
					<tr>
						<td>
						<form action="?controller=inventory&action=editMaterial" method="post"><input type="submit" value="Edit" class="button">
							<input name = "material_id" type="hidden" value='<?php echo $material['material_id'] ?>'>
						</form>
					</td>
					<td><?php echo $material['material_id']?></td>
					<td><?php echo number_format($material['unit_price'],2)?></td>
				</tr>
				
			<?php } ?>
			</table>
				

  </div>
  <div id="tabs-2">
  	<!--CRAFTS INVENTORY-->
	<h3>Crafts Inventory</h3>
		<form action = "?controller=inventory&action=addCraft" method="post">
			<input style="width:160px;"class="button blueButton" type="submit" value="Add Craft">
		</form>

		<table>
			<th>Edit</th><th>Craft ID</th><th>Quantity on Hand</th>
			<?php foreach($crafts AS $craft)
			{  ?>
				<tr>
					<td>
					<form action="" method="post"><input type="submit" value="Edit" class="button">
						<input type="hidden" value='<?php echo $craft['craft_id'] ?>'>
					</form>
					</td>
					<td><?php echo $craft['craft_id']?></td>
					<td><?php echo number_format($material['unit_price'],2)?></td>
				</tr>
	
			<?php } ?>
		</table>




				
  </div>
  
  
  <div id="tabs-3">
	
				

  </div>
  
</div>



