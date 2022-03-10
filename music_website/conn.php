<?php
if(!isset($_SESSION))
{
	session_start();
}
$conn=mysqli_connect('localhost','root','',"music_magic");
if(!$conn)
{
	die("Connection failed".mysqli_errno());
}

?>