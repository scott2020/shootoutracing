<html>
<head>
<title>Test Report</title>
</head>
<body bgcolor="white">
<?php

$con = mysql_connect("localhost", "shootout", "shootout")or die("Connect Error: ".mysql_error());

mysql_select_db("shootout",$con);


$query = mysql_query("SELECT run_id,competitor_id,speed,date_format(timestamp,'%m-%d-%y %h:%i:%s %p')as timeformat FROM speeds WHERE competitor_id=$competitor",$con);

#$query="SELECT UID, deploy_date,machname,phone,assetnum,manu,model,sysversion 

#FROM systemsdoc ORDER BY manu";

$result = mysql_query($query);

echo "<a href=\"index.html\">Click here</a> to return to SysOps";
echo "<table border=\"0\">";
$j=true;
while ($row = mysql_fetch_row($result))
{
        if($j)
                $j=false;
        else 
                $j=true;        
        echo "<tr>";
        for ($i=0;$i<mysql_num_fields($result);$i++){
        if ($j){
                echo "<td bgcolor=\"#CCFF99\">";
        }
        if (!$j){
                echo "<td bgcolor=\"#FFFFCC\">";
        }
        echo $row[$i];
        echo "</td>";
        }
}
echo "</table>";
mysql_close($db1);
?>
</body>
</html>

