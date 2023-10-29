<?php 

require_once '../includes/db.php';

$EMP_id=$_REQUEST['uid'];

$query="select mobile, email, user_name, user_id, date, time, remarks, category, priority, receipt_no, admin_approved, admin_remarks,vendor_receipt_file,vendor_receipt_no,delivery_date from account_purchase_order as a   group by a.receipt_no order by a.id DESC ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {


	while($row = $result->fetch_assoc()) {
	    
	    $rq=$row["receipt_no"];
	    
	    $queryi="select  sum(total) as total, sum(quantity) as quantity from account_purchase_order_item   where receipt_no='$rq' ";
$resulti = $mysqli->query($queryi) or die($mysqli->error.__LINE__);
	    	while($rowi = $resulti->fetch_assoc()) {
	    	     $quantity=$rowi["quantity"];
	    	     $total=$rowi["total"];
	    	}
	    
        $arr[] =array('quantity'=> $quantity, 'total'=> $total, 'mobile'=> $row["mobile"], 'email'=> $row["email"], 'user_name'=> $row["user_name"], 'user_id'=> $row["user_id"], 'date'=> $row["date"], 'time'=> $row["time"], 'remarks'=> $row["remarks"], 'category'=> $row["category"], 'priority'=> $row["priority"], 'receipt_no'=> $row["receipt_no"], 'admin_approved'=> $row["admin_approved"],'vendor_receipt_file'=> $row["vendor_receipt_file"],'vendor_receipt_no'=> $row["vendor_receipt_no"],'delivery_date'=>$row["delivery_date"],'admin_remarks'=> $row["admin_remarks"]);

    }
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'emp_id' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>