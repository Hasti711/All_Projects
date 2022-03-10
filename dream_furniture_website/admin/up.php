<?php include '../conn/conn.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Update</title>
</head>
<body>
<form action="<?php $_PHP_SELF ?>" method="post">
	<?php
			$Fid=$_GET['Fid'];
			$r=mysqli_query($conn,"select * from fur where Fid='$Fid'");
			echo "<table>
			<tr>
			<td>Fnm</td>
			<td>Ftype</td>
			<td>Ftynm</td>
			<td>Fsize</td>
			<td>Fcolor</td>
			<td>Fcolor</td>
			<td>Fimg</td>
			<td>Fprice</td>
			</tr>";
			if($r)
			{
				while($row=mysqli_fetch_array($r))
				{
				echo "<tr>
				<td><input type=text name=fnm value=".$row['Fnm']."></td>
				<td><input type=text name=ft value=".$row['Ftype']."></td>
				<td><input type=text name=ftnm value=".$row['Ftnm']."><td>
				<td><input type=number name=fs value=".$row['Fsize']."></td>
				<td><input type=text name=fc value=".$row['Fcolor']."></td>
				<td><input type=text name=fi value=".$row['Fimg']."></td>
				<td><input type=number name=fp value=".$row['Fprice']."></td>
				<td><input type=submit name=submit value=Update></td>
				</tr>";
			}
			echo "</table>";
		}
?>	
</form>
<?php
if (isset($_POST['submit'])) 
{
	# code...
	//$id=$_POST['Fid'];
	$fnm=$_POST['fnm'];
	$ft=$_POST['ft'];
	$ftnm=$_POST['ftnm'];
	$fs=$_POST['fs'];
	$fc=$_POST['fc'];
	$fi=$_POST['fi'];
	$fp=$_POST['fp'];
	//$r1=mysqli_query($conn,"select * from fur where ");
	$r=mysqli_query($con,"update fur set Fnm='$fnm',Ftype='$ft',Ftnm='$ftnm',Fsize=$fs,Fcolor='$fc',Fimg='$fi',Fprice=$fp where Fid=".$_GET['Fid']);
	if($r)
	{
		header('location:admin.php');
	}
}
?>