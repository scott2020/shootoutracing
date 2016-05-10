<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Reclass audit trail</TITLE>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</HEAD>

<h2> Reclass Audit Trail</h2>

<br>

<?php
include './config.php';
include('register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#  
#   mysql_select_db("shootout",$con);

#$result = mysql_query("SELECT competitors.boat_class,competitors.driver_first,competitors.driver_last,max(speeds.speed),date_format(speeds.timestamp, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat FROM competitors, speeds WHERE competitors.competitor_id = speeds.competitor_id GROUP BY competitors.competitor_id",$con);

$sql = 'SELECT oldclass,newclass,date_format( time, \'%m-%d-%y %h:%i:%s %p\' ) AS timeformat'
        . ' FROM audit';
        #. ' WHERE competitors.competitor_id = speeds.competitor_id'
        #. ' ORDER BY speeds.run_id ASC'; 
 

$result = mysql_query($sql);

echo "<hr>";
echo "<br>$sql<br><br>";


$num = 0;
$num = mysql_numrows($result);

echo "There are $num reclasses entered in the audit trail. <BR>";

echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='97%' id='AutoNumber1'>";
echo "<tr><th>Old Class</th><th>New Class</th><th>Time</th></tr>";

$i = 0;
while ($i < $num) {
	$oldclass = mysql_result($result,$i,"oldclass");
	$newclass = mysql_result($result,$i,"newclass");
	$timeformat = mysql_result($result,$i,"timeformat");

echo "<tr>";

	echo "<td>$oldclass</td><td>$newclass</td><td>$timeformat </td>";

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
