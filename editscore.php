<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Edit Scores Screen</TITLE>
</HEAD>
<BODY>

<h2>Scores <br>
Enter Speeds for Boat <?php echo $_REQUEST["boat"] ?> </h2> <br>

Previous Scores for <?php echo $_REQUEST["boat"] ?>


<?php
include './config.php';
include('register_globals.php');
register_globals();


#$competitor=$_REQUEST["competitor"];
#$class=$_REQUEST["class"];

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);


#   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
    
#   mysql_select_db("shootout",$con);
   #$result = mysql_query("SELECT * FROM speeds WHERE competitor_id=$competitor",$con);
   
   $result = mysql_query("SELECT run_id,competitor_id,speed,date_format(timestamp,'%m-%d-%y %h:%i:%s %p')as timeformat FROM speeds WHERE competitor_id=$competitor ORDER BY timeformat DESC",$con);

echo "<hr>";

$num = 0;
$num = mysql_numrows($result);

$j=0;

while ($j < $num) {

	$run_id = mysql_result($result,$j,"run_id");
	$competitor_id = mysql_result($result,$j,"competitor_id");
	$speed = mysql_result($result,$j,"speed");
	$timestamp = mysql_result($result,$j,"timeformat");
	
	++$j;
	
	echo 'Run: ';
	echo $run_id;
	echo ' --- ';
	echo $speed;
	echo ' MPH';
	echo ' --- ';
	echo $timestamp;
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

<p>Enter a new speed for Competitor <?php echo "$competitor" ?></p>
<form method="POST" action="./addscore.php?competitor=<?php echo "$competitor&class=$class" ?>"><p>
<INPUT TYPE="hidden" NAME="txtCompetitor" VALUE = <?php echo "$competitor" ?>>

<input type="text" name="txtScore" size="10"><input type="submit" value="Submit" name="cmdSubmitscore"><input type="reset" value="Reset" name="cmdResetscore"></p>
</form>

<A HREF="./index.php">Go Back to Main Menu</A>
<br>
<A HREF="./listcompforscore.php">Go Back to Scoring Entry</A>
<br>


</BODY>

</HTML>