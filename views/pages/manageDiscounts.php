
			<form action = "?controller=suppliers&action=addDiscount" method="post">
				<input style="width:160px;"class="button blueButton" type="submit" value="Add Discount">
			</form>

			<table>
				<th>Edit</th><th>Supplier ID</th><th>Material ID</th><th>Min. Qty</th><th>Discount Percent</th>
					<?php foreach($discounts AS $discount)
					{  ?>
					<tr>
						<td>
						<form action="?controller=suppliers&action=editDiscount" method="post"><input type="submit" value="Edit" class="button">
							<input name = "supplier_id" type="hidden" value='<?php echo $discount['supplier_id'] ?>'>
							<input name = "material_id" type="hidden" value='<?php echo $discount['material_id'] ?>'>
						</form>
					</td>
					<td><?php echo $discount['supplier_id']?></td>
					<td><?php echo $discount['material_id']?></td>
					<td><?php echo $discount['min_qty']?></td>
					<td><?php echo $discount['discount_percent']?></td>
				</tr>
				
			<?php } ?>
			</table>