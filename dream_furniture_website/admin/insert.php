<?php include '../conn/conn.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>insert</title>
</head>
<body>
	<form action="ip.php" method="post">		
			Fnm
			<input type='text' name='fnm'>
			Ftype
				<input type='text' name='ft'>
			Ftypename
				<input type='text' name='ftnm'>
			Fsize
				<input type='number' name='fs'>
			Fcolor
				<input type='text' name='fc'>
			Fimg
				<input type='text' name='fi'>
			Fprice
				<input type='number' name='fp'>

				<input type='submit' name='submit' value='insert'>
					
</form>
<a href="logout.php">Logout</a>
</body>
</html>