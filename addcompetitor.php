<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Adding Competitor </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="changed on my laptop">
<META NAME="Description chaged at github web web edit 2" CONTENT="">
</HEAD>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<BODY>

<?php

# Lookup the class
include './config.php';
include('register_globals.php');
register_globals();


#$competitor = $_GET['competitor'];
#$classname = $_GET['classname'];
##$class_count = $_GET['class_count'];
#$class = $_GET['class'];
#
#$txtFirst = $_GET['txtFirst'];
#$txtMiddle = $_GET['txtMiddle'];
#$txtLast = $_GET['txtLast'];
#$txtDOB = $_GET['txtDOB'];
##$txtAddress = $_GET['txtAddress'];
#$txtCity = $_GET['txtCity'];
#$txtState = $_GET['txtState'];
#$txtZip = $_GET['txtZip'];
#$txtDL = $_GET['txtDL'];
#$txtPhone = $_GET['txtPhone'];
#$txtOwnFirst = $_GET['txtOwnFirst'];
#$txtOwnMiddle = $_GET['txtOwnMiddle'];
#$txtOwnLast = $_GET['txtOwnLast'];
#$txtOwnAddress = $_GET['txtOwnAddress'];
#$txtOwnCity = $_GET['txtOwnCity'];
#$txtOwnSt = $_GET['txtOwnSt'];
#$txtOwnZip = $_GET['txtOwnZip'];
#$txtOwnPhone = $_GET['txtOwnPhone'];
#$txtSponsorname = $_GET['txtSponsorname'];
#$txtSponsorAddress = $_GET['txtSponsorAddress'];
#$txtEmerFirst = $_GET['txtEmerFirst'];
#$txtEmerLast = $_GET['txtEmerLast'];
#$txtEmerPhone = $_GET['txtEmerPhone'];
#$txtBoatname = $_GET['txtBoatname'];
#$txtBoatyear = $_GET['txtBoatyear'];
#$txtBoatmfg = $_GET['txtBoatmfg'];
#$txtBoathull = $_GET['txtBoathull'];
#$txtBoatlength = $_GET['txtBoatlength'];
#$txtBoatengines = $_GET['txtBoatengines'];
#$txtBoatblock = $_GET['txtBoatblock'];
#$txtBoatCuinch = $_GET['txtBoatCuinch'];
##$txtOutdrive = $_GET['txtOutdrive'];
#$txtBoatmods = $_GET['txtBoatmods'];
#$class_name = $_GET['class_name'];
#$txtEmail = $_GET['txtEmail'];
#$txtBio = $_GET['txtBio'];
#$txtRuns = $_GET['txtRuns'];
#$txtClassID = $_GET['txtClassID'];


$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

$sql = "SELECT * from classes WHERE class_id = '$txtClassID'";

echo "<br>Query was $sql<br>";

$classresult = mysql_query($sql);

$num = 0;
$num = mysql_numrows($classresult);

echo "There were $num Rows of data returned. <br>";

$i = 0;
while ($i < $num) {
	$class_id = mysql_result($classresult,$i,"class_id");
	$class_name = mysql_result($classresult,$i,"class_name");
	$class_count = mysql_result($classresult,$i,"class_count");

#	echo "Class ID is $class_id and Class is $class_name and Count is $class_count <BR>";

	++$i;

	
	mysql_query("UPDATE classes SET class_count=(class_count + 1) WHERE class_id='$class_id'");

}

mysql_close($con);
	

