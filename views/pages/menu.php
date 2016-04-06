<?php
	MenusController::makeMenu(MenusController::$displayNames['Menu']);

	//MenusController::$displayNames['Menu']
?>
<link href="../testMenu.css" rel="stylesheet" type="text/css">
<body class="displayed">
<nav class="menu">
  <nav class="drop-down-menu">
    <input type="checkbox" class="activate" id="accordion-1">
    <label for="accordion-1" class="menu-title">Order</label>

    <div class="drop-down">
      <a href="#">Enter Order</a>
      <a href="#">Look up Order</a>
      <a href="#">Manage Orders</a>
      <a class="last" href="#">Return Item</a>
    </div>
  </nav>
  <nav class="drop-down-menu">
    <input type="checkbox" class="activate" id="accordion-2">
    <label for="accordion-2" class="menu-title">Inventory</label>

    <div class="drop-down">
      <a href="#">Order Materials</a>
      <a href="#">Manage Inventory</a>
      <a href="#">Display Inventory Sheet</a>
      <a class="last" href="#">Record Inventory</a>
    </div>
  </nav>
  <nav class="drop-down-menu">
    <input type="checkbox" class="activate" id="accordion-3">
    <label for="accordion-3" class="menu-title">Reports</label>

    <div class="drop-down">
      <a href="#">Key Indicator</a>
      <a href="#">Inventory</a>
      <a href="#">Orders</a>
      <a class="last" href="#">Suppliers</a>
    </div>
  </nav>
  <nav class="drop-down-menu">
    <input type="checkbox" class="activate" id="accordion-4">
    <label for="accordion-4" class="menu-title">Employees</label>

    <div class="drop-down">
      <a href="#">Edit Employee</a>
      <a class="last" href="#">Add Employee</a>
    </div>
  </nav>
  <nav class="drop-down-menu">
    <input type="checkbox" class="activate" id="accordion-5">
    <label for="accordion-5" class="menu-title">Suppliers</label>

    <div class="drop-down">
      <a href="#">Manage Suppliers</a>
      <a class="last" href="#">Manage Discounts</a>
    </div>
  </nav>
</nav>
</body>