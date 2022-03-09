<?php
include '../conn/conn.php';
if (isset($_POST['submit'])) 
{
	# code...
	$fnm=$_POST['fnm'];
	$ft=$_POST['ft'];
	$ftnm=$_POST['ftnm'];
	$fs=$_POST['fs'];
	$fc=$_POST['fc'];
	$fi=$_POST['fi'];
	$fp=$_POST['fp'];
	$r=mysqli_query($conn,"insert into fur(Fnm,Ftype,Ftnm,Fsize,Fcolor,Fimg,Fprice) values('$fnm','$ft','$ftnm',$fs,'$fc','$fi',$fp)");
	if($r)
	{
		header("location:admin.php");
	}
	else
	{
		echo "no";
	}
}
?>