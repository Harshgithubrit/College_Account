<?php


require_once '../includes/db.php';

$query=$_REQUEST["query"];

$mysqli->set_charset("utf8");

$result1 = $mysqli->multi_query($query) or die($mysqli->error.__LINE__);
if(mysqli_affected_rows($mysqli)>0) {

    $arr[] =array('status' => '0', 'message' => 'Successfully Inserted!');

}else{
    
    $arr[] =array('status' => '1', 'message' => 'Error!');

}

echo $json_response =json_encode($arr);


?>