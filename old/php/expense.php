<?php 

require_once '../includes/db.php';

if(isset($_GET['user_id'])){


$user_id = $_REQUEST["user_id"];
$user_full_name = $_REQUEST["user_full_name"];

$requisition_date = $_REQUEST["requisition_date"];

$description=$_REQUEST["description"];
$item_name=$_REQUEST["item_name"];
$item_description=$_REQUEST["item_description"];
$quantity=$_REQUEST["quantity"];
$price_amount=$_REQUEST["price_amount"];

$category=$_REQUEST["category"];
$tot=$_REQUEST["tot"];

$priority=$_REQUEST["priority"];

$department=$_REQUEST["department"];

$email=$_REQUEST["email"];
$vendor_id=$_REQUEST["vendor_gen_id"];
$vendor_name=$_REQUEST["vendor_gen_name"];

$phone=$_REQUEST["phone"];
$receipt_no=$_REQUEST["receipt_no"];
$debit = $_REQUEST["debit"];
$credit = $_REQUEST["credit"];
$total_amount = $_REQUEST["total_amount"];
$bill_desk = $_REQUEST["bill_desk"];
$on_account_of = $_REQUEST["on_account_of"];
$against_bill = $_REQUEST["against_bill"];
$paid_to = $_REQUEST["paid_to"];



if ($mysqli -> connect_errno) {
   
    $arr[] =array('status' => '2', 'message' => "Failed to connect to MySQL: " . $mysqli -> connect_error);
    exit();
  }


  $mysqli->autocommit(FALSE);

$mysqli->set_charset("utf8");

$query1="select receipt_no from account_expenses where receipt_no='$receipt_no' ";

$result1 = $mysqli->query($query1) or die($mysqli->error.__LINE__);
if($result1->num_rows > 0) {

//    $arr[] =array('status' => '0', 'message' => 'Item Name alredy exist!');
//    echo $json_response =json_encode($arr);

$queryUpdater=" update `account_expenses` set `user_name`='$user_full_name', `create_date`='$requisition_date', `email`='$email', `mobile`='$phone',  `remarks`='$description', `category`='$category', `priority`='$priority' where receipt_no='$receipt_no' ";
 $mysqli->query($queryUpdater) or die($mysqli->error.__LINE__);

}else{

    $queryApp1=" INSERT INTO `account_expenses` 
    (`receipt_no`, `user_id`, `user_name`, `create_date`, `email`, `mobile`,  `remarks`,`category`,`priority`,`status`,`date`,`time`,`department`,`debit`, `credit`, `paid_to`, `on_account_of`, `against_bill`, `bill_desk`, `amount_in_fig`) 
    VALUES 
    ('$receipt_no','$user_id','$user_full_name','$requisition_date','$email','$phone','$description','$category','$priority','Active',now(),now(),'$department','$debit','$credit','$paid_to','$on_account_of','$against_bill','$bill_desk','$total_amount') ";
    $result21 = $mysqli->query($queryApp1) or die($mysqli->error.__LINE__);
    
    
              $new_receipt_no=$receipt_no+1;
              $queryUpdate=" update `master_data` set gen_emp_id= '$new_receipt_no' where id=12 ";
              $result3 = $mysqli->query($queryUpdate) or die($mysqli->error.__LINE__);
        
    
    
    }
    
    
    
    $queryApp=" INSERT INTO `account_expenses_item` 
    (`receipt_no`, `user_id`, `item`, `item_description`, `quantity`, `price`, `total`,`status`,`date`,`time`,`debit`, `credit`, `paid_to`, `on_account_of`, `against_bill`, `bill_desk`, `amount_in_fig`) 
    VALUES 
    ('$receipt_no','$user_id','$item_name','$item_description','$quantity','$price_amount','$tot','Active',now(),now(),'$debit','$credit','$paid_to','$on_account_of','$against_bill','$bill_desk','$total_amount') ";
    $result2 = $mysqli->query($queryApp) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;
    

if(mysqli_affected_rows($mysqli)>0){

      $arr[] =array('status' => '1', 'message' => 'Inserted Successfully!');

      $mysqli->commit();
     

}else{
    $mysqli->rollback(); 
    $arr[] =array('status' => '2', 'message' => 'Error!');
}

$mysqli->autocommit(TRUE);

echo $json_response =json_encode($arr);

}




?>