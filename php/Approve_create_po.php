<?php 

require_once '../includes/db.php';

if(isset($_GET['receipt_no'])){


$receipt_no = $_REQUEST["receipt_no"];
//echo $hold_status = $_REQUEST["hold_status"];
echo $user_name = $_REQUEST["user_name"];

$remarks_status = $_REQUEST["remarks_status"];
//print_r($remarks_status);
$approve_remarks = $_REQUEST["approve_remarks"];
//print_r($approve_remarks);



$mysqli->set_charset("utf8");

$query1="select * from account_purchase_order where receipt_no='$receipt_no' ";

  $mysqli->autocommit(FALSE);

$result1 = $mysqli->query($query1) or die($mysqli->error.__LINE__);
if($result1->num_rows > 0) {

    $arr[] =array('status' => '0', 'message' => 'PO ID alredy exist!');
    echo $json_response =json_encode($arr);

}else{
    $hold_statusquey = "select hold_status from account_requisition where receipt_no='$receipt_no'";
    $hold_data = $mysqli->query($hold_statusquey);
  
    while($row = $hold_data->fetch_assoc()){
      $hold_status =$row['hold_status'];
    }

    
if($hold_status=='3.5' && $user_name=='Admin'){
echo "ok";


$queryApp="INSERT INTO account_purchase_order (receipt_no,user_id,user_name,email,mobile,department,category,priority,remarks,status,create_date,date,time,vendor_id,vendor_name) (SELECT receipt_no,user_id,user_name,email,mobile,department,category,priority,remarks,status,create_date,date,time,vendor_id,vendor_name  from account_quotation WHERE receipt_no='$receipt_no' )  ";
$result2 = $mysqli->query($queryApp) or die($mysqli->error.__LINE__);
$result2 = $mysqli->affected_rows;

if(mysqli_affected_rows($mysqli)>0){
    
   
    
$queryAppi="INSERT INTO `account_purchase_order_item` (receipt_no,item,item_description,quantity,price,total,item_code,user_id,status,date,time) ( SELECT  receipt_no,item,item_description,quantity,price,total,item_code,user_id,status , date, time FROM `account_quotation_item`  where receipt_no='$receipt_no' ) ";
$resulti = $mysqli->query($queryAppi) or die($mysqli->error.__LINE__);
$resulti = $mysqli->affected_rows;

if(mysqli_affected_rows($mysqli)>0){

    $queryAppi="update account_quotation set admin_remarks='$approve_remarks', admin_approved='$remarks_status' where receipt_no='$receipt_no' ";
    $resulti = $mysqli->query($queryAppi) or die($mysqli->error.__LINE__);
    $resulti = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
   
          $mysqli->commit();
      $arr[] =array('status' => '1', 'message' => 'Quotation Inserted Successfully!');
      echo $json_response =json_encode($arr);
   
    }else{

        $arr[] =array('status' => '2', 'message' => 'Not Approved!');
        echo $json_response =json_encode($arr);
        $mysqli->rollback(); 

    }
    
    
    
      
    
}else{
    $arr[] =array('status' => '2', 'message' => 'Error1!');
    echo $json_response =json_encode($arr);
    $mysqli->rollback(); 
}
    
    
}else{
    $arr[] =array('status' => '2', 'message' => 'Error2!');
    echo $json_response =json_encode($arr);
    $mysqli->rollback(); 
}
}
else if($hold_status=='5' && $user_name=='Director Sir'){
    echo "sir";

    $queryApp="INSERT INTO account_purchase_order (receipt_no,user_id,user_name,email,mobile,department,category,priority,remarks,status,create_date,date,time,vendor_id,vendor_name) (SELECT receipt_no,user_id,user_name,email,mobile,department,category,priority,remarks,status,create_date,date,time,vendor_id,vendor_name  from account_quotation WHERE receipt_no='$receipt_no' )  ";
    $result2 = $mysqli->query($queryApp) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
        
       
        
    $queryAppi="INSERT INTO `account_purchase_order_item` (receipt_no,item,item_description,quantity,price,total,item_code,user_id,status,date,time) ( SELECT  receipt_no,item,item_description,quantity,price,total,item_code,user_id,status , date, time FROM `account_quotation_item`  where receipt_no='$receipt_no' ) ";
    $resulti = $mysqli->query($queryAppi) or die($mysqli->error.__LINE__);
    $resulti = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){

        $queryAppi="update account_quotation set admin_remarks='$approve_remarks', admin_approved='$remarks_status' where receipt_no='$receipt_no' ";
        $resulti = $mysqli->query($queryAppi) or die($mysqli->error.__LINE__);
        $resulti = $mysqli->affected_rows;
    
        if(mysqli_affected_rows($mysqli)>0){
       
              $mysqli->commit();
          $arr[] =array('status' => '1', 'message' => 'Quotation Inserted Successfully!');
          echo $json_response =json_encode($arr);
       
        }else{

            $arr[] =array('status' => '2', 'message' => 'Not Approved!');
            echo $json_response =json_encode($arr);
            $mysqli->rollback(); 

        }
        
        
        
          
        
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error1!');
        echo $json_response =json_encode($arr);
        $mysqli->rollback(); 
    }
        
        
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error2!');
        echo $json_response =json_encode($arr);
        $mysqli->rollback(); 
    }

    
}
}
}else{
     $arr[] =array('status' => '0', 'message' => 'Receipt no not found!');
    echo $json_response =json_encode($arr);
}


$mysqli->autocommit(TRUE);


?>