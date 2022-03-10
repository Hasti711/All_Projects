<?php

include 'conn.php';

$film = $_GET['song'];
$row = mysqli_query($conn,"select * from music where film = ".$film);
	while ($r = mysqli_fetch_array($row)) {
		# code...
		header('location:songs.php?song='.$r['film']);
	}
?>