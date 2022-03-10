<?php
include '../conn/conn.php';
	if(isset($_SESSION["e"]))
	{
		header('location: ../cart.php');
	}
	else
	{
		header('location: ../login.php');
	}
?>