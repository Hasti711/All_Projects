<?php

include 'conn.php';

use PHPMailer\PHPMailer\PHPMailer;

if(isset($_POST["forget_pass"])) {
if (isset($_POST["email2"])) {
    $email = $_POST["email2"];
    $email = filter_var($email, FILTER_SANITIZE_EMAIL);
    $email = filter_var($email, FILTER_VALIDATE_EMAIL);
    if (!$email) {
        $error .="Invalid email address";
    }
    else {
        $sel_query = "SELECT * FROM `registration` WHERE Email='" . $email . "'";
        $results = mysqli_query($conn, $sel_query);
        $row = mysqli_num_rows($results);
        if ($row == "") {
                $error .= "User Not Found";
           }
    }
    if ($error != "") {
        echo $error;
    } else {
        $output.='<p>Please click on the following link to reset your password.</p>';
        //replace the site url
        $output.='<p><a href="http://localhost/Music_Magic/reset-password.php?email=' . $email . '&action=reset" target="_blank">http://localhost/Music_Magic/reset-password.php?email=' . $email . '&action=reset</a></p>';
        $body = $output;
        $subject = "Password Recovery";
        $email_to = $email;
        //autoload the PHPMailer
        require("vendor/autoload.php");
        $mail = new PHPMailer();
        //$mail->IsSMTP();
                            $mail->Host = "smtp.gmail.com"; // Enter your host here
                            $mail->SMTPAuth = true;
                            $mail->Username = "parmarhasti711@gmail.com"; // Enter your email here
                            $mail->Password = "711hastiparmar"; //Enter your passwrod here
                            $mail->Port = 587;
                            $mail->IsHTML(true);
                            $mail->From = "parmarhasti711@gmail.com";
                            $mail->FromName = "Music Magic";

                            $mail->Subject = $subject;
                            $mail->Body = $body;
                            $mail->AddAddress($email_to);
                            if (!$mail->Send()) {
                                echo "Mailer Error: " . $mail->ErrorInfo;
                            } else {
                                //An email has been sent
                                header('location: http://localhost/Music_Magic/acc.php');
                            }
                        }
                    }
}
?>