<?php
include 'conn/conn.php';
include 'inc/header.php';

?>

<html>
<body>

<form action="uploadimg.php" method="post" enctype="multipart/form-data">
    Select image to upload:<br><br>
    <input type="file" name="fileToUpload" id="fileToUpload"><br><br>
    <input type="submit" value="Upload Image" name="submit">
</form>

</body>
</html>

<?php

include 'inc/footer.php';

?>