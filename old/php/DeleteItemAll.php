<?php 

require_once '../includes/db.php';


$user_id = $_REQUEST["user_id"];

$receipt_no = $_REQUEST["receipt_no"];



$mysqli->set_charset("utf8");
  $mysqli->autocommit(FALSE);

 $query = " delete from `account_requisition_item` where user_id='$user_id' and receipt_no='$receipt_no' ";
$query1 = " delete from `account_requisition` where user_id='$user_id' and receipt_no='$receipt_no' ";
         

    $result2 = $mysqli->query($query) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
        
            $result21 = $mysqli->query($query1) or die($mysqli->error.__LINE__);
    $result21 = $mysqli->affected_rows;
        
    if(mysqli_affected_rows($mysqli)>0){
        
        $mysqli->commit();
        
          $arr[] =array('status' => '1', 'message' => 'Deleted Successfully!');
    }else{
        $mysqli->rollback(); 
        $arr[] =array('status' => '2', 'message' => 'Error1!');
    }
    
    }else{
        
    $mysqli->rollback(); 
        $arr[] =array('status' => '2', 'message' => 'Error2!');
    }
  
  $mysqli->autocommit(TRUE);

echo $json_response =json_encode($arr);
    
