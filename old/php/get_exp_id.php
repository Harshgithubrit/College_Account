<?php 

require_once '../includes/db.php';


$query="select gen_emp_id from master_data where id=12 ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {


	while($row = $result->fetch_assoc()) {
        $arr[] = $row;	

    }
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'gen_emp_id' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>