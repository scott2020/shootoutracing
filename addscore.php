<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Adding a Score </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>

<?php

include '/config/config.php';
include('register_globals.php');
register_globals();


$competitor=$_REQUEST["competitor"];
$class=$_REQUEST["class"];
$txtScore=$_REQUEST["txtScore"];

$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);
	

   $sql = "INSERT INTO speeds(competitor_id,speed,boat_class) VALUES('$competitor','$txtScore','$class')";

   $result = mysql_query($sql);
   
   if ($result) {
   echo "result = $result<br>\n";
   echo "<BR><h2>Successfully added a score for competitor number $competitor in class $class.<br>";
   echo "Speed entered was $txtScore.</h2><br>";

   #echo "$competitor <BR>";
   #echo "$txtScore <BR>";

   echo "Go <A HREF = './index.php'>Go Back to Main Menu</A><br>";
   echo "Go <A HREF = './listcompforscore.php'>Go Back to Scoring Entry</A><br>";

    mysql_close($con);

	$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
	mysql_select_db($DB_NAME,$con);
	

   $sql = "UPDATE competitors SET runs_remain = runs_remain -1 WHERE competitor_id=$competitor";
   $result = mysql_query($sql);
   echo "<BR><h3>Updated the number of runs remaining for $competitor.<br>";

   } else {

	   echo "<h2>Could not update.  System error.</h2>";

   }



?>


</BODY>
</HTML>
