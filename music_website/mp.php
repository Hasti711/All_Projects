<?php

include 'conn.php';

$sid = $_GET['song'];
$row = mysqli_query($conn,"select * from music where id = ".$sid);
	while ($r = mysqli_fetch_array($row)) {
		# code...
		header('location:song.php?song='.$r['Id']);
	}
?>