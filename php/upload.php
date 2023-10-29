<?php

require_once '../includes/db.php';

/* Getting file name */

    $receipt_no=$_REQUEST['receipt_no'];
 
    $filename = $_FILES['file']['name'];

    $query1 = "select vendor_receipt_file from account_purchase_order where receipt_no='$receipt_no' ";
    $oldfilename =$mysqli->query($query1);
    $oldfilename = $oldfilename->fetch_assoc();

/* Location */
$location = 'upload/';


function microseconds() {
    $mt = explode(' ', microtime());
    return ((int)$mt[1]) * 1000 + ((int)round($mt[0] * 1000));
}

$filename = microseconds().$filename;

//$filename = ''.$filename.'';

if($oldfilename=="")
{
 $newfilename=$filename;
}else{
  $newfilename= $oldfilename['vendor_receipt_file'].','.$filename;
}

$response = array();
/* Upload file */
if(move_uploaded_file($_FILES['file']['tmp_name'],$location.$filename)){
   $response['name'] = $filename; 
   $query="update account_purchase_order set vendor_receipt_file ='$newfilename' where receipt_no='$receipt_no' ";
   $result1 = $mysqli->query($query) or die($mysqli->error.__LINE__);
} else{
   $response['name'] = "File not uploaded.";
}
echo json_encode($response);
exit;

?>