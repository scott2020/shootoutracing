<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<?php include '../config.php';?>
<title>Administration for <?php echo $SITE_NAME; echo " - Database $DB_NAME";?></title>
</head>

<body>
<p align="center"><img border="0" src="page_top.gif" width="610" height="88"></p>

<p>&nbsp;</p>
<p>&nbsp;</p>
<h3>Admin Menu</h3>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber1">
  <tr>
    <td width="100%">
    <p align="center"><font face="Arial">Registration</font></td>
  </tr>
  <tr>
    <td width="100%">
    <ul>
      <li><font face="Arial"><a href="listcompetitor.php">List, Delete, Reclass Competitors</a></font></li>
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
      <li><font face="Arial"><a href="../listcompforscore.php">Enter Scores</a></font></li>
      <li><font face="Arial"><a href="listscoresedit.php">View all and delete Scores</a></font></li>
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
      <li><font face="Arial"><a href="../reports/byclass.php">Scores grouped by Class</a></font></li>
      <li><font face="Arial"><a href="../reports/bycompetitor.php">Scores grouped by Competitor name</a></font></li>
      <li><font face="Arial"><a href="../reports/overalltop.php">Display all runs sorted by speed</a></font></li>
      <li><font face="Arial"><a href="../reports/classtop.php">Display winners of each class</a></font></li>
      <li><font face="Arial"><a href="../reports/allcompetitors.php">Display ALL Registered competitors by Class</a></font></li>
    </ul>
    </td>
  </tr>
</table>

<A HREF="../index.php">Main Menu</A>

<?php echo "<br><br>Using Database $DB_NAME";?>
</body>

</html>