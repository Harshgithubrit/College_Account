<?php 

require_once '../includes/db.php';

$EMP_id=$_REQUEST['uid'];

//  $query="select * from mj_staff as s join student_course_applied as c on s.emp_id = c.student_id where emp_id = '$EMP_id' and  c.pursuing_passed='Pursuing' ";
$query= "select * from mj_staff where emp_id='$EMP_id' ";
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