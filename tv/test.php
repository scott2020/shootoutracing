<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>TV Scroll class results </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">

<script language="Javascript">
	/* refresh page every 60 seconds */
	setTimeout("document.location.reload(true)", 300000);
   </script>

</HEAD>

<BODY>
<p align="left"><img border="0" src="page_top.gif" width="610" height="88"></p>
This page refreshes every 5 minutes. <br>
Current as of <?=date( "F d, Y  H:i T.")?><br>

<!--[if IE]>

<IE:Download ID="marqueedata" STYLE="behavior:url(#default#download)" /> 
<marquee id="externalmarquee" direction=up scrollAmount=4 style="width:600px;height:300px;border:1px solid black;padding:3px" onMouseover="this.scrollAmount=2" onMouseout="this.scrollAmount=4" src="byclasstv.php">
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

<![endif]-->
</BODY>
</HTML>
