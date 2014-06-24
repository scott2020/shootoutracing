<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Edit Runs Screen</TITLE>
</HEAD>
<BODY>

<h2>Runs<br>
Edit Remaining Runs for Boat <?php echo $boat ?> </h2> <br>


<?php
include './config.php';
include('register_globals.php');
register_globals();


$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);


#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
    
#   mysql_select_db("shootout",$con);
   #$result = mysql_query("SELECT * FROM speeds WHERE competitor_id=$competitor",$con);
   
   $result = mysql_query("SELECT * FROM competitors WHERE competitor_id=$competitor",$con);

echo "<hr>";

$num = 0;
$num = mysql_numrows($result);

$j=0;

while ($j < $num) {

	$competitor_id = mysql_result($result,$j,"competitor_id");
	$runs_left = mysql_result($result,$j,"runs_remain");
		
	++$j;
	
	echo 'Competitor Number ';
	echo $competitor_id;
	echo '  has ';
	echo $runs_left;
	echo ' runs left';
	echo '<BR>';

}

#while ($myrow = mysql_fetch_row($result)) {
#
#
#
#		printf("%s&nbsp;&nbsp;%s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%s&nbsp;%s&nbsp;%s", $myrow[0],$myrow[2],$myrow[3],$myrow[4],$myrown[5]);
#
#		echo "<BR>\n";

echo "<hr>";
mysql_close($con);

?>

<p>Enter more runs for Competitor <?php echo "$competitor" ?></p>
<form method="POST" action="./addruns.php?competitor=<?php echo "$competitor" ?>"><p>
<INPUT TYPE="hidden" NAME="txtCompetitor" VALUE = <?php echo "$competitor" ?>>

<input type="text" name="txtRuns" size="10"><input type="submit" value="Submit" name="cmdSubmitscore"><input type="reset" value="Reset" name="cmdResetscore"></p>
</form>

<A HREF="./index.php">Go Back to Main Menu</A>
<br>
<A HREF="./listcompetitor.php">Go Back to Competitor List</A>
<br>


</BODY>

</HTML>