<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Adding More Runs </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>

<?php

include './config.php';
include('register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);
	

 #  $sql = "INSERT INTO speeds(competitor_id,speed,boat_class) VALUES('$competitor','$txtScore','$class')";
    $sql = "UPDATE competitors SET runs_remain = runs_remain +'$txtRuns' WHERE competitor_id=$competitor";
   $result = mysql_query($sql);
   
   if ($result) {
   echo "result = $result<br>\n";
   echo "<BR><h2>Successfully added more runs for competitor number $competitor.<br>";
   echo "Number of runs entered was $txtRuns.</h2><br>";

   #echo "$competitor <BR>";
   #echo "$txtScore <BR>";

   echo "Go <A HREF = './index.php'>Go Back to Main Menu</A><br>";
   echo "Go <A HREF = './listcompetitor.php'>Back to Competitor List</A><br>";

    mysql_close($con);
	

   } else {

	   echo "<h2>Could not update.  System error.</h2>";
		mysql_close($con);
   }



?>


</BODY>
</HTML>
