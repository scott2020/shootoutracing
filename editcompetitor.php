<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Notepad">
<META NAME="ProgId" CONTENT="Notepad">
<TITLE>Competitor Edit Screen</TITLE>
</HEAD>


<?php

#echo "You clicked $class <br>";

include './config.php';
include('register_globals.php');
register_globals();


$competitor = $_GET['competitor'];

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

#$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#mysql_select_db("shootout",$con);

$sql = "SELECT * from competitors WHERE competitor_id = '$competitor'";
$classresult = mysql_query($sql);

$num = 0;
$num = mysql_numrows($classresult);

echo "There were $num Rows of data returned. <br>";

#  ***  Look up for the first time entering screen **

$i = 0;
while ($i < $num) {
	$boat_class = mysql_result($classresult,$i,"boat_class");
	$boat_number = mysql_result($classresult,$i,"boat_number");
	$driver_first = mysql_result($classresult,$i,"driver_first");
	$driver_middle = mysql_result($classresult,$i,"driver_middle");
	$driver_last = mysql_result($classresult,$i,"driver_last");
	$driver_dob = mysql_result($classresult,$i,"driver_dob");
	$driver_address = mysql_result($classresult,$i,"driver_address");
	$driver_address2 = mysql_result($classresult,$i,"driver_address2");
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
    $runs_remain = mysql_result($classresult,$i,"runs_remain");


#	echo "Class ID is $class_id and Class is $class_name and Count is $class_count <BR>";

	++$i;
    #$sql = "UPDATE classes SET class_count=(class_count + 1) WHERE class_id = '$class_id'";
	
	

}

mysql_close($con);



?>

<BODY>

<A HREF="./index.php">Back to Main Menu</A>
<A HREF="./listcompetitor.php">Back to Competitor List</A>

<form name="registrationdetail" method="post" action="./updatecompetitor.php?competitor=<?php echo "$competitor" ?>">
<INPUT TYPE="hidden" NAME="txtClassname" VALUE = <?php echo $class_name ?>>
<INPUT TYPE="hidden" NAME="txtClasscount" VALUE = <?php echo $class_count ?>>
<br>
<P><FONT FACE="Arial" SIZE="2">Registration Detail Screen<br>
<FONT FACE="Arial" SIZE="4">BOAT CLASS: <?php echo "$boat_class - $boat_number"; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT><BR>
<B><U><br>
<FONT FACE="Arial" SIZE="2">
<br>
Driver Information<br></FONT></U></B></font></P>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="67%" id="AutoNumber1">
  <tr>
    <td width="27%"><font face="Arial Narrow">First</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<INPUT TYPE="text" SIZE="20" NAME="txtFirst" VALUE="<?php echo $driver_first ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Middle</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="6" NAME="txtMiddle" VALUE="<?php echo $driver_middle ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Last</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="20" NAME="txtLast" VALUE="<?php echo $driver_last ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Date of Birth</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="20" NAME="txtDOB" VALUE="<?php echo $driver_dob ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Address</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<INPUT TYPE="text" SIZE="27" NAME="txtAddress" VALUE="<?php echo $driver_address ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">City</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<INPUT TYPE="text" SIZE="16" NAME="txtCity" VALUE="<?php echo $driver_city ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">State</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="4" NAME="txtState" VALUE="<?php echo $driver_state ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Zip</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="9" NAME="txtZip" VALUE="<?php echo $driver_zip ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Drivers License</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="16" NAME="txtDL" VALUE="<?php echo $driver_dl ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Phone Number</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="15" NAME="txtPhone" VALUE="<?php echo $driver_phone ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Email</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <INPUT TYPE="text" SIZE="25" NAME="txtEmail" VALUE="<?php echo $driver_email ?>"></td>
  </tr>
  <tr>
<td width="27%"><font face="Arial Narrow">Throttleman</font></td>
<td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="26" name="txtAddress2"></td>
</tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Bio</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <textarea cols="50" rows="4" NAME="txtBio"><?php echo $bio ?></textarea></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Runs Left</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
	Total:  
    <?php echo $runs_remain ?></td>
  </tr>
</table>
<P>Sponsor Information</P>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="67%" id="AutoNumber3">
  <tr>
    <td width="27%"><font face="Arial Narrow">Name</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<INPUT TYPE="text" SIZE="24" NAME="txtSponsorname" VALUE="<?php echo $sponsor_name ?>"></FONT></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Address</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="28" NAME="txtSponsorAddress" VALUE="<?php echo $sponsor_address ?>"></FONT></td>
  </tr>
</table>
<P>Emergency Contact Information</P>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="67%" id="AutoNumber4">
  <tr>
    <td width="27%"><font face="Arial Narrow">First</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtEmerFirst" size="23" VALUE="<?php echo $emer_first ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Last</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtEmerLast" size="29" VALUE="<?php echo $emer_last ?>"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Phone Number</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtEmerPhone" size="20" VALUE="<?php echo $emer_phone ?>"></td>
  </tr>
</table>
<FONT FACE="Arial" SIZE="2">
<P><font face="Arial" size="2"><u><b>Boat Information<br>
</b></u></font></P>
</font><FONT FACE="Arial Narrow" SIZE="2">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="68%" id="AutoNumber5">
 <tr>
    <td width="27%">Boat Name</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtBoatname" size="40" VALUE="<?php echo $boat_name ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Year</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtBoatyear" size="7" VALUE="<?php echo $boat_year ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Manufacturer</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatmfg" size="23" VALUE="<?php echo $boat_mfg ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Hull</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <input type="text" name="txtBoathull" size="9" VALUE="<?php echo $boat_hull ?>">&nbsp; (V or Tunnel)</td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Length</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatlength" size="9" VALUE="<?php echo $boat_length ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%"># of Engines</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatengines" size="6" VALUE="<?php echo $boat_engines ?>"> 
    (number of engines)</td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Drive Type</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtOutdrive" size="20" VALUE="<?php echo $boat_outdrivetype ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Engine Type</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatblock" size="9" VALUE="<?php echo $boat_block ?>"> 
    (small block. big block, outboard)</td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Engine Size/Cubic Inch</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatCuinch" size="10" VALUE="<?php echo $boat_cuinch ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Modifications</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtBoatmods" size="64" VALUE="<?php echo $boat_mods ?>"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Port Of Call</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtPortofCall" size="20" VALUE="<?php echo $boat_portofcall ?>"></td>
  </tr>
</table>

<P><FONT FACE="Arial" SIZE="2"><INPUT TYPE="submit" VALUE="Update" NAME="cmdUpdatereg"></FONT></P>
</form>
<br>

<A HREF="./index.php">Back to Main Menu</A>
<A HREF="./listcompetitor.php">Back to Competitor List</A>

</BODY>

</HTML>
