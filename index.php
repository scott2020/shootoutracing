<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php include '/config/config.php';?>
<title><?php echo $SITE_NAME;?></title>
</head>

<body>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<p>&nbsp;</p>
<p>&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber1">
  <tr>
    <td width="100%">
    <p align="center"><font face="Arial">Registration</font></td>
  </tr>
  <tr>
    <td width="100%">
    <ul>
      <li><font face="Arial"><a href="class.php">Register Competitor and Add Classes</a></font></li>
      <li><font face="Arial"><a href="listcompetitor.php">Edit and View Registered Competitors</a></font></li>
    </ul>
    </td>
  </tr>
</table>
<p>&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber2" height="52">
  <tr>
    <td width="100%" height="19">
    <p align="center"><font face="Arial">Scoring</font></td>
  </tr>
  <tr>
    <td width="100%" height="32">
    <ul>
      <li><font face="Arial"><a href="listcompforscore.php">Enter Scores</a></font></li>
      <li><font face="Arial"><a href="listscoresedit.php">View all Scores by boat class and number</a></font></li>
      <li><font face="Arial"><a href="listscoresrunid.php">View all Scores by run number</a></font></li>
    </ul>
    </td>
  </tr>
</table>
<p>&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber5" height="52">
  <tr>
    <td width="100%" height="19">
    <p align="center"><font face="Arial">Search</font></td>
  </tr>
  <tr>
    <td width="100%" height="32">
    <ul>
      <li><font face="Arial"><a href="searchform.php">Search for competitors</a></font></li>
    </ul>
    </td>
  </tr>
</table>
<p>&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber3">
  <tr>
    <td width="100%">
    <p align="center"><font face="Arial">Reports</font></td>
  </tr>
  <tr>
    <td width="100%">
    <ul>
      <li><font face="Arial"><a href="listrunsleft.php">Display competitors with remaining runs left</a></font></li>
	  <li><font face="Arial"><a href="listaudit.php">List Audit Trail of Reclasses</a></font></li>
	  <li><font face="Arial"><a href="reports/byclass.php">Scores grouped by Class</a></font></li>
      <li><font face="Arial"><a href="reports/bycompetitor.php">Scores grouped by Competitor name</a></font></li>
      <li><font face="Arial"><a href="reports/overalltop.php">Display all runs sorted by speed</a></font></li>
      <li><font face="Arial"><a href="reports/classtop.php">Display winners of each class</a></font></li>
      <li><font face="Arial"><a href="reports/allcompetitors.php">Display ALL Registered competitors by Class</a></font></li>
      <li><font face="Arial"><a href="alldriverinfo.php">Display ALL Registered competitors with information and scores.</a></font></li>
      <li><font face="Arial"><a href="./reports/bycategory.php?category=P">Display Scores by Professional Division</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=N">Display Scores by NON-Professional Division</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=M">Display Scores by Manufacturer Division</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=PV">Display Scores by Fastest PROFESSIONAL V-Hull</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=PC">Display Scores by Fastest PROFESSIONAL Cat</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=NV">Display Scores by Fastest NON-PROFESSIONAL V-Hull</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=NC">Display Scores by Fastest NON-PROFESSIONAL Cat</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=MV">Display Scores by Fastest MANUFACTURER V-Hull</a></font></li>
<li><font face="Arial"><a href="./reports/bycategory.php?category=MC">Display Scores by Fastest MANUFACTURER Cat</a></font></li>

    </ul>
    </td>
  </tr>
</table>
<p></p>

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber4">
  <tr>
    <td width="100%">
    <p align="center"><font face="Arial">TV Menu</font></td>
  </tr>
  <tr>
    <td width="100%">
    <ul>
      <li><font face="Arial"><a href="tv/index.html">TV Menu</a></font></li>
    </ul>
    </td>
  </tr>
</table>

<br>
Using database <?php echo $DB_NAME;?>
</body>

</html>
