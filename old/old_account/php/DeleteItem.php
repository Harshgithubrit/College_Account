<?php 

require_once '../includes/db.php';


$query = $_REQUEST["query"];


$mysqli->set_charset("utf8");


    $result2 = $mysqli->query($query) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
          $arr[] =array('status' => '1', 'message' => 'Deleted Successfully!');
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error!');
    }

  
echo $json_response =json_encode($arr);
    
