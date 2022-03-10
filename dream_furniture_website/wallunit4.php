<?php include 'conn/conn.php';
include 'inc/header.php';
?>
<!DOCTYPE html>
<html>
<title>Wall unit</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>

<div class="w3-content w3-display-container">

<div class="w3-display-container mySlides">
  <img src="<?php
$sql1="select * from fur where ftype='wu1' && ftnm='wu5'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
		echo $row["Fimg"];
}
?>" align="right" width="100%" height="100%">
</div>

<div class="w3-display-container mySlides">
  <img src="<?php
$sql1="select * from fur where ftype='wu2' && ftnm='wu5'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
		echo $row["Fimg"];
}
?>" align="right" width="500px" height="500px" style="margin-right: 200px">
</div>

<div class="w3-display-container mySlides">
  <img src="<?php
$sql1="select * from fur where ftype='wu3' && ftnm='wu5'";
$r=mysqli_query($conn,$sql1);
if($r)
{
	$row=mysqli_fetch_array($r);
		echo $row["Fimg"];
}
?>" align="right" width="500px" height="500px" style="margin-right: 200px">
</div>

<br><br>
<br><br><br><br><br><button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
<button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>

</div>

<div class="w3-container">
  <h2>Slideshow Caption</h2>
  <p>Add a caption text for each image slide with the w3-display-* classes (topleft, topmiddle, topright, bottomleft, bottommiddle, bottomright or middle).</p>
</div>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

</body>
</html>
<?php include 'inc/footer.php';?>