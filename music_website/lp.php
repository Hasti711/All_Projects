<?php

include 'conn.php';

if (isset($_POST['login'])) {
	# code...
	if (session_destroy()) {
		# code...
		session_start();
	}
	$email = $_POST['email'];
	$pass = $_POST['password'];
	$q = "select Id from registration where email ='$email' && password='$pass'";
	$row = mysqli_query($conn,$q);
	if ($r = mysqli_num_rows($row)>0) {
		# code...
		while($r = mysqli_fetch_array($row))
		{
			$_SESSION['id'] = $r['Id'];
		}
		header('location: http://localhost/Music_Magic/acc.php');
	}
}
?>