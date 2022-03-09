<?php include 'conn/conn.php'; ?>
<html>
<head>
	<title>update</title>
</head>
<body>
	<table border=1>
		<tr>
			<th>name</th>
			<th>type</th>
			<th>typename</th>
			<th>size</th>
			<th>color</th>
			<th>image</th>
			<th>price</th>
			<th>edit</th>
		</tr>
		<?php
		$r=mysqli_query($con,"select * from fur");
		if($r)
		{
			while($row=mysqli_fetch_row($r))
			{
				echo "<tr>";
				echo "<td>".$row[1]."</td>";
				echo "<td>".$row[2]."</td>";
				echo "<td>".$row[3]."</td>";
				echo "<td>".$row[4]."</td>";
				echo "<td>".$row[5]."</td>";
				echo "<td>".$row[6]."</td>";
				echo "<td>".$row[7]."</td>";
				echo "<td><a href="."update.php?Fid=".$row[0].">update</a></td>";
				echo "</tr>";
			}
		}
		?>
	</table>
	<a href="logout.php">Logout</a>
</body>
</html>