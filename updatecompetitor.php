<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Update Competitor </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>

 <?php
include './config.php';

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

	echo "Updating Competitor number $competitor <BR>";
	echo "<br>";

	#$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
  
	$sql = "";

#	mysql_select_db("shootout",$con);
	$sql = "UPDATE competitors SET driver_first = '$txtFirst',driver_middle='$txtMiddle',driver_last='$txtLast',driver_dob='$txtDOB',driver_address='$txtAddress',driver_city='$txtCity',driver_state='$txtState',driver_zip='$txtZip',driver_dl='$txtDL',driver_phone='$txtPhone',driver_email='$txtEmail',bio='$txtBio',owner_first='$txtOwnFirst',owner_middle='$txtOwnMiddle',owner_last='$txtOwnLast',owner_address='$txtOwnAddress',owner_city='$txtOwnCity',owner_state='$txtOwnSt',owner_zip='$txtOwnZip',owner_phone='$txtOwnPhone',sponsor_name='$txtSponsorname',sponsor_address='$txtSponsorAddress',emer_first='$txtEmerFirst',emer_last='$txtEmerLast',emer_address='emeraddress',emer_phone='$txtEmerPhone',emer_relation='EmerRelationupdate',boat_name='$txtBoatname',boat_year='$txtBoatyear',boat_mfg='$txtBoatmfg',boat_hull='$txtBoathull',boat_length='$txtBoatlength',boat_engines='$txtBoatengines',boat_block='$txtBoatblock',boat_cuinch='$txtBoatCuinch',boat_outdrivetype='$txtOutdrive',boat_mods='$txtBoatmods',boat_state='SU' WHERE competitor_id=$competitor";

	echo "SQL IS $sql<br>";
	
   $result = mysql_query($sql);
   echo "Database update result = $result<br>\n";
	if ($result==1) {

		echo "Update Successful! <br>";
	}
	else {
		echo "<h2> ERROR! Update Bombed with error $result </h2><br>";
	}

	#  ****   Show what we just changed without edit

#$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#mysql_select_db("shootout",$con);

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

$sql = "SELECT * from competitors WHERE competitor_id = '$competitor'";
$classresult = mysql_query($sql);

$num = 0;
$num = mysql_numrows($classresult);

echo "There were $num Rows of data returned. <br>";

$i = 0;
while ($i < $num) {
	$boat_class = mysql_result($classresult,$i,"boat_class");
	$boat_number = mysql_result($classresult,$i,"boat_number");
	$driver_first = mysql_result($classresult,$i,"driver_first");
	$driver_middle = mysql_result($classresult,$i,"driver_middle");
	$driver_last = mysql_result($classresult,$i,"driver_last");
	$driver_dob = mysql_result($classresult,$i,"driver_dob");
	$driver_address = mysql_result($classresult,$i,"driver_address");
#	$driver_address2 = mysql_result($classresult,$i,"driver_address2");
	$driver_city = mysql_result($classresult,$i,"driver_city");
	$driver_state = mysql_result($classresult,$i,"driver_state");
	$driver_zip = mysql_result($classresult,$i,"driver_zip");
	$driver_dl = mysql_result($classresult,$i,"driver_dl");
	$driver_phone = mysql_result($classresult,$i,"driver_phone");
	$driver_email = mysql_result($classresult,$i,"driver_email");
	$owner_first = mysql_result($classresult,$i,"owner_first");
	$owner_middle = mysql_result($classresult,$i,"owner_middle");
	$owner_last = mysql_result($classresult,$i,"owner_last");
	$owner_address = mysql_result($classresult,$i,"owner_address");
	$owner_city = mysql_result($classresult,$i,"owner_city");
	$owner_state = mysql_result($classresult,$i,"owner_state");
	$owner_zip = mysql_result($classresult,$i,"owner_zip");
	$owner_phone = mysql_result($classresult,$i,"owner_phone");
	$sponsor_name = mysql_result($classresult,$i,"sponsor_name");
	$sponsor_address = mysql_result($classresult,$i,"sponsor_address");
	$emer_first = mysql_result($classresult,$i,"emer_first");
	$emer_last = mysql_result($classresult,$i,"emer_last");
	$emer_address = mysql_result($classresult,$i,"emer_address");
	$emer_phone = mysql_result($classresult,$i,"emer_phone");
	$emer_relation = mysql_result($classresult,$i,"emer_relation");
	$boat_name = mysql_result($classresult,$i,"boat_name");
	$boat_year = mysql_result($classresult,$i,"boat_year");
	$boat_mfg = mysql_result($classresult,$i,"boat_mfg");
	$boat_hull = mysql_result($classresult,$i,"boat_hull");
	$boat_length = mysql_result($classresult,$i,"boat_length");
	$boat_engines = mysql_result($classresult,$i,"boat_engines");
	$boat_block = mysql_result($classresult,$i,"boat_block");
	$boat_cuinch = mysql_result($classresult,$i,"boat_cuinch");
	$boat_outdrivetype = mysql_result($classresult,$i,"boat_outdrivetype");
	$boat_mods = mysql_result($classresult,$i,"boat_mods");
	$boat_state = mysql_result($classresult,$i,"boat_state");
    $bio = mysql_result($classresult,$i,"bio");
	
	echo "<h2>";
	echo "<br><br>";
	echo "Update to $boat_class-$boat_number <br><br>";
	echo "$driver_first $driver_middle $driver_last <BR>";
	echo "<BR>";
	echo "<A HREF = './index.php'>Main Menu </A>";
    
	++$i;

}

mysql_close($con);

	echo "<br>";
	echo "<A HREF = './listcompetitor.php'>Competitor List Screen</A>";
?>

</BODY>
</HTML>
