<?php
include 'conn/conn.php';
include 'inc/header.php';

$e=$_SESSION['e'];
$id=$_SESSION['id'];
$sql3=mysqli_query($conn,"select Cid from registration where Email='$e'");
$sql2=mysqli_query($conn,"select * from fur where Fid='$id'");
if($sql3)
{
		$row1=mysqli_fetch_array($sql3);
		$row2=mysqli_fetch_array($sql2);
		$sql1=mysqli_query($conn,"insert into cart(Cid,Fid) values(".$row1['Cid'].",".$row2['Fid'].")");
		if($sql2)
			{
				echo '<div id="shopping-cart">
				<div class="txt-heading">Shopping Cart</div><br>';
				echo '<img src='.$row2['Fimg'].'>';
			}
}
echo "
<form>
        <button type=submit formaction=img.php>Visulaze</button>
        <button type=submit formaction=buyform.php>Buy Now</button>
    </form> ";

include 'inc/footer.php';
?>