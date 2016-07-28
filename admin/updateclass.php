<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Updating Class </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<BODY>

<?php

# Lookup the class
include '/config/config.php';
include('../register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#mysql_select_db("shootout",$con);

$sql = "SELECT * from classes WHERE class_id = '$class'";

#echo "<br>Query was $sql<br>";

$classresult = mysql_query($sql);

$num = 0;
$num = mysql_numrows($classresult);

echo "There were $num Rows of data returned. <br>";

$i = 0;
while ($i < $num) {
	$class_id = mysql_result($classresult,$i,"class_id");
	$class_name = mysql_result($classresult,$i,"class_name");
	$class_count = mysql_result($classresult,$i,"class_count");

	echo "Class ID is $class_id and Class is $class_name and Count is $class_count <BR>";

	++$i;

	
	mysql_query("UPDATE classes SET class_count=(class_count + 1) WHERE class_id='$class_id'");

}

mysql_close($con);
	

#        Update Class

#$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#mysql_select_db("shootout",$con);

$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

$sql = ("UPDATE competitors SET boat_class='$classname', boat_number='$class_count' WHERE competitor_id='$competitor'");

echo "SQL is $sql";



  $result = mysql_query($sql);
   
  if ($result) {

   echo "result = $result<br>\n";
   echo "$txtFirst <BR>";
   echo "$txtLast <BR>";
   #echo "$txtBoatmods <BR>";
   echo "<br><br>";

   echo "<h2> Class has been updated to $classname-$class_count</h2>";

   
   #echo "CLASS: $class_name <BR>";
   #echo "COUNT: $class_count <BR>";

#   echo "<br>Congratulations, $txtFirst $txtLast!";
#   echo "<br>Your $txtBoatyear $txtBoatmfg named $txtBoatname has been registered in the 2004 Lake";
#   echo "<br>Rescue Shootout with the following Class and Boat Number:";
#   echo "<br><h1>$txtClassname - $class_count<BR><BR><BR></H1>";


   echo "Go <A HREF = './index.php'> back to Admin Menu</A><BR><BR>";
   echo "Go <A HREF = '../index.php'> back to Main Menu</A><BR><BR>";
   }
   else {
	   echo "<BR><BR>Could not add competitor.  System error";
   }

$sql2 = ("UPDATE speeds SET boat_class='$classname' WHERE competitor_id='$competitor'");

echo "SQL Upsate speeds table is $sql2";

	$result2 = mysql_query($sql2);
	
	if ($result2) {

   echo "result to speeds = $result<br>\n";
   echo "<br><br>";

   echo "<h2> Class has been updated in Speeds table to match new class.</h2>";

   }
   else {
	   echo "<BR><BR>Could not update speeds table...  System error";
   }

$sql3 = "INSERT INTO audit (oldclass,newclass) VALUES ('$txtOldclass','$classname')";
$result3 = mysql_query($sql3);
echo "<BR><BR><H3>Sql3 audit is: $sql3";



   mysql_close($con);


?>

</BODY>
</HTML>
