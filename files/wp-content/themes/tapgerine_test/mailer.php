<?php
if ($_POST) {
    require __DIR__ . '/lib/phpMailer/PHPMailerAutoload.php';
    $mail = new PHPMailer(); 
    $mail->IsSMTP();
    $mail->SMTPDebug = 0; 
    $mail->SMTPAuth = true; 
    $mail->SMTPSecure = "ssl"; 
    $mail->Host = "smtp.gmail.com";
    $mail->Port = 465;
    $mail->Username = "smtpmail555@gmail.com";
    $mail->Password = "e34dde*#d8ss";
    $mail->SetFrom("smtpmail555@gmail.com", "Lorem Ipsum");
    $mail->AddAddress($_REQUEST['email']);
    $mail->CharSet = "UTF-8";
    $mail->IsHTML(true);
    $mail->Subject = "Lorem ipsum dolor sit amet";
    $mail->Body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    $mail->AltBody = "This is a plain-text message body";
    $mail->AddAttachment(__DIR__ . '/doc1.docx', "doc1.docx");
    

    if(!$mail->Send()) {
       echo "Mailer Error: " . $mail->ErrorInfo;
    } else {
       echo true;
    }
}
else {
    echo "Package Lost!";
}
?>