<?php  

include 'conn.php';

if(!isset($_SESSION['e']))
{
	header('location: ../index.php');
}

?>