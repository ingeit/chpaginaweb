<?php
// Check for empty fields
   
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$domicilio = $_POST['domicilio'];
$telefono = $_POST['telefono'];
$mensaje = $_POST['mensaje'];
   
// Create the email and send the message
$to = 'masterk63@gmail.com'; // Add your email address inbetween the '' replacing yourname@yourdomain.com - This is where the form will send a message to.
$email_subject = "Website Contact Form:  $nombre";
$email_body = "You have received a new message from your website contact form.\n\n"."Here are the details:\n\nName: $nombre\n\n\n\nPhone: $telefono\n\nMessage:\n$mensaje";
$headers = "From: noreply@yourdomain.com\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.
$headers .= "Reply-To: $nombre";   
mail($to,$email_subject,$email_body,$headers);
return true;         
?>
