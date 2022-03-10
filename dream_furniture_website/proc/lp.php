<?php
include '../conn/conn.php';
if(isset($_POST['l']))
{
	$e=$_POST['e'];
	$px=$_POST['p'];
	$p=md5($px);
	$r=mysqli_query($conn,"select * from registration where Email='$e' and Password='$p'");
	if($row=mysqli_num_rows($r)>0)
	{
			# code...
			$_SESSION['e']=$e;
			header('location: http://localhost/dreamfurniture/');
	}
	else
	{
		header('location: ../login.php');
	}
}

?>