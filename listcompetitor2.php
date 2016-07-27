<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<TITLE>Listing Competitors Screen</TITLE>

<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>

</HEAD>

<div id="container">

<h2> Edit a Competitor <br>
Choose a Competitor </h2> <br>

<div id="content">

<?php
include './config.php';
include('register_globals.php');
register_globals();
$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

$orderBy = array('boat_class', 'boat_number', 'driver_first');

$order = 'type';
if (isset($_GET['orderBy']) && in_array($_GET['orderBy'], $orderBy)) {
    $order = $_GET['orderBy'];
}

# SAMPLE::  ::  $query = 'SELECT * FROM aTable ORDER BY '.$order;
#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
    
#   mysql_select_db("shootout",$con);
# ORIGINAL:  $result = mysql_query("SELECT * FROM competitors ORDER BY boat_class, boat_number ASC",$con);
   $result = mysql_query("SELECT * FROM competitors ORDER BY ",$order,$con);
echo "<hr>";
$sure = chr(34);
$sure .= "Are you sure you want to delete this competitor?";
$sure .= chr(34);
$num = 0;
$num = mysql_numrows($result);
#$i = 0;
#while ($i < $num) {
#	$class_id = mysql_result($result,$i,"class_id");
#	$class_name = mysql_result($result,$i,"class_name");
#
#	echo "$class_id - $class_name<br>";
#	echo "<A HREF = './reg.php?class=$class_id'>$class_name</A><br>";
#++$i;
#
#}
#echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='70%' id='AutoNumber1'>";
echo "<table cellspacing='0' cellpadding='0'>";
echo "<tr>";
#echo "<th><a href='?orderBy=boat_number'>Boat #</a></th><th><a href='?orderBy=boat_class'>Class</a></th><th><a href='?orderBy=driver_first'>Boat #</a></th><th>Runs Left</th><th></th><th></th><th></th>";
echo "</tr>";
while ($myrow = mysql_fetch_row($result)) {
		printf("<td>%s</td><td>%s-%s </td><td>%s %s </td><td>%s</td><td><a href= ./editruns.php?competitor=%s>Add Runs</a></td><td><A HREF = ./editcompetitor.php?competitor=%s>Edit</A></TD><td><A HREF=./driverinfo.php?competitor=%s>Info</A></TD><TD>",
		$myrow[0],$myrow[27],$myrow[28],$myrow[1],$myrow[3],$myrow[42],$myrow[0],$myrow[0],$myrow[0]);
echo "</td></tr>";
	
}
echo "</table>";
echo "<hr>";
mysql_close($con);
?>

 </div>
</div>

<BODY>
<br>
<br>
<A HREF="./index.php">Go Back</A>
</BODY>

</HTML>
