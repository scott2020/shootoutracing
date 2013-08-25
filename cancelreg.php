<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<?php
	
#	$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
   
#	mysql_select_db("shootout",$con);

#  $sql = "DELETE FROM competitors WHERE boat_class = '$txtClassname' AND boat_number = '$txtClasscount'";

 # $sql = "UPDATE classes SET class_count=(class_count - 1) WHERE class_id = '$txtClassID'";

#echo "query = $sql<br>\n";


  # $sql = "INSERT INTO competitors (driver_first,driver_middle,driver_last,driver_dob,driver_address,driver_address2,driver_city,driver_state,driver_zip,driver_dl,driver_phone,owner_first,owner_middle,owner_last,owner_address,owner_city,owner_state,owner_zip,owner_phone,sponsor_name,sponsor_address,emer_first,emer_last,emer_address,emer_phone,emer_relation,boat_name,boat_year,boat_mfg,boat_hull,boat_length,boat_engines,boat_block,boat_cuinch,boat_outdrivetype,boat_mods,boat_state,boat_class,boat_number) VALUES ('$txtFirst','$txtMiddle','$txtLast','$txtDOB','$txtAddress','address2','$txtCity','$txtState','$txtZip','$txtDL','$txtPhone','$txtOwnFirst','$txtOwnMiddle','$txtOwnLast','$txtOwnAddress','$txtOwnCity','$txtOwnSt','$txtOwnZip','$txtOwnPhone','$txtSponsorname','$txtSponsorAddress','$txtEmerFirst','$txtEmerLast','emeraddress','$txtEmerPhone','emerRelation','$txtBoatname','$txtBoatyear','$txtBoatmfg','$txtBoathull','$txtBoatlength','$txtBoatengines','$txtBoatblock','$txtBoatCuinch','$txtOutdrive','$txtBoatmods','ST','$txtClassname','$txtClasscount')";

 # $result = mysql_query($sql);
  # echo "result = $result<br>\n";
   #echo "$txtClassname <BR>";
  # echo "$txtClasscount <BR>";
   #echo "$txtBoatmods <BR>";
   #echo "CLASS: $txtClassname <BR>";
   #echo "COUNT: $txtClasscount <BR>";
	
   echo "Registration Cancelled<BR><BR>";

   echo "Go <A HREF = './index.php'>Back </A>";

   # mysql_close($con);


?>

</BODY>
</HTML>
