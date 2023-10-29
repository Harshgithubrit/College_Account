<?php
/**
* Simple example script using PHPMailer with exceptions enabled
* @package phpmailer
* @version $Id$
*/



$email=$_POST['email'];
$create_at=$_POST['create_at'];
$user_id=$_POST['user_id'];
$user_name=$_POST['user_name'];
$comment=$_POST['comment'];

$p_id=$_POST['p_id'];
$tocom=$_POST['tocomm'];
$toemail=$_POST['toemail'];
$toname=$_POST['toname'];
	

require '../class.phpmailer.php';

try {
	$mail = new PHPMailer(true); //New instance, with exceptions enabled

	$body             = file_get_contents('http://e-online.in/article.php?article=$p_id');
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

	$to = $email;

	$mail->AddAddress($to);

	$mail->Subject  = "E-Online Information comment ".$comment;

	$mail->AltBody    = $user_name."(".$user_id.") ".$create_at." <br>
	.$comment.
	<br>reply: <br> <b>".$toname. "</b> <br> ".$tocom." <br>Follow link: http://e-online.in/article.php?article=$p_id " ; // optional, comment out and test
	
	$mail->WordWrap   = 80; // set word wrap

	$mail->MsgHTML($body);

	$mail->IsHTML(true); // send as HTML

	$mail->Send();
	echo 'Message has been sent.';
} catch (phpmailerException $e) {
	echo $e->errorMessage();
}
?>