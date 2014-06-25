<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Shootout Top All Scores</TITLE>
</HEAD>

<h2> Scores By Class </h2>

<br>
Current as of <?=date( "F d, Y  H:i T.")?><br>

<?php
include '../config.php';
include('../register_globals.php');
register_globals();


$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);

#$result = mysql_query("SELECT competitors.boat_class,competitors.driver_first,competitors.driver_last,max(speeds.speed),date_format(speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat FROM competitors, speeds WHERE competitors.competitor_id = speeds.competitor_id GROUP BY competitors.competitor_id",$con);

$sql = 'SELECT DISTINCT boat_class'
        . ' FROM `competitors` ORDER BY boat_class ASC';
        
$result = mysql_query($sql);

echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

#echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='97%' id='AutoNumber1'>";


$i = 0;
while ($i < $num) {
	$boat_class = mysql_result($result,$i,"boat_class");

	echo "<br><br>";
	echo "<h2>Class:$boat_class</h2>";


        $sql2 = ("SELECT competitors.boat_class,competitors.boat_number,competitors.driver_first,competitors.driver_last,competitors.owner_first,competitors.owner_last,speeds.speed,date_format(speeds.timestamp, '%m-%d-%y %h:%i:%s %p') AS timeformat FROM competitors, speeds WHERE competitors.boat_class = '$boat_class' AND competitors.competitor_id=speeds.competitor_id ORDER BY speeds.speed DESC");


#   $sql2 = ("SELECT competitors.boat_class,competitors.driver_first,competitors.driver_last,speeds.speed,date_format(speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat FROM competitors, speeds WHERE competitors.boat_class = '$boat_class'");   


   $result2 = mysql_query($sql2); 
 
   $num2 = 0;
   $num2 = mysql_numrows($result2);

	echo "<table border='1' width='95%'>";
	echo "<tr>";
	echo "<td width='13%'><p align='center'>Speed</td><td width='24%'><p align='center'>Driver</td><td width='5%'><p align='center'>Boat No</td><td width='20%'>Run Time</td><td width='33%'><p align='center'>Owner</td>";
	echo "</tr>";
	echo "</table>";
	
     $j = 0;
     while ($j < $num2) {
           
           $speed = mysql_result($result2,$j,"speeds.speed");
		   $driver_first = mysql_result($result2,$j,"competitors.driver_first");
		   $driver_last = mysql_result($result2,$j,"competitors.driver_last");
           $owner_first = mysql_result($result2,$j,"competitors.owner_first");
           $owner_last = mysql_result($result2,$j,"competitors.owner_last");
		   $boat_number = mysql_result($result2,$j,"competitors.boat_number");
		   $timeformat = mysql_result($result2,$j,"timeformat");

	echo "<table border='1' width='95%'>";
       	 
	   echo "<tr>";
	   echo "<td width='13%'><p align='center'>$speed</td><td width='24%'>$driver_first $driver_last</td><td width='5%'><p align='center'>$boat_number</td><td width='20%'>$timeformat</td><td width='33%'>$owner_first $owner_last</td>";
	 echo "</tr>";

     ++$j;

   
   }
#  $sql2 = ("SELECT competitors.boat_class,competitors.driver_first,competitors.driver_last,speeds.speed,date_format(speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat FROM competitors, speeds WHERE competitors.boat_class = $boat_class");
#  echo "<td> $sql2 </td>";

++$i;

echo "</table>";

}


#echo "</table>";



echo "<hr>";
mysql_close($con);

?>


<BODY>

</BODY>

</HTML>