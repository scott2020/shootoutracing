<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>TV Scroll class results </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">


</HEAD>

<BODY>
<p align="left"><img border="0" src="page_top.gif" width="610" height="88"></p>
These are the scores for the Lake Shootout <br>
Current as of <?=date( "F d, Y  H:i T.")?><br>

<marquee  behavior="scroll" direction="up"><?php echo file_get_contents('byclasstv.php'); ?></marquee>


</BODY>
</HTML>
