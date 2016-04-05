<!--This navigation bar provides a link back to the home page, plus the current page.-->
<nav>
<a style="float:left;" href="?controller=menus&action=mainMenu">Main Menu ></a>
<p style="float:left; margin:0;">&nbsp;&nbsp;&nbsp;Enter Order</p>
</nav>
<div style="clear:both;"></div>

What type of order is this?
<?php
	OrdersController::drawRadioButtons();
?>