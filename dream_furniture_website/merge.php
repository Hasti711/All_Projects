
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>

<body>
<!--$img = "<img src='uploads/a1.png' height='321px' width='400px'>";-->
<?php
// $photo_to_paste = "<img src='uploads/a1.png' height='321px' width='400px'>";
       // $photo_to_paste="uploads/apple.jpg";  //image 321 x 400
//uploads/t1
         $photo_to_paste="Capture.png";  //image 321 x 400
       $white_image="uploads/cherry.jpg"; //873 x 622
        $im = imagecreatefromjpeg($white_image);
        $condicion = GetImageSize($photo_to_paste); // image format?
        if($condicion[2] == 1) //gif
        $im2 = imagecreatefromgif("$photo_to_paste");
        if($condicion[2] == 2) //jpg
        $im2 = imagecreatefromjpeg("$photo_to_paste");
        if($condicion[2] == 3) //png
        $im2 = imagecreatefrompng("$photo_to_paste");
        imagecopy($im, $im2, (imagesx($im)/2)-(imagesx($im2)/2), (imagesy($im)/2)-(imagesy($im2)/2), 0, 0, imagesx($im2), imagesy($im2));
        imagejpeg($im,"test4.jpg");
        echo "<img src="."test4.jpg".">"; 
        //echo "test4.jpg";
        imagedestroy($im);
        imagedestroy($im2);
?>
</body>
</html>