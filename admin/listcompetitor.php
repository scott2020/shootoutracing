<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Listing Competitors Screen ADMIN</TITLE>
<link href="../tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../tablecloth/tablecloth.js"></script>
</HEAD>

<h2> Edit a Competitor <br>
Choose a Competitor </h2> <br>

<?php
include '../config.php';

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#  $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);

$result = mysql_query("SELECT * FROM competitors ORDER BY boat_class, boat_number ASC",$con);
   
echo "<hr>";

$sure = chr(34);
$sure .= "Are you sure you want to delete this competitor?";
$sure .= chr(34);


$num = 0;
$num = mysql_numrows($result);

#$i = 0;
#while ($i < $num) {
#	$class_id = mysql_result($result,$i,"class_id");
#	$class_name = mysql_result($result,$i,"class_name");
#
#	echo "$class_id - $class_name<br>";
#	echo "<A HREF = './reg.php?class=$class_id'>$class_name</A><br>";

#++$i;
#
#}

echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='70%' id='AutoNumber1'>";

while ($myrow = mysql_fetch_row($result)) {


echo "<tr>";

		printf("<td>%s-%s </td><td>%s %s </td><td> <A HREF = ../editcompetitor.php?competitor=%s>Edit</A></TD><td> <A HREF=../editscore.php?competitor=%s>Score</A></TD><td><A HREF=../driverinfo.php?competitor=%s>Info</A></TD><TD><A HREF=./reclass.php?competitor=%s>Reclass</A></td><TD><A HREF=../deletecomp.php?competitor=%s onclick='return confirm($sure)'>Delete</A></TD>",
		$myrow[27],$myrow[28],$myrow[1],$myrow[3],$myrow[0],$myrow[0],$myrow[0],$myrow[0],$myrow[0]);
echo "</tr>";

	
}
echo "</table>";
echo "<hr>";
mysql_close($con);

?>


<BODY>
<br>
<br>
<A HREF="./admin/index.php">Go Back to Admin </A>
<br>
<A HREF="./index.php">Go Back to Main Page </A>
</BODY>

</HTML>