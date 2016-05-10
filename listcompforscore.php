<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<TITLE>Select for Scores</TITLE>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</HEAD>
<BODY>

<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<h2> Enter Scores <br>
Choose a Competitor </h2> <br>

<?php

include './config.php';
include('register_globals.php');
register_globals();


$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);
   $result = mysql_query("SELECT * FROM competitors ORDER BY competitor_id, boat_class, boat_number ASC",$con);
   
$num = 0;
$num = mysql_numrows($result);

echo "<table border='1' width='70%'>";

echo "<tr><th>ID</th><th>Class</th><th>Name</th><th>Enter</th></tr>";

while ($myrow = mysql_fetch_row($result)) {

echo "<TR>";


		printf("<td>%s</td><td>%s-%s</td><td>%s %s</td><td><A HREF = ./editscore.php?competitor=%s&boat=%s-%s&class=%s>Score</A></td>",
		$myrow[0],$myrow[27],$myrow[28],$myrow[1], $myrow[3], $myrow[0], $myrow[27], $myrow[28], $myrow[27]);

		
echo "</TR>";

}

echo "</TABLE>";

mysql_close($con);

?>

<A HREF="./index.php">Go Back </A>
</BODY>

</HTML>
