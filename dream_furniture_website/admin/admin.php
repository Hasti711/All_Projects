<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
</head>
<body>
<?php
include '../conn/conn.php';
$u=$_SESSION["name"];
$p=$_SESSION["pass"];
if(isset($u))
{
	if(isset($p))
	{
		echo '<ol type="1">
<li><a href="insert.php">Insert</a><br><br></li>
<li><a href="update1.php">Update</a><br><br></li>
<li><a href="select.php">Select</a><br><br></li>
<li><a href="delete1.php">Delete</a></li>
<a href="logout.php">Logout</a>
</ol>';
	}
}
else
{
	header('location: index.php');
}
?>
</body>
</html>