<?php include 'conn/conn.php'; ?>
<?php include 'inc/header.php';?>
<html>
<head>
	<title>Buy</title>
</head>
<body>
	<form action="buypro.php">
		<?php 
		if (isset($_SESSION['e'])) 
		{
			$u=$_SESSION['e'];
			$id=$_SESSION['id'];
			$sql1=mysqli_query($conn,"select * from fur where Fid='$id'");
			$row1=mysqli_fetch_array($sql1);
			echo "name:</br>";
			echo "<input type=text name=name readonly value='$u'></br>";
			echo "Price:</br>";
			echo "<input type=number name=price readonly value='".$row1['Fprice']."'></br>";
			echo "<img src='".$row1['Fimg']."''></br>";
		}
		?>
		Phone:</br>
		<input type="number" name="pn" size="10"><br>
		Address:</br>
		<textarea rows="6" cols="20" name="add"></textarea></br>
		City:</br>
		<input type="text" name="city"><br/><br/>
		<input type="submit" name="submit" value="buy">
	</form>
</body>
</html>
<?php include 'inc/footer.php'; ?>