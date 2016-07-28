<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Delete competitor </TITLE>
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


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

  $sql = "DELETE FROM competitors WHERE competitor_id = '$competitor'";



echo "query = $sql<br>\n";

  $result = mysql_query($sql);
   echo "result = $result<br>\n";
   echo "Go <A HREF = './index.php'>Back </A>";

    mysql_close($con);


?>

</BODY>
</HTML>
