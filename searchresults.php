<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Search Results </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</HEAD>

<BODY>
<h1> Search Results </h1>

<?php
include '/config/config.php';
include('register_globals.php');
register_globals();


	trim($searchtext);
	if (!$searchtype || !searchtext)
	{
		echo "You haven't entered enough search detail.  Please try again";
		exit;
	}

#$searchtype = addslashes($searchtype);
#$searchtext = addslashes($searchtext);



$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#   mysql_select_db("shootout",$con);

   $query = "SELECT * FROM competitors where ".$searchtype." like '%".$searchtext."%'";

   $result = mysql_query($query);
   $num_results = mysql_num_rows($result);

   echo "<p>There were ".$num_results." found. </p>";

   echo "<TABLE border=1 width='90%'>";
   echo "<tr><th>ID</th><th>Name</th><th>Class</th><th>Info</th><th>Score</th></tr>";

	for ($i=0; $i <$num_results; $i++)

{
	$row = mysql_fetch_array($result);
	$competitornum= $row["competitor_id"];
	$class=$row["boat_class"];
	$number=$row["boat_number"];

	echo "<tr>";
	echo "<td>";
	echo $row["competitor_id"];
	echo "</td>";
	echo "<td>";
	echo $row["driver_first"];
	echo "  ";
	echo $row["driver_last"];
	echo "</td>";
	echo "<td>";
	echo "<A STYLE='text-decoration:none' HREF=./reports/byclass.php#$class>$class</a>";
	echo "-";
	echo $row["boat_number"];
    echo "</td>";
	echo "<td>";
	echo "<A HREF=./driverinfo.php?competitor=$competitornum>Info</A>";
	echo "</td>";
	echo "<td>";
	echo "<A HREF=./editscore.php?competitor=$competitornum&boat=$class-$number&class=$class>Score</A>";
	echo "</td>";

echo "</tr>";

}

	echo "</TABLE>";
?>
<br>
<A HREF="./index.php">Go Back to Main Menu</A>

</BODY>
</HTML>
