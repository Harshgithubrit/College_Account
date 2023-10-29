<?php 

require_once '../includes/db.php';

$query = $_REQUEST["search_query"];

//$query="select * from mj_student where admission_status='1' order by id DESC ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
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