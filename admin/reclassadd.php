<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Add a class in Reclass</TITLE>
</HEAD>

<?php
include '../config.php';
include('../register_globals.php');
register_globals();


$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#    mysql_select_db("shootout",$con);
   
    $sql = "SELECT * FROM classes WHERE class_name = '$txtAddClass'";
          
    $result = mysql_query($sql);


    $num=mysql_numrows($result);

     
    if ($num > 0) {
      echo "<h2><B> That class already exists </B></h2> <br>";
     }
    else {

		$addsql = "INSERT INTO classes (class_name,class_count) VALUES ('$txtAddClass','1')";
		mysql_query($addsql);
		echo "New Class Entered Successfully <br>";
 
	 }

	
?>

</BODY>

</HTML>
