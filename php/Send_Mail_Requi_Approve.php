<?php

			
require_once '../includes/db.php';

$mysqli->set_charset("utf8");

$receipt_no=$_REQUEST['receipt_no'];

require '../PhpMail/mail/PHPMailer_5.2.0/class.phpmailer.php';

$query ="select  *  from account_requisition where receipt_no = '$receipt_no' ";

$result=$mysqli->query($query);
while ($row=$result->fetch_assoc()) 
{
	$title="Requisition";
	$description=$row['remarks'];
	$pcreate_at= $row["create_date"];
	$user_name=$row['user_name'];
	$category=$row['category'];
	$toemail=$row['email'];

	$admin_approved=$row['admin_approved'];
	$admin_remarks=$row['admin_remarks'];
	$toemail=$row['email'];
}


date_default_timezone_set('Asia/Kolkata');
$date = date("Y-m-d");
$time = date("d-m-Y h:i:sa");





try {
	$mail = new PHPMailer(true); //New instance, with exceptions enabled
    $html_file='http://mjge.in/account/template/requisitionapproved.php?receipt_no='.$receipt_no;
	$body             = file_get_contents($html_file);
	$body             = preg_replace('/\\\\/','', $body); //Strip backslashes

	$mail->IsSMTP();                           // tell the class to use SMTP
	$mail->SMTPAuth   = true;                  // enable SMTP authentication
	$mail->Port       = 587;                    // set the SMTP server port
	$mail->Host       = "mail.mjge.in"; // SMTP server
	$mail->Username   = "technical@mjge.in";     // SMTP server username
	$mail->Password   = "t.rW2Dpas=J&";            // SMTP server password

	$mail->IsSendmail();  // tell the class to use Sendmail

	$mail->AddReplyTo("technical@mjge.in","Requisition ".$user_name);

	$mail->From       = "technical@mjge.in";
	$mail->FromName   = "Requisition ".$user_name;

  
// $query ="select email,emp_id,firstname,middlename,lastname from mj_staff where ctype ='Admin' ";

// $conut=0;

// $result=$mysqli->query($query);
// while ($row=$result->fetch_assoc()) 
// {
    
//     $conut++;
// 	$user_id=$row['emp_id'];
// 	$name1=$row['firstname'].' '.$row['middlename'].' '.$row['lastname'];
// 	$email=$row['email'];
//     $to = $email;
	
// }



$query ="SELECT email FROM `mj_staff` where ctype='Account' ";

$result=$mysqli->query($query);
while ($row=$result->fetch_assoc()) 
{
	$Accountemail=$row['email'];
	$Account_firstname=$row['firstname'];
	
	$mail->AddAddress($Accountemail, $Account_firstname);
}


$mail->AddAddress($toemail, $name1);


	$mail->Subject  = "Requisition ".$admin_approved;

	$mail->AltBody    = "<b>Requisition $admin_approved :<b><br><br>
	<b>". $title."</b> </br>
	<p>".$description."</p> <br>
	<p>".$category."</p> <br>
	<small>".$create_at."</small> <br>"; // optional, comment out and test

	$MainBody   = "<b>Requisition $admin_approved: $admin_remarks<b><br><br>
	<b>For:</b> </br>
	<p>".$description."</p> <br>
	<p>".$description."</p> <br>
	<small>".$create_at."</small> <br>"; // optional, comment out and test
	
	$mail->Body = preg_replace('/\[\]/','',$MainBody);
	

	
	$mail->WordWrap   = 80; // set word wrap

	$mail->MsgHTML($body);

	$mail->IsHTML(true); // send as HTML

	$mail->Send();

	echo 'Mail has been sent to '.$toemail.' and '.$Accountemail;
} catch (phpmailerException $e) {
	echo $e->errorMessage();
}





mysqli_close($connect);



?>
