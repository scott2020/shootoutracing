<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Shootout Top All Scores</TITLE>
<link href="../tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../tablecloth/tablecloth.js"></script>
</HEAD>

<h2> Edit Scores </h2>

<br>

<?php
include '../config.php';
include('../register_globals.php');
register_globals();


$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);

#$result = mysql_query("SELECT competitors.boat_class,competitors.driver_first,competitors.driver_last,max(speeds.speed),date_format(speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat FROM competitors, speeds WHERE competitors.competitor_id = speeds.competitor_id GROUP BY competitors.competitor_id",$con);

$sql = 'SELECT competitors.boat_class, competitors.boat_number,competitors.driver_first, competitors.driver_last,speeds.run_id, speeds.speed, date_format( speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat'
        . ' FROM competitors, speeds'
        . ' WHERE competitors.competitor_id = speeds.competitor_id'
        . ' ORDER BY competitors.boat_class, competitors.boat_number ASC'; 
 
$sure = chr(34);
$sure .= "Are you sure you want to delete this score?";
$sure .= chr(34);
   

$result = mysql_query($sql);

echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

echo "There are $num runs entered in the scoring table. <BR>";

echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='97%' id='AutoNumber1'>";


$i = 0;
while ($i < $num) {
	$run_id = mysql_result($result,$i,"speeds.run_id");
	$boat_class = mysql_result($result,$i,"competitors.boat_class");
	$boat_number = mysql_result($result,$i,"competitors.boat_number");
	$driver_first = mysql_result($result,$i,"competitors.driver_first");
	$driver_last = mysql_result($result,$i,"competitors.driver_last");
	$speed = mysql_result($result,$i,"speeds.speed");
    $timeformat = mysql_result($result,$i,"timeformat");

echo "<tr>";

	echo "<td>Run No: $run_id</td><td>Class: $boat_class-$boat_number</td><td> $speed MPH </td><td> $driver_first</td><td> $driver_last</td><td> Run Time: $timeformat </td><TD><A HREF=../admin/deletescore.php?run_id=$run_id onclick='return confirm($sure)'>Delete</A></TD>";

++$i;

echo "</tr>";

}


echo "</table>";



echo "<hr>";
mysql_close($con);

?>

<br><br>
<A HREF = "./admin/index.php">Back to Admin Menu</A>
<br>
<A HREF = "./index.php">Back to Main Menu</a>

<BODY>

</BODY>

</HTML>