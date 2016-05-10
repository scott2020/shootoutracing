<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<TITLE>Listing Competitors Screen</TITLE>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</HEAD>

<h2> Edit a Competitor <br>
Choose a Competitor </h2> <br>
<br>
This is a list of last year's competitors.
<br>

<?php
include './config.php';
include('register_globals.php');
register_globals();

$competitor = $_GET['competitor'];
$class= $_GET['class'];
$classname= $_GET['classname'];

echo "<h2><A HREF = './reg.php?class=$class&classname=$classname'>Not Listed.  Enter new name for $classname</A></td></h2>";


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);


#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#    
#   mysql_select_db("shootout",$con);
   $result = mysql_query("SELECT * FROM previous_competitors ORDER BY driver_last",$con);
   
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

		printf("<td>%s %s </td><td> <A HREF = ./regexist.php?previous_competitorid=%s&class=$class&classname=$classname>Register</A></TD>",
		$myrow[1],$myrow[3],$myrow[0]);

echo "</tr>";

	
}
echo "</table>";
echo "<hr>";
mysql_close($con);

?>


<BODY>
<br>
<br>
<A HREF="./index.php">Go Back </A>
</BODY>

</HTML>
