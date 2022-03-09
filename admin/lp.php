<?php
include '../conn/conn.php';
if(isset($_POST['submit']))
{
	$u=$_POST['name'];
	$px=$_POST['pass'];
	$p=md5($px);
	$r=mysqli_query($conn,"select * from admin where Name='$u' && Password='$p'");
	if($r)
	{
		$_SESSION["name"]=$u;
		$_SESSION["pass"]=$p;
		header('location:admin.php');
	}
}
?>
