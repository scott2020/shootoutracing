<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 4.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Registration Detail Screen</TITLE>
</HEAD>


<?php

  if ($cmdRegDetailbutton) {

    $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
    
   mysql_select_db("shootout",$con);
   $sql = "INSERT INTO competitors (driver_first,driver_middle,driver_last,driver_dob,driver_address,driver_address2,driver_city,driver_state,driver_zip,driver_dl,driver_phone,owner_first,owner_middle,owner_last,owner_address,owner_city,owner_state,owner_zip,owner_phone,sponsor_name,sponsor_address) VALUES ('$txtFirst','$txtMiddle','$txtLast','$txtDOB','$txtAddress','address2','$txtCity','$txtState','$txtZip','$txtDL','$txtPhone','$txtOwnFirst','$txtOwnMiddle','$txtOwnLast','$txtOwnAddress','$txtOwnCity','$txtOwnSt','$txtOwnZip','$txtOwnPhone','$txtSponsorname','$txtSponsorAddress')";
   $result = mysql_query($sql);
   echo "result = $result<br>\n";

   mysql_close($con);
}

?>


<BODY>
<form name="registrationdetail" method="post" action="<?php echo $PHP_SELF?>">
<br>
<P><FONT FACE="Arial" SIZE="2">Registration Detail Screen</FONT></P>
<P><FONT FACE="Arial" SIZE="2">COMPETITOR
ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BOATCLASS-NUMBER<BR>
<B><U>Driver Information</U></B></FONT></P>
<P><FONT FACE="Arial" SIZE="2">First&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Middle&nbsp;&nbsp;&nbsp;
Last&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Date of Birth<BR>
<INPUT TYPE="text" SIZE="20" NAME="txtFirst"><INPUT TYPE="text" SIZE="6" NAME="txtMiddle"><INPUT TYPE="text" SIZE="20" NAME="txtLast"><INPUT TYPE="text" SIZE="20" NAME="txtDOB"><BR>
Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Address 2<BR>
<INPUT TYPE="text" SIZE="27" NAME="txtAddress"><INPUT TYPE="text" SIZE="26"><BR>
City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
ST&nbsp;&nbsp;&nbsp; Zip<BR>
<INPUT TYPE="text" SIZE="16" NAME="txtCity"><INPUT TYPE="text" SIZE="4" NAME="txtState"><INPUT TYPE="text" SIZE="9" NAME="txtZip"><BR>
Drivers License&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone Number<BR>
<INPUT TYPE="text" SIZE="16" NAME="txtDL"><INPUT TYPE="text" SIZE="15" NAME="txtPhone"></FONT></P>
<P><FONT FACE="Arial" SIZE="2"><U><B>Owner Information<BR>
</B></U>First&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Middle&nbsp;&nbsp;&nbsp; Last<U><B><BR>
<INPUT TYPE="text" SIZE="20" NAME="txtOwnFirst"><INPUT TYPE="text" SIZE="5" NAME="txtOwnMiddle"><INPUT TYPE="text" SIZE="20" NAME="txtOwnLast"><BR>
</B></U>Address<BR>
<INPUT TYPE="text" SIZE="47" NAME="txtOwnAddress"><BR>
City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
ST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Zip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone
Number<BR>
<INPUT TYPE="text" SIZE="15" NAME="txtOwnCity"><INPUT TYPE="text" SIZE="3" NAME="txtOwnSt"><INPUT TYPE="text" SIZE="11" NAME="txtOwnZip"><INPUT TYPE="text" SIZE="20" NAME="txtOwnPhone"></FONT></P>
<P><FONT FACE="Arial" SIZE="2"><U><B>Sponsor Information<BR>
</B></U>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Address<BR>
<INPUT TYPE="text" SIZE="24" NAME="txtSponsorname"><INPUT TYPE="text" SIZE="28" NAME="txtSponsorAddress">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</FONT></P>
<P><FONT FACE="Arial" SIZE="2"><INPUT TYPE="submit" VALUE="Submit" NAME="cmdRegDetailbutton"></FONT></P>
</form>
</BODY>

</HTML>
