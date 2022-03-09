<?php include '../conn/conn.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Delete</title>
</head>
<body>
<?php
$id=$_GET['Fid'];
$r=mysqli_query($conn,"delete from fur where Fid=".$id);
if($r)
{
	header("location:admin.php");
}
else
{
	echo "no";
}

?>
</body>
</html>