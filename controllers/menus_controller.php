<?php
  class MenusController 
  {
//This will insert sessionstart into necessary pages
                  //This may have to switch to a switch statement for efficiency reasons, but for now let's go with it.
                  //Menu English Names
    public static $displayNames = array('Menu'      => ['Order', 'Inventory', 'Reports', 'Employees', 'Suppliers'], 
                   'Order'       => ['Enter Order', 'Look Up Order', 'Manage Orders', 'Return Order'],
                   'Inventory' => ['Order Materials','Manage Inventory','Display Inventory Sheet','Record Inventory'],
                   'Reports' => ['Key Indicator','Inventory','Orders','Suppliers'],
                   'Employees' => ['Add Employee', 'Edit Employee'],
                   'Suppliers' => ['Manage Suppliers','Manage Discounts']);

    public function session($set)
    {
      switch($set)
      {
        case 'start':
          echo 'session_start();';
          break;

        case 'unset':
          echo 'session_unset();<br>';
          break;
      }
    }
    //this function is not a page, it handles requests by specific cairo_pattern_get_surface(pattern)
    public static function makeMenu($subMenu = 0)
    {
      //print each menu value in array
      if ($subMenu = 0){
        foreach ( MenusController::$displayNames['Menu'] as $name){
          print "<a href='?controller=menus&action=subMenu'>$name</a><br>";
        }
      }
      else {
        foreach ( MenusController::$displayNames[$subMenu] as $name){
          print "<a href='?controller=menus&action=subMenu'>$name</a><br>";
        }
      }
    }
    public static function subMenu(){
      if (isset($_POST['subMenuName']))
      {
        $_SESSION['subMenuName'] = $_POST['subMenuName'];
      }
      MenusController::makeMenu($displayNames[$_SESSION['subMenuName']]);
    }
    public static function mainMenu()
    {
      require_once('views/pages/menu.php');
    }

  }