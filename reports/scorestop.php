<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Shootout Top Scores</TITLE>
</HEAD>

<h2> Top Scores	</h2>

<br>

<?php
include '../config.php';

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);

   $result = mysql_query("SELECT competitors.boat_class,competitors.boat_number,competitors.driver_first,competitors.driver_last,speeds.speed,date_format(speeds.timestamp,'%m-%d-%y %h:%i:%s %p')as timeformat FROM competitors,speeds WHERE competitors.competitor_id=speeds.competitor_id",$con);
   
echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='97%' id='AutoNumber1'>";


$i = 0;
while ($i < $num) {
	$boat_class = mysql_result($result,$i,"competitors.boat_class");
	$boat_number = mysql_result($result,$i,"competitors.boat_number");
       $speed = mysql_result($result,$i,"speeds.speed");
       $timeformat = mysql_result($result,$i,"timeformat");
echo "<tr>";

	echo "<td> <center> $boat_class-$boat_number</td><td> $speed </td><td> $timeformat </td> </center>";

++$i;

echo "</tr>";

}


echo "</table>";



echo "<hr>";
mysql_close($con);

?>


<BODY>

</BODY>

</HTML>