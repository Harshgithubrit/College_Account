<?php
/**
* Simple example script using PHPMailer with exceptions enabled
* @package phpmailer
* @version $Id$
*/

require '../class.phpmailer.php';

try {
	$mail = new PHPMailer(true); //New instance, with exceptions enabled

	$body             = file_get_contents('http://e-online.in/E-Online/admin/pages/tables/Mail_content.php?rplid=114&p_id=1070&tocom=%E0%A4%AA%E0%A5%81%E0%A4%B0%E0%A4%BE%E0%A4%A8%E0%A5%87%20%E0%A4%B8%E0%A4%AE%E0%A4%AF%20%E0%A4%AE%E0%A5%87%E0%A4%82%20%E0%A4%9C%E0%A4%BE%E0%A4%A8%E0%A4%95%E0%A4%BE%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%87%E0%A4%B5%E0%A4%B2%20%E0%A4%B8%E0%A4%AE%E0%A4%BE%E0%A4%9A%E0%A4%BE%E0%A4%B0%20%E0%A4%AA%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%8B%E0%A4%82%20%E0%A4%95%E0%A5%87%20%E0%A4%9C%E0%A4%B0%E0%A4%BF%E0%A4%AF%E0%A5%87%20%E0%A4%B9%E0%A5%80%20%E0%A4%AA%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%AA%E0%A5%8D%E0%A4%A4%20%E0%A4%95%E0%A4%BF%E0%A4%AF%E0%A4%BE%20%E0%A4%9C%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%A5%E0%A4%BE%20%E0%A4%AA%E0%A4%B0%20%E0%A4%85%E0%A4%AD%E0%A5%80%20%E0%A4%B8%E0%A4%BE%E0%A4%B0%E0%A5%80%20%E0%A4%A6%E0%A5%81%E0%A4%A8%E0%A4%BF%E0%A4%AF%E0%A4%BE%20%E0%A4%87%E0%A4%82%E0%A4%9F%E0%A4%B0%E0%A4%A8%E0%A5%87%E0%A4%9F%20%E0%A4%95%E0%A5%87%20%E0%A4%9C%E0%A4%B0%E0%A4%BF%E0%A4%AF%E0%A5%87%20%E0%A4%86%E0%A4%B8%E0%A4%BE%E0%A4%A8%E0%A5%80%20%E0%A4%B8%E0%A5%87%20%E0%A4%B2%E0%A4%97%E0%A4%AD%E0%A4%97%20%E0%A4%B8%E0%A4%BE%E0%A4%B0%E0%A5%80%20%E0%A4%9C%E0%A4%BE%E0%A4%A8%E0%A4%95%E0%A4%BE%E0%A4%B0%E0%A5%80%20%E0%A4%AA%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%AA%E0%A5%8D%E0%A4%A4%20%E0%A4%95%E0%A4%B0%20%E0%A4%B8%E0%A4%95%E0%A4%A4%E0%A4%BE%20%E0%A4%B9%E0%A5%88&toemail=narayansingh469@gmail.com&toname=Narayan%20Singh
');
	$body             = preg_replace('/\\\\/','', $body); //Strip backslashes

	$mail->IsSMTP();                           // tell the class to use SMTP
	$mail->SMTPAuth   = true;                  // enable SMTP authentication
	$mail->Port       = 587;                    // set the SMTP server port
	$mail->Host       = "mail.e-online.in"; // SMTP server
	$mail->Username   = "info@e-online.in";     // SMTP server username
	$mail->Password   = "E-OnlineInfo";            // SMTP server password

	$mail->IsSendmail();  // tell the class to use Sendmail

	$mail->AddReplyTo("info@e-online.in","E-Online Information");

	$mail->From       = "info@e-online.in";
	$mail->FromName   = "E-Online Information";

	$to = "eonlineinformation@gmail.com";

	$mail->AddAddress($to);

	$mail->Subject  = "First PHPMailer Message";

	$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
	$mail->WordWrap   = 80; // set word wrap

	$mail->MsgHTML($body);

	$mail->IsHTML(true); // send as HTML

	$mail->Send();
	echo 'Message has been sent.';
} catch (phpmailerException $e) {
	echo $e->errorMessage();
}
?>