#Add the competitor

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#SUCHSBALLAZ $sql = sprintf("INSERT INTO competitors (driver_first,driver_middle,driver_last,driver_dob,driver_address,driver_address2,driver_city,driver_state,driver_zip,driver_dl,driver_phone,owner_first,owner_middle,owner_last,owner_address,owner_city,owner_state,owner_zip,owner_phone,sponsor_name,sponsor_address,emer_first,emer_last,emer_address,emer_phone,emer_relation,boat_name,boat_year,boat_mfg,boat_hull,boat_length,boat_engines,boat_block,boat_cuinch,boat_outdrivetype,boat_mods,boat_state,boat_class,boat_number, driver_email,bio,runs_remain) VALUES 

   $sql = "INSERT INTO competitors (driver_first,driver_middle,driver_last,driver_dob,driver_address,driver_address2,driver_city,driver_state,driver_zip,driver_dl,driver_phone,owner_first,owner_middle,owner_last,owner_address,owner_city,owner_state,owner_zip,owner_phone,sponsor_name,sponsor_address,emer_first,emer_last,emer_address,emer_phone,emer_relation,boat_name,boat_year,boat_mfg,boat_hull,boat_length,boat_engines,boat_block,boat_cuinch,boat_outdrivetype,boat_mods,boat_state,boat_class,boat_number, driver_email,bio,runs_remain) VALUES ('".mysql_real_escape_string($txtFirst)."','$txtMiddle','".mysql_real_escape_string($txtLast)."','$txtDOB','".mysql_real_escape_string($txtAddress)."','$txtThrottleman','".mysql_real_escape_string($txtCity)."','$txtState','$txtZip','$txtDL','$txtPhone','$txtOwnFirst','$txtOwnMiddle','$txtOwnLast','$txtOwnAddress','$txtOwnCity','$txtOwnSt','$txtOwnZip','$txtOwnPhone','$txtSponsorname','$txtSponsorAddress','$txtEmerFirst','$txtEmerLast','emeraddress','$txtEmerPhone','emerRelation','$txtBoatname','$txtBoatyear','$txtBoatmfg','$txtBoathull','$txtBoatlength','$txtBoatengines','$txtBoatblock','$txtBoatCuinch','$txtOutdrive','$txtBoatmods','ST','$class_name','$class_count','$txtEmail','$txtBio','$txtRuns')";

   $result = mysql_query($sql);
   
   if ($result) {

   #echo "result = $result<br>\n";
   #echo "$txtFirst <BR>";
   #echo "$txtLast <BR>";
   #echo "$txtBoatmods <BR>";
   #echo "CLASS: $class_name <BR>";
   #echo "COUNT: $class_count <BR>";
   
   

   echo "<br>Congratulations, $txtFirst $txtLast!";
   echo "<br>Your $txtBoatyear $txtBoatmfg named $txtBoatname has been registered in the";
   echo "<br>Lake Shootout with the following Class and Boat Number:";
   echo "<br><h1>Boat Class: $txtClassname - $class_count<BR></H1>";
   echo "<br><h2>Total Runs - $txtRuns</h2><br>";
   
   #echo "Go <A HREF = './index.php'> back to Main Menu</A><BR><BR>";
   #echo "Go <A HREF = './class.php'> to enter a new registration </A><BR><BR>";
   }
   else {
	   echo "<h1><b>Could not add competitor.  System error.  Check apostrophe in names</h1></b>";
   }

   mysql_close($con);

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

   $result = mysql_query("SELECT competitor_id FROM competitors WHERE boat_class='$txtClassname' AND 
boat_number=$class_count",$con);

echo "<hr>";

#echo "Query: SELECT competitor_id FROM competitors WHERE boat_class='$txtClassname' AND boat_number=$class_count";

$num = 0;
$num = mysql_numrows($result);

$j=0;

while ($j < $num) {

	#$run_id = mysql_result($result,$j,"run_id");
	$competitor_id = mysql_result($result,$j,"competitor_id");
	#$speed = mysql_result($result,$j,"speed");
	#$timestamp = mysql_result($result,$j,"timeformat");
	
	++$j;
	
	echo "<h1>Boat Number for Sticker: ";
	echo $competitor_id;
	echo "</h1>";
	#echo ' --- ';
	#echo $speed;
	#echo ' MPH';
	#echo ' --- ';
	#echo $timestamp;
	#echo '<BR>';

}

echo "<hr>";
mysql_close($con);

echo "Go <A HREF = './index.php'> back to Main Menu</A><BR><BR>";
echo "Go <A HREF = './class.php'> to enter a new registration </A><BR><BR>";

?>

</BODY>
</HTML>
