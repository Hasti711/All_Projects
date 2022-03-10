<?php

include 'conn.php';

use PHPMailer\PHPMailer\PHPMailer;

if (isset($_POST["Send"]))
{
	$email = $_POST["Email"];
    $email = filter_var($email, FILTER_SANITIZE_EMAIL);
    $email = filter_var($email, FILTER_VALIDATE_EMAIL);
    if (!$email) {
        $error ="Invalid email address";
    }
    if ($error != "") {
    	// code...
    	echo $error;
    }
    else
    {
    	$output = '';
    	$output.='<p>Thank You For Subscribeing into Website From Music Magic... Stay Tuned...</p>';
    	$body = $output.$msg;
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

                            $mail->Subject = "Music_Magic";
                            $mail->Body = $body;
                            $mail->AddAddress($email);
                            if (!$mail->Send()) {
                                echo "Mailer Error: " . $mail->ErrorInfo;
                            } else {
                                //An email has been sent
                                $_SESSION['sub_email'] = $email;
                                header('location: http://localhost/Music_Magic/');
                            }
    }
}
?>