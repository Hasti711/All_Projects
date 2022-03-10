
<?php
include '../conn/conn.php';
if(isset($_POST['s']))
{
	session_start();
	$n=$_POST['n'];
	$e=$_POST['e'];
	$px=$_POST['p'];
	$p=md5($px);
	$q="insert into registration(Name,Email,Password) values('$n','$e','$p')";
	if (mysqli_query($conn,$q)) {
		# code...
	$_SESSION["n"]=$_POST['n'];
	$_SESSION["e"]=$_POST['e'];
	header('location: ../img.php');
	}
	else
	{
		header('location: ../login.php');
	}
}
?>