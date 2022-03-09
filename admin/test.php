
<?php
include '../conn/conn.php';
	$n="Shivagi";
	$px="zxcv1234";
	$p=md5($px);
	$r=mysqli_query($conn,"insert into admin(Name,Password) values('$n','$p')");
	if($r)
	{
		echo "yes";
	}
	else
	{
		echo "no";
	}
?>