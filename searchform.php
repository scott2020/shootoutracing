<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Search Form </TITLE>
<META NAME="Generator" CONTENT="BallsEditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>
<h1>Search Page</h1>
<form action="searchresults.php" method="post">

Choose Search Field: <BR>

	<select name = "searchtype">
		<option value="driver_first">Driver First Name
		<option value="driver_last">Driver Last Name
		<option value="boat_class">Class
	</select>

<br>
Enter Search Text:<br>
<input name="searchtext" type=text>
<br>
<input type=submit value="Search">
</form>

</BODY>
</HTML>
