<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>All Driver Information</TITLE>
<link href="../tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../tablecloth/tablecloth.js"></script>
</HEAD>
<?php

#echo "You clicked $class <br>";
include './config.php';
include('register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

$sql = "SELECT * from competitors WHERE boat_class !='ZZZZ' ORDER BY boat_class, boat_number ASC";
$classresult = mysql_query($sql);

$num = 0;
$num = mysql_numrows($classresult);

echo "There are $num total boats registered, excluding pre-reg no-shows. <br>";

#  ***  Look up for the first time entering screen **

echo "<table border='1' width='100%'>";

$i = 0;
while ($i < $num) {
	$competitor_id1 = mysql_result($classresult,$i,"competitor_id");
	$boat_class = mysql_result($classresult,$i,"boat_class");
	$boat_number = mysql_result($classresult,$i,"boat_number");
	$driver_first = mysql_result($classresult,$i,"driver_first");
	$driver_middle = mysql_result($classresult,$i,"driver_middle");
	$driver_last = mysql_result($classresult,$i,"driver_last");
	$driver_dob = mysql_result($classresult,$i,"driver_dob");
	$driver_address = mysql_result($classresult,$i,"driver_address");
#	$driver_address2 = mysql_result($classresult,$i,"driver_address2");
	$driver_city = mysql_result($classresult,$i,"driver_city");
	$driver_state = mysql_result($classresult,$i,"driver_state");
	$driver_zip = mysql_result($classresult,$i,"driver_zip");
	$driver_dl = mysql_result($classresult,$i,"driver_dl");
	$driver_phone = mysql_result($classresult,$i,"driver_phone");
	$owner_first = mysql_result($classresult,$i,"owner_first");
	$owner_middle = mysql_result($classresult,$i,"owner_middle");
	$owner_last = mysql_result($classresult,$i,"owner_last");
	$owner_address = mysql_result($classresult,$i,"owner_address");
	$owner_city = mysql_result($classresult,$i,"owner_city");
	$owner_state = mysql_result($classresult,$i,"owner_state");
	$owner_zip = mysql_result($classresult,$i,"owner_zip");
	$owner_phone = mysql_result($classresult,$i,"owner_phone");
	$sponsor_name = mysql_result($classresult,$i,"sponsor_name");
	$sponsor_address = mysql_result($classresult,$i,"sponsor_address");
	$emer_first = mysql_result($classresult,$i,"emer_first");
	$emer_last = mysql_result($classresult,$i,"emer_last");
	$emer_address = mysql_result($classresult,$i,"emer_address");
	$emer_phone = mysql_result($classresult,$i,"emer_phone");
	$emer_relation = mysql_result($classresult,$i,"emer_relation");
	$boat_name = mysql_result($classresult,$i,"boat_name");
	$boat_year = mysql_result($classresult,$i,"boat_year");
	$boat_mfg = mysql_result($classresult,$i,"boat_mfg");
	$boat_hull = mysql_result($classresult,$i,"boat_hull");
	$boat_length = mysql_result($classresult,$i,"boat_length");
	$boat_engines = mysql_result($classresult,$i,"boat_engines");
	$boat_block = mysql_result($classresult,$i,"boat_block");
	$boat_cuinch = mysql_result($classresult,$i,"boat_cuinch");
	$boat_outdrivetype = mysql_result($classresult,$i,"boat_outdrivetype");
	$boat_mods = mysql_result($classresult,$i,"boat_mods");
	$boat_state = mysql_result($classresult,$i,"boat_state");
	$bio = mysql_result($classresult,$i,"bio");

	
#mysql_close($con);



echo "<BODY>";
#echo "<h2>Driver Information for  $boat_class -$boat_number</h2>";
echo "<tr>";
echo "<td width='10%'><h4>$boat_class -$boat_number</h4></td>";
echo "<td width='59%' valign='top' align='left'>";
echo "<h3><u>Driver:</u><br>$driver_first $driver_middle $driver_last  From $driver_city, $driver_state";
echo "<br>";
echo "<u>Boat Name:</u><br>$boat_name";
echo"<br>";
echo"<u>Boat Info:</u><br>$boat_year $boat_mfg $boat_length feet.";
echo"<br>";
echo"<u>Boat Mods:</u><br>$boat_mods";
echo"<br>";
echo"<u>Boat Engine:</u> There are $boat_engines  engines that are $boat_cuinch cubic inches.";
echo"<br><br></h3>";
echo"<h3>This boat is sponsored by  $sponsor_name</h3>";
echo"</td>";
echo"<td width='41%' valign='top' align='left'>";
echo"<h3><u>Previous Scores</u></h3>";

$con2 = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con2);

#$con2 = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
#mysql_select_db($DB_NAME,$con2);

   
   #$result = mysql_query("SELECT * FROM speeds WHERE competitor_id=$competitor",$con);
   $result2 = mysql_query("SELECT run_id,competitor_id,speed,date_format(timestamp,'%m-%d-%y %h:%i:%s %p')as timeformat FROM speeds WHERE competitor_id=$competitor_id1 ORDER BY timeformat DESC",$con2);

$num2 = 0;
$num2 = mysql_numrows($result2);

$j=0;

while ($j < $num2) {

	$run_id = mysql_result($result2,$j,"run_id");
	$competitor_id = mysql_result($result2,$j,"competitor_id");
	$speed = mysql_result($result2,$j,"speed");
	$timestamp = mysql_result($result2,$j,"timeformat");
	
	++$j;
	
	echo '<h3>Run No: ';
	echo $run_id;
	echo ' --- ';
	echo $speed;
	echo ' MPH</h3>';
	#echo ' --- ';
	#echo $timestamp;
	#echo '<BR>';

}


++$i;



}


#while ($myrow = mysql_fetch_row($result)) {
#
#
#
#		printf("Run ID:%s&nbsp;&nbsp;%s MPH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%s&nbsp;%s&nbsp;%s", $myrow[0],$myrow[2],$myrow[3],$myrow[4],$myrown[5]);
#
#		echo "<BR>\n";
#

#}

#echo "<hr>";
mysql_close($con);
mysql_close($con2);

?>
</td>
</tr>
</table>
<?php echo $DB_NAME;?>
</BODY>

</HTML>
