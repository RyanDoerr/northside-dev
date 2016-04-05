<?php
  class MenusController 
  {
//This will insert sessionstart into necessary pages
                  //This may have to switch to a switch statement for efficiency reasons, but for now let's go with it.
                  //Menu English Names
    public static $displayNames = array('Menu'        => ['Order', 'Inventory', 'Reports', 'Employees', 'Suppliers']);

    public static $subMenuNames = array('Order'       => ['Enter Order', 'Look Up Order', 'Manage Orders', 'Return Order'],
                                        'Inventory'   => ['Order Materials','Manage Inventory','Display Inventory Sheet','Record Inventory'],
                                        'Reports'     => ['Key Indicator','Inventory','Orders','Suppliers'],
                                        'Employees'   => ['Add Employee', 'Edit Employee'],
                                        'Suppliers'   => ['Manage Suppliers','Manage Discounts']);
    public static $subMenu;

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
    //This function prints a menu and a sub menu if the $_GET[subMenu] is set
    public static function makeMenu()
    {
      print "<nav class='navbar'>";
        foreach ( MenusController::$displayNames['Menu'] as $menuItem)
        {
          print "<a href='?controller=menus&action=mainMenu&subMenu=$menuItem'>$menuItem</a><br>";
          if ((isset($_GET['subMenu'])) && $_GET['subMenu']== $menuItem){
            print "<nav class='subnavbar'>";
            foreach ( MenusController::$subMenuNames[$menuItem] as $subMenuItem){

              print "&nbsp;&nbsp;&nbsp;&nbsp<a href='?controller=".strtolower($menuItem)."&action=".strtolower(str_replace(' ', '', $subMenuItem))."'>$subMenuItem</a>";
            }
            print "<nav class='subnavbar'>";
          }
        }
    }
    public static function mainMenu()
    {
      require('views/pages/menu.php');
    }

  }