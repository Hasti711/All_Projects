<?php

include 'conn.php';

if (isset($_POST['signup'])) {
	# code...
	if (session_destroy()) {
		# code...
		session_start();
	}
	$nm = $_POST['Name'];
	$email = $_POST['email'];
	$pass = $_POST['password'];
	$q = "insert into registration(Name,Email,Password) values('$nm','$email','$pass')";
	if(mysqli_query($conn,$q))
	{
		$row = mysqli_query($conn,"select Id from registration where email='$email' && password='$pass'");
		while($r = mysqli_fetch_array($row))
		{
			$_SESSION['id'] = $r['Id'];
		}
		header('location: http://localhost/Music_Magic/acc.php');
	}
}

?>