<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script language="Javascript">
	/* refresh page every 60 seconds */
	setTimeout("document.location.reload(true)", 300000);
   </script>
</head>

<body>
<div align="center">
  <table width="640" height="480" border="0" cellpadding="0" cellspacing="0">
    <tr align="center" valign="top"> 
      <td height="42" colspan="3"><img src="images/singleclass_01.jpg" width="640" height="64"></td>
    </tr>
    <tr align="center" valign="top"> 
      <td width="22" align="left"><img src="images/shootoutbackground_02.jpg" width="22" height="308"></td>
      <td width="592"><font size="-1">This page refreshes every 5 minutes. <br>
        Current as of 
        <?=date( "F d, Y  H:i T.")?>
        <br>
        <!--[if IE]>

<IE:Download ID="marqueedata" STYLE="behavior:url(#default#download)" /> 

<?php
include('../register_globals.php');
register_globals();

echo "<marquee id='externalmarquee' direction=up scrollAmount=4 style='width:560px;height:290px;border:0px solid black;padding:3px' onMouseover='this.scrollAmount=4' onMouseout='this.scrollAmount=4' src=singleclass.php?class=$class&classname=$classname>"
?>

</marquee>


<script language="JavaScript1.2">


function downloaddata(){
marqueedata.startDownload(externalmarquee.src,displaydata)
}

function displaydata(data){
externalmarquee.innerHTML=data
}

if (document.all)
window.onload=downloaddata


</script>

<![endif]--></p>
        </font> </td>
      <td width="26" align="right"><img src="images/shootoutbackground_04.jpg" width="20" height="308"></td>
    </tr>
    <tr align="center" valign="top"> 
      <td height="108" colspan="3"><img src="images/shootoutbackground_05.jpg" width="640" height="108"></td>
    </tr>
  </table>
</div>
</body>
</html>
