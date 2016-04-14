<?php 
$myfile = fopen("passwords", "r");
$i=0;
?>
<?php
while (!feof($myfile)){
	$i++;
	$myline = fgets($myfile);
	//echo $i."$myline"."<br>";
	echo password_hash($myline, PASSWORD_DEFAULT)."<br>";
}

fclose($myfile);
//echo password_hash("", PASSWORD_DEFAULT)."\n";

?>