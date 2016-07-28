<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Language" CONTENT="en-us">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<META NAME="GENERATOR" CONTENT="Microsoft FrontPage 5.0">
<META NAME="ProgId" CONTENT="FrontPage.Editor.Document">
<TITLE>Competitor Reclass</TITLE>
<link href="../tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../tablecloth/tablecloth.js"></script>

</HEAD>
<form name="class" method="post" action="<?php echo $PHP_SELF?>?competitor=<?php echo $competitor ?>">
<h2>Reclass</h2>
If you do not see the class you need to register, enter it in the box and click SUBMIT.
<br>

<INPUT TYPE="text" SIZE="20" NAME="txtClass">
<FONT FACE="Arial" SIZE="2"><INPUT TYPE="submit" VALUE="Submit" NAME="cmdAddclass"></FONT>

</form>
<?php
include '/config/config.php';
include('../register_globals.php');
register_globals();


if ($cmdAddclass) {

   # $con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
   #  mysql_select_db("shootout",$con);

	$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
	mysql_select_db($DB_NAME,$con);

    $sql = "SELECT * FROM classes WHERE class_name = '$txtClass'";
          
    $result = mysql_query($sql);


    $num=mysql_numrows($result);

     
    if ($num > 0) {
      echo "<h2><B> That class already exists </B></h2> <br>";
     }
    else {

		$addsql = "INSERT INTO classes (class_name,class_count) VALUES ('$txtClass','1')";
		mysql_query($addsql);
		echo "New Class Entered Successfully <br>";
		 
	 }

	
}
#echo "You clicked $class <br>";

#$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
#mysql_select_db("shootout",$con);

$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);


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



#	echo "Class ID is $class_id and Class is $class_name and Count is $class_count <BR>";

	++$i;
    #$sql = "UPDATE classes SET class_count=(class_count + 1) WHERE class_id = '$class_id'";
	
	

}

mysql_close($con);

?>

<BODY>
<br>
<P><FONT FACE="Arial" SIZE="2">Reclass a boat<br>
<FONT FACE="Arial" SIZE="4">Current CLASS: <?php echo "$boat_class-$boat_number"; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT><BR>
<B><U><br>
<?php
  
   #$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());
   #mysql_select_db("shootout",$con);
	$con = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
	mysql_select_db($DB_NAME,$con);

   $result = mysql_query("SELECT * FROM classes ORDER BY class_name ASC",$con);
   


echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

echo "<table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='30%' id='AutoNumber1'>";


$i = 0;
while ($i < $num) {
	$class_id = mysql_result($result,$i,"class_id");
	$class_name = mysql_result($result,$i,"class_name");

#	echo "$class_id - $class_name<br>";

echo "<tr>";

	echo "<td><A HREF = './updateclass.php?class=$class_id&classname=$class_name&competitor=$competitor&txtOldclass=$boat_class'>$class_name</A></td> </center>";

++$i;

echo "</tr>";

}


echo "</table>";

echo "Go <A HREF = './index.php'> back to Admin Menu</A><BR><BR>";
echo "Go <A HREF = '../index.php'> back to Main Menu</A><BR><BR>";

?>



</BODY>

</HTML>
