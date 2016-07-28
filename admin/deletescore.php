<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Delete a Score </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>

<?php
include '/config/config.php';
include('../register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);
	
#	$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#	mysql_select_db("shootout",$con);

  $sql = "DELETE FROM speeds WHERE run_id = '$run_id'";


echo "query = $sql<br>\n";

  $result = mysql_query($sql);
  
   if ($result) {
   echo "result = $result<br>\n";
   echo "<h3> Deleted score for run number $run_id<br><br>";
   echo "Go <A HREF = '../admin/index.php'>Back to Admin</A>";

   }
   else {
	   echo "<h1>Could not delete score.  Something is messed up.</h1>";
   }
   
    mysql_close($con);

?>

</BODY>
</HTML>
