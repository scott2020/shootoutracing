<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<?php

$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
mysql_select_db("shootout",$con);

$sql = "SELECT * from competitors WHERE competitor_id = '$competitor'";
$classresult = mysql_query($sql);

$num = 0;
$num = mysql_numrows($classresult);

#echo "There were $num Rows of data returned. <br>";

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
#	$driver_address2 = mysql_result($classresult,$i,"driver_address2");
	$driver_city = mysql_result($classresult,$i,"driver_city");
	$driver_state = mysql_result($classresult,$i,"driver_state");
	$driver_zip = mysql_result($classresult,$i,"driver_zip");
	$driver_dl = mysql_result($classresult,$i,"driver_dl");
	$driver_phone = mysql_result($classresult,$i,"driver_phone");
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

	++$i;
}

mysql_close($con);

?>

<body>
<div align="center">
  <table width="640" height="480" border="0" cellpadding="0" cellspacing="0">
    <tr align="center" valign="top"> 
      <td height="42" colspan="3"><img src="images/driverinfo_01.jpg" width="640" height="64"></td>
    </tr>
    <tr align="center" valign="top"> 
      <td width="22" align="left"><img src="images/shootoutbackground_02.jpg" width="22" height="308"></td>
      <td width="592"><p> <font size="-1">Driver Information for <?php echo $boat_class ?> 
          - <?php echo $boat_number ?> </font> </p>
        <table border="0" width="95%">
          <tr> 
            <td width="70%" height="261" align="left" valign="top"> <h3><u><font size="-1">Driver:</font></u><font size="-1"><br>
                <?php echo $driver_first.' '.$driver_middle.' '.$driver_last; ?> 
                From <?php echo $driver_city.' ,'.$driver_state ?> <br>
                <u>Boat Name:</u><br>
                <?php echo $boat_name ?> <br>
                <u>Boat Info:</u><br>
                <?php echo $boat_year.' '.$boat_mfg.' '.$boat_length; ?> feet. 
                <br>
                <u>Boat Mods:</u><br>
                <?php echo $boat_mods ?> <br>
                <u>Boat Engine:</u><br>
                <?php echo $boat_engines ?> engines, <?php echo $boat_cuinch ?> 
                cubic inches. </font></h3>
              <h3><font size="-1">This boat is sponsored by <?php echo $sponsor_name ?></font></h3>
              <h3><font size="-1">This boat is owned by <?php echo $owner_first.' '.$owner_last ?> 
                from <?php echo $owner_city.', '.$owner_state ?></font></h3></td>
            <td width="30%" align="left" valign="top" bgcolor="#FFFFCC"> <h3><u><font size="-1">Previous 
                Scores</font></u></h3>
              <font size="-1">
              <?php

   $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
    
   mysql_select_db("shootout",$con);
   #$result = mysql_query("SELECT * FROM speeds WHERE competitor_id=$competitor",$con);
   $result = mysql_query("SELECT run_id,competitor_id,speed,date_format(timestamp,'%m-%d-%y %h:%i:%s %p')as timeformat FROM speeds WHERE competitor_id=$competitor ORDER BY timeformat DESC",$con);

$num = 0;
$num = mysql_numrows($result);

$j=0;

while ($j < $num) {

	$run_id = mysql_result($result,$j,"run_id");
	$competitor_id = mysql_result($result,$j,"competitor_id");
	$speed = mysql_result($result,$j,"speed");
	$timestamp = mysql_result($result,$j,"timeformat");
	
	++$j;
	
	echo '<h3>Run: ';
	echo $run_id;
	echo ' --- ';
	echo $speed;
	echo ' MPH</h3>';
	#echo ' --- ';
	#echo $timestamp;
	#echo '<BR>';

}







#while ($myrow = mysql_fetch_row($result)) {
#
#
#
#		printf("Run ID:%s&nbsp;&nbsp;%s MPH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%s&nbsp;%s&nbsp;%s", $myrow[0],$myrow[2],$myrow[3],$myrow[4],$myrown[5]);
#
#		echo "<BR>\n";
#

#}

#echo "<hr>";
mysql_close($con);

?>
              </font> </td>
          </tr>
        </table>
        
      </td>
      <td width="26" align="right"><img src="images/shootoutbackground_04.jpg" width="20" height="308"></td>
    </tr>
    <tr align="center" valign="top"> 
      <td height="108" colspan="3"><img src="images/shootoutbackground_05.jpg" width="640" height="108"></td>
    </tr>
  </table>
</div>
</body>
</html>
