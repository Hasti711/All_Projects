<?php
include "../conn/conn.php";
session_destroy();
header('location:index.php');
?>