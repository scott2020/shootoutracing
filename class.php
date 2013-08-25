<HTML>

<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<TITLE>Registration Detail Screen New Gitbim</TITLE>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</HEAD>
<?php
#include('register_globals.php');
#register_globals();
?>

<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<h2> New Competitor Screen </h2>
<h1> Click on a class to start a registration </h1>
<form name="class" method="post" action="<?php echo $PHP_SELF?>">
<h2>Add A Class</h2>
If you do not see the class you need to register, enter it in the box and click SUBMIT.
<br>

<INPUT TYPE="text" SIZE="20" NAME="txtClass">
<FONT FACE="Arial" SIZE="2"><INPUT TYPE="submit" VALUE="Submit" NAME="cmdAddclass"></FONT>

</form>

<?php
include './config.php';
#$cmdAddclass = $_GET['cmdAddclass'];
#$txtClass = $_GET['txtClass'];
if ($cmdAddclass) {


echo $txtClass;

$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
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



$con = mysql_connect("localhost", $DB_USER, $DB_PASS)or die("Connect Error: ".mysql_error());
mysql_select_db($DB_NAME,$con);

   $result = mysql_query("SELECT * FROM classes ORDER BY class_name ASC",$con);
   


echo "<hr>";


$num = 0;
$num = mysql_numrows($result);

echo "<table border='0' cellpadding='0'>";

echo "<tr><th>Class</th></tr>";

$i = 0;
while ($i < $num) {
	$class_id = mysql_result($result,$i,"class_id");
	$class_name = mysql_result($result,$i,"class_name");

#	echo "$class_id - $class_name<br>";

echo "<tr>";

    echo "<td><A HREF = './listcompreg.php?class=$class_id&classname=$class_name'>$class_name</A></td>";
    #echo "<td><A HREF = './reg.php?class=$class_id&classname=$class_name'>$class_name</A></td>";
    #echo "<td> <A HREF = './delclass.php?class=$class_id'>Delete Class</A></td>";

++$i;

echo "</tr>";

}


echo "</table>";



#while ($myrow = mysql_fetch_row($result)) {



#		printf("%s - <a href='./classenter.php?class=%s'>Clic</a>\n",
#		$myrow[0],$myrow[1]);
#
#		echo "<BR>\n";


#}

echo "<hr>";
mysql_close($con);

echo "<br>";

echo $DB_NAME;
echo "<br>";

echo "Go <A HREF = './index.php'> back to Main Menu</A><BR><BR>";
?>


<BODY>

</BODY>

</HTML>
