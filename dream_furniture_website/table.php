<?php 
include 'conn/conn.php';
include 'inc/header.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Table</title>
	<link rel="stylesheet" href="css/test.css">
</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#f1").click(function(){
    $("#p1").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#f2").click(function(){
    $("#p2").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#f3").click(function(){
    $("#p3").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#f4").click(function(){
    $("#p4").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#f5").ready(function(){
    $("#p5").slideToggle("slow");
  });
});
</script>
<body>
<div class="_1HmYoV">
<div class="_1HmYoV _35HD7C" style="flex: 0 0 160px; max-width: 280px;  padding: 0px 10px 0px 0px;">
		<ul><!-- class="nav navbar-nav w3ls-nav1 text-center" -->
			<li>
				<div id="f1" class="lc"><img src="images/arrow.png" style="height: 23px; width: 23px;">Living Room</div>
				<div id="p1">
				<ol><!-- class="nav navbar-nav w3ls-nav1 text-center"-->
				<li>
			    <a href="wallunit.php" class="lc">Wall Unit</a></li>
				<li><a href="tvunit.php" class="lc">TV Unit</a></li>
				<li><a href="sectional.php" class="lc">Sectional</a></li>
				<li><a href="sofa.php" class="lc">Sofa</a></li>
				<li><a href="sofachair.php" class="lc">Sofa Chair</a></li>
				<li><a href="ottoman.php" class="lc">Ottoman</a></li>
				</ol>
				</div>
			</li><br>
			<li>
				<div id="f2" class="lc"><img src="images/arrow.png" style="height: 23px; width: 23px;">Bed Room</div>
				<div id="p2">
				<ol>
				<li><a href="bed.php" class="lc">Bed</a></li>
				</ol>
				</div>
			</li><br>
			<li>
				<div id="f3" class="lc"><img src="images/arrow.png" style="height: 23px; width: 23px;">Kitchen</div>
				<div id="p3">
					<ol>
					<li><a href="table.php" class="lc">Dinning Table</a></li>
					</ol>
				</div>
			</li><br>
			<li>
				<div id="f4" class="lc"><img src="images/arrow.png" style="height: 23px; width: 23px;">Office</div>
				<div id="p4">
					<ol>
					<li><a href="chair.php" class="lc">Chairs</a></li>
					<li><a href="table.php" class="lc">Table</a></li>
					<li><a href="wallunit.php" class="lc">Wall Unit</a></li>
					</ol>
				</div>
			</li><br>
			<li>
				<div id="f5" class="lc"><img src="images/arrow.png" style="height: 23px; width: 23px;">Hotel</div>
				<div id="p5">
				<ol>
				<li><a href="sofa.php" class="lc">Sofa</a></li>
				<li><a href="table.php" class="lc">Dining Table</a></li>
				<li><a href="bed.php" class="lc">Bed</a></li>
				</ol>
				</div>
			</li>
			</ul>
</div>
<div class="_1HmYoV _35HD7C" style="flex-grow: 1; overflow: auto">
  	<table border="1" width="250px" height="100px">
  	<tr>
		<td>
<a href="table1.php" class="lc">
			<div class="flex-container">
			<div style="flex-grow: 1"> <img src="<?php
$sql1="select * from fur where ftype='dt' && fcolor='oak-gray'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
		echo $row["Fimg"];
}
?>" align="center" width="250px" height="150px">
<p align="center"><b>
<?php
$sql1="select * from fur where ftype='dt' && fcolor='oak-gray'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
	echo 'RS '.$row["Fprice"];
}
?>
</b>
</p>
</a> </td>
		<td><a href="table2.php" class="lc">
			<div class="flex-container">
			<div style="flex-grow: 1"> <img src="<?php
$sql1="select * from fur where ftype='dt' && fcolor='white-gray'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	while ($row=mysqli_fetch_array($r)) {
		# code...
		echo $row["Fimg"];
	}
}
?>" align="center" width="250px" height="150px">
<p align="center"><b>
<?php
$sql1="select * from fur where ftype='dt' && fcolor='white-gray'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
	echo 'Rs '.$row["Fprice"];
}
?>
</b>
</p>
</a></td>
<td><a href="table3.php" class="lc">
			<div class="flex-container">
			<div style="flex-grow: 1"> <img src="<?php
$sql1="select * from fur where ftype='dt' && fcolor='wn-gray'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	while ($row=mysqli_fetch_array($r)) {
		# code...
		echo $row["Fimg"];
	}
}
?> " align="center" width="250px" height="150px">
<p align="center"><b>
<?php
$sql1="select * from fur where ftype='dt' && fcolor='wn-gray'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
	echo 'Rs '.$row["Fprice"];
}?>
</b>
</p>
</a>
</td>
</table>
</div>
</div>
</body>
</html>
<?php
include 'inc/footer.php';
?>