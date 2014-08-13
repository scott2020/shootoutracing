<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<?php include './config.php';?>
<TITLE>Registration Detail Screen - <?php echo $SITE_NAME;?></TITLE>
</HEAD>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>


<?php

#$competitor = $_GET['competitor'];
#$classname = $_GET['classname'];
#$class_count = $_GET['class_count'];
#$class = $_GET['class'];
include('register_globals.php');
register_globals();


echo "<br><h2> Registering a competitor for class $classname </h2> <br>";

echo "Competitor number: $competitor <br>";


?>

<BODY>

<form name="registrationdetail" method="post" action="addcompetitor.php">
<INPUT TYPE="hidden" NAME="txtClassname" VALUE = <?php echo $classname #from class.php  ?>>
<INPUT TYPE="hidden" NAME="txtClasscount" VALUE = <?php echo $class_count #no longer used  ?>>
<INPUT TYPE="hidden" NAME="txtClassID" VALUE = <?php echo $class #from class.php  ?>>
<br>
<P><FONT FACE="Arial" SIZE="2">Registration Detail Screen<br>
<FONT FACE="Arial" SIZE="4">BOAT CLASS: <?php echo "$classname"; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT><BR>
<B><U><br>
<FONT FACE="Arial" SIZE="2">
<br>
Driver Information
<br>
</FONT></U></B></font></P>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="67%" id="AutoNumber1">
  <tr>
    <td width="27%"><font face="Arial Narrow">First</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="20" NAME="txtFirst"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Middle</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="6" NAME="txtMiddle"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Last</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="20" NAME="txtLast"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Date of Birth</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="20" NAME="txtDOB"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Address</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="27" NAME="txtAddress"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">City</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<INPUT TYPE="text" SIZE="16" NAME="txtCity"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">State</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="4" NAME="txtState"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Zip</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="9" NAME="txtZip"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Drivers License</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="16" NAME="txtDL"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Phone Number</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="15" NAME="txtPhone"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Email</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <INPUT TYPE="text" SIZE="25" NAME="txtEmail"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Throttleman</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="26" name="txtAddress2"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Bio</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <textarea cols="50" rows="4" NAME="txtBio"></textarea></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Runs Purchased</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <INPUT TYPE="text" SIZE="2" NAME="txtRuns"></td>
  </tr>
</table>
<P>Sponsor Information</P>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="67%" id="AutoNumber3">
  <tr>
    <td width="27%"><font face="Arial Narrow">Name</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<INPUT TYPE="text" SIZE="24" NAME="txtSponsorname"></FONT></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Address</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><INPUT TYPE="text" SIZE="28" NAME="txtSponsorAddress"></FONT></td>
  </tr>
</table>
<P>Emergency Contact Information</P>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="67%" id="AutoNumber4">
  <tr>
    <td width="27%"><font face="Arial Narrow">First</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtEmerFirst" size="23"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Last</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtEmerLast" size="29"></td>
  </tr>
  <tr>
    <td width="27%"><font face="Arial Narrow">Phone Number</font></td>
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtEmerPhone" size="20"></td>
  </tr>
</table>
<FONT FACE="Arial" SIZE="2">
<P><font face="Arial" size="2"><b>Boat Information<br>
</b></font></P>
</font><FONT FACE="Arial Narrow" SIZE="2">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="68%" id="AutoNumber5">
  <tr>
    <td width="27%">Boat Name</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtBoatname" size="40"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Year</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtBoatyear" size="7"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Manufacturer</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatmfg" size="23"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Hull Type</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
    <input type="text" name="txtBoathull" size="9">&nbsp; (V or Tunnel)</td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Boat Length</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatlength" size="9"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%"># of Engines</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatengines" size="6"> 
    (number of engines)</td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Drive Type</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtOutdrive" size="20"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Engine Type</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatblock" size="9"> 
    (small block. big block, outboard)</td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Engine Size/Cubic Inch</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtBoatCuinch" size="10"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Modifications</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2">
<input type="text" name="txtBoatmods" size="64"></td>
  </tr>
  <FONT FACE="Arial Narrow" SIZE="2">
  <tr>
    <td width="27%">Port of Call</td>
    </font><FONT FACE="Arial" SIZE="2">
    <td width="73%"><FONT FACE="Arial" SIZE="2"><input type="text" name="txtPortofCall" size="20"></td>
  </tr>
</table>
<P><FONT FACE="Arial" SIZE="2"><INPUT TYPE="submit" VALUE="Submit" NAME="cmdRegDetailbutton"></FONT></P>
</form>
</BODY>

</HTML>
