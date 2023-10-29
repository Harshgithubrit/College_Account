<?php 

require_once '../includes/db.php';



$student_id = $_REQUEST["student_id"];
$sem_year = $_REQUEST["sem_year"];
$batch_session = $_REQUEST["batch_session"];



$mysqli->set_charset("utf8");

 $query="UPDATE `student_course_applied` SET `fee_status` = 'Not Paid' WHERE student_id='$student_id' and sem_year='$sem_year' and batch_session ='$batch_session' ";
    $result2 = $mysqli->query($query) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
          $arr[] =array('status' => '1', 'message' => 'Status Update Successfully!');
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error!');
    }

  
echo $json_response =json_encode($arr);
    
