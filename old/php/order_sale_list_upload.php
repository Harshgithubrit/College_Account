<?php

require_once '../includes/db.php';

/* Getting file name */

    $receipt_no=$_REQUEST['receipt_no'];
 
    $filename = $_FILES['file']['name'];
$oldfilename ="";
    $query1 = "select order_list_image from account_purchase_order where receipt_no='$receipt_no' ";
    $resulti =$mysqli->query($query1);
     	while($rowi = $resulti->fetch_assoc()) {
    $oldfilename = $rowi["order_list_image"];
     	}

/* Location */
$location = 'upload/';


function microseconds() {
    $mt = explode(' ', microtime());
    return ((int)$mt[1]) * 1000 + ((int)round($mt[0] * 1000));
}

$filename = microseconds().$filename;

//$filename = ''.$filename.'';

if($oldfilename==="" || $oldfilename==="null" || $oldfilename=== null)
{
 $newfilename=$filename;
}else{
  $newfilename= $oldfilename['order_list_image'].','.$filename;
}

$response = array();
/* Upload file */
if(move_uploaded_file($_FILES['file']['tmp_name'],$location.$filename)){
   $response['name'] = $newfilename; 
   $query="update account_purchase_order set order_list_image ='$newfilename' where receipt_no='$receipt_no' ";
   $result1 = $mysqli->query($query) or die($mysqli->error.__LINE__);
} else{
   $response['name'] = "File not uploaded.";
}
echo json_encode($response);
exit;

?>