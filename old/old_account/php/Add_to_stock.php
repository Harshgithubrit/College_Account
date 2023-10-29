<?php 

require_once '../includes/db.php';


$Dquantity = $_REQUEST["Dquantity"];
$Dcomments = $_REQUEST["Dcomments"];
$item_id = $_REQUEST["item_id"];
$item_rep_id = $_REQUEST["item_rep_id"];
$item_name=$_REQUEST["item_name"];


$mysqli->set_charset("utf8");
  $mysqli->autocommit(FALSE);

 
    $query1="select stock_value from office_item_name where item_name='$item_name' ";
    $result1 = $mysqli->query($query1) or die($mysqli->error.__LINE__);

    if($result1->num_rows > 0) {
        while($row = $result1->fetch_assoc()) {
            $stock_value=$row["stock_value"];
       }

       $New_stock_value=$stock_value+$Dquantity;

    $query2=" UPDATE `office_item_name` set `stock_value`='$New_stock_value' where item_name='$item_name' ";
    $result2 = $mysqli->query($query2) or die($mysqli->error.__LINE__);
    if(mysqli_affected_rows($mysqli)>0){ 


          $query3="update account_purchase_order_item set delivered_quantity ='$Dquantity',confirm_store='Yes', comments='$Dcomments' where id=$item_id and  receipt_no='$item_rep_id' ";
          $result3 = $mysqli->query($query3) or die($mysqli->error.__LINE__);
          if(mysqli_affected_rows($mysqli)>0){ 

            $arr[] =array('status' => '1', 'message' => 'succesfully added!');
        echo $json_response =json_encode($arr);
        $mysqli->commit();
        
          }else{
            $arr[] =array('status' => '0', 'message' => 'po fail ');
            echo $json_response =json_encode($arr);
            $mysqli->rollback(); 
        }

    }else{
        $arr[] =array('status' => '0', 'message' => 'item  not update!');
        echo $json_response =json_encode($arr);
        $mysqli->rollback(); 
    }






    }
    else{
        $arr[] =array('status' => '0', 'message' => 'item  not exist!');
        echo $json_response =json_encode($arr);
    }


    $mysqli->autocommit(TRUE);
?>