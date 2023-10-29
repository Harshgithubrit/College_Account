<?php 

require_once '../includes/db.php';


    $Query =  $_REQUEST["Query"];

$result = $mysqli->query($Query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {


  $arr[] = array('id' => "0",
                 'subject_id' => "All",
                 'subject_name' => "All",
                 'created_by_id' => "All",
                 'created_date_time' => "2020-11-10 23:47:21",
                 'college_id' => "All");

	while($row = $result->fetch_assoc()) {
        $arr[] = $row;	

    }
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'emp_id' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>