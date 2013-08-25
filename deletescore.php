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
This is probably not used. Use Administration.

<?php
include './config.php';

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

  $sql = "DELETE FROM speeds WHERE run_id = '$run_id'";


echo "query = $sql<br>\n";

  $result = mysql_query($sql);
  
   if ($result) {
   echo "result = $result<br>\n";
   echo "Go <A HREF = './index.php'>Back </A>";

   }
   else {
	   echo "Could not delete score.  Something is messed up.";
   }
   
    mysql_close($con);

?>

</BODY>
</HTML>
