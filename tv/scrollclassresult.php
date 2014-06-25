<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Results by class</TITLE>
<link href="../tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../tablecloth/tablecloth.js"></script>
</HEAD>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<h1> Choose a class for results </h1>
<?php
include '../config.php';
include('../register_globals.php');
register_globals();


$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);
   $result = mysql_query("SELECT * FROM classes ORDER BY class_name ASC",$con);
   


echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

echo "<table border='1' align='left' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='30%' id='AutoNumber1'>";


$i = 0;
while ($i < $num) {
	$class_id = mysql_result($result,$i,"class_id");
	$class_name = mysql_result($result,$i,"class_name");

#	echo "$class_id - $class_name<br>";

echo "<tr>";

	echo "<td> <left> <A HREF = './singlescroll.php?class=$class_id&classname=$class_name'>$class_name</A></td> </left>";
    #echo "<td> <A HREF = './delclass.php?class=$class_id'>Delete Class</A></td>";

++$i;

echo "</tr>";

}


echo "</table>";




echo "<hr>";
mysql_close($con);

echo "<br>";


echo "Go <A HREF = './index.html'> back to TV Menu</A><BR><BR>";
echo "Go <A HREF = '../index.php'> back to Main Menu</A><BR><BR>";
?>


<BODY>

</BODY>

</HTML>