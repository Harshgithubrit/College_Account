<?php 

require_once '../includes/db.php';

if(isset($_GET['receipt_no'])){


$receipt_no = $_REQUEST["receipt_no"];


$mysqli->set_charset("utf8");

$query1="select * from account_quotation where receipt_no='$receipt_no' ";

  $mysqli->autocommit(FALSE);

$result1 = $mysqli->query($query1) or die($mysqli->error.__LINE__);
if($result1->num_rows > 0) {

    $arr[] =array('status' => '0', 'message' => 'Quotation ID alredy exist!');
    echo $json_response =json_encode($arr);

}else{
    


    
    
    
    $queryApp="INSERT INTO account_quotation (receipt_no,user_id,user_name,email,mobile,department,category,priority,remarks,status,create_date,date,time) (SELECT receipt_no,user_id,user_name,email,mobile,department,category,priority,remarks,status,create_date,date,time from account_requisition WHERE receipt_no='$receipt_no' )  ";
    $result2 = $mysqli->query($queryApp) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
        
       
        
         $queryAppi="INSERT INTO `account_quotation_item` (receipt_no,item,item_description,quantity,price,total,item_code,user_id,status,date,time) ( SELECT  receipt_no,item,item_description,quantity,price,total,item_code,user_id,status , date, time FROM `account_requisition_item`  where receipt_no='$receipt_no' ) ";
    $resulti = $mysqli->query($queryAppi) or die($mysqli->error.__LINE__);
    $resulti = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
        
        
          $mysqli->commit();
          $arr[] =array('status' => '1', 'message' => 'Quotation Inserted Successfully!');
        
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error1!');
        
        $mysqli->rollback(); 
    }
        
        
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error2!');
        
        $mysqli->rollback(); 
    }

    
}

}else{
     $arr[] =array('status' => '0', 'message' => 'Receipt no not found!');
    echo $json_response =json_encode($arr);
}





?>