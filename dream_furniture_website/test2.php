<?php 
include 'conn/conn.php';
include 'inc/header.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Wall unit</title>
</head>
<body>
<div> <div><h2 style="margin-top: 20px; text-align:center">Wall unit</h2>
  	<div>
  	<table border="1" align="center" width="250px" height="100px">
  	<tr>
		<td>
<a href="wallunit1.php">
<div class="flex-container">
			<div style="flex-grow: 1">
			<img src="<?php
$sql1="select * from fur where ftnm='wu1' && ftype='wu1'";

/*for($i=0;$i<5;$i++)
{*/
$r=mysqli_query($conn,$sql1);
if($r)
{
	while ($row=mysqli_fetch_array($r)) {
		# code...
		echo $row["Fimg"];
	}
}
?>"
 align="center" width="250px" height="150px">
<p align="center"><b>
<?php
$sql1="select * from fur where ftype='wu1'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
	echo 'RS '.$row["Fprice"];
}
?>
</b>
</p>
</a> </td>
</div>
</div>
</a>
</td>
</tr>
</table>
</div>
</div>
</div>
</body>
</html>
<?php include 'inc/footer.php';?>