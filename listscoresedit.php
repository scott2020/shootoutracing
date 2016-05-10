<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Shootout Top All Scores</TITLE>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</HEAD>

<h2>All Scores by Boat Class and Number</h2>

<br>

<?php
include './config.php';
include('register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);


#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
  
#   mysql_select_db("shootout",$con);

#$result = mysql_query("SELECT competitors.boat_class,competitors.driver_first,competitors.driver_last,max(speeds.speed),date_format(speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat FROM competitors, speeds WHERE competitors.competitor_id = speeds.competitor_id GROUP BY competitors.competitor_id",$con);

$sql = 'SELECT competitors.competitor_id, competitors.boat_class, competitors.boat_number,competitors.driver_first, competitors.driver_last,speeds.run_id, speeds.speed, date_format( speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat'
        . ' FROM competitors, speeds'
        . ' WHERE competitors.competitor_id = speeds.competitor_id'
        . ' ORDER BY competitors.competitor_id, competitors.boat_class, competitors.boat_number ASC'; 
 
$sure = chr(34);
$sure .= "Are you sure you want to delete this score?";
$sure .= chr(34);
   

$result = mysql_query($sql);

echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

echo "There are $num runs entered in the scoring table. <BR>";

echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='97%' id='AutoNumber1'>";

#echo "<table summary='Summary' class='table a' cellspacing='0'>";

echo "<tr><th>Boat #</th><th>Run</th><th>Class</th><th>Speed</th><th>First</th><th>Last</th><th>Run Time</th></tr>";

$i = 0;
while ($i < $num) {
	$competitor_id = mysql_result($result,$i,"competitors.competitor_id");
       $run_id = mysql_result($result,$i,"speeds.run_id");
	$boat_class = mysql_result($result,$i,"competitors.boat_class");
	$boat_number = mysql_result($result,$i,"competitors.boat_number");
	$driver_first = mysql_result($result,$i,"competitors.driver_first");
	$driver_last = mysql_result($result,$i,"competitors.driver_last");
	$speed = mysql_result($result,$i,"speeds.speed");
        $timeformat = mysql_result($result,$i,"timeformat");
        $color = ($i & 1) ? "#fff" : "#C0C0C0";

#echo "<tr style=background:$color onmouseover=this.style.backgroundColor='#ff0000' onmouseout=this.style.backgroundColor='$color'>";

	echo "<td>$competitor_id</td><td>Run No: $run_id</td><td>Class: $boat_class-$boat_number</td><td> $speed MPH </td><td> $driver_first</td><td> $driver_last</td><td> Run Time: $timeformat </td>";

++$i;

echo "</tr>";

}


echo "</table>";



echo "<hr>";
mysql_close($con);

?>

<br><br>
<A HREF = "./index.php">Back to Main Menu</a>

<BODY>

</BODY>

</HTML>
