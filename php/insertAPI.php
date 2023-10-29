<?php 

require_once '../includes/db.php';
if(isset($_GET['user_id'])){
   
    $emp_id = $_REQUEST["emp_id"];
$user_id = $_REQUEST["user_id"];
$student_name = $_REQUEST["student_name"];

$receipt_no = $_REQUEST["receipt_no"];

$Tuition=$_REQUEST["Tuition"];
$Caution=$_REQUEST["Caution"];
$Magazine=$_REQUEST["Magazine"];
$Sports=$_REQUEST["Sports"];
$Library=$_REQUEST["Library"];
$Prospectus=$_REQUEST["Prospectus"];
$Others=$_REQUEST["Others"];
$Forwarding=$_REQUEST["Forwarding"];
$Total=$_REQUEST["total"];

$university_fee=$_REQUEST["university_fee"];

$college_id=$_REQUEST["college_id"];
$receipt_no=$_REQUEST["receipt_no"];
$cheque=$_REQUEST["cheque"];
$cheque_date=$_REQUEST["cheque_date"];
$fee_date=$_REQUEST["fee_date"];


$drawn_on=$_REQUEST["drawn_on"];

$sem_year=$_REQUEST["sem_year"];
$sem_year_type=$_REQUEST["sem_year_type"];

$fee_status=$_REQUEST["fee_status"];

$hostel =$_REQUEST["hostel"];
$session_data=$_REQUEST["session_data"];
 $fee_status;
    

$mysqli->set_charset("utf8");

$query1="select receipt_no from college_fee where receipt_no='$receipt_no' ";

  $mysqli->autocommit(FALSE);

$result1 = $mysqli->query($query1) or die($mysqli->error.__LINE__);
if($result1->num_rows > 0) {

    $arr[] =array('status' => '0', 'message' => 'receipt number already exist!');
    echo $json_response =json_encode($arr);

}else{
   $Squery=" select * from student_course_applied where fee_status = 'Full Paid' and student_id= '$user_id' and sem_year  =  '$sem_year' and batch_session = '$sem_year_type'  ";
    $result1 = $mysqli->query($Squery) or die($mysqli->error.__LINE__);
if($result1->num_rows > 0) {

    $arr[] =array('status' => '0', 'message' => 'Student Fee already full paid!');
    echo $json_response =json_encode($arr);

}else{
    
  $queryAppq=" UPDATE `student_course_applied` set  `fee_status`='$fee_status', `receipt_no`='$receipt_no' where `student_id`='$user_id' and sem_year  =  '$sem_year' and batch_session = '$sem_year_type' ";
  
    $result2q = $mysqli->query($queryAppq) or die($mysqli->error.__LINE__);
    $result2q = $mysqli->affected_rows;
    
    if(mysqli_affected_rows($mysqli)>0){ 

$queryApp=" INSERT INTO `college_fee` (`student_id`, `student_name`, `receipt_no`, `date`, `time`, `college_id`, `sem_year`, `sem_year_type`, `user_id`, `tuition_fee`, `caution_money`, `college_magazine_fee`, `university_fee`, `sports_fee`, `library_fee`, `prospectus_fee`, `others`, `forwarding_fee`, `total_fee`, `cheque_dd_no`, `cheque_dd_date`, `created_status`, `created_date`,`hostel`,`session_date`) VALUES ('$user_id','$student_name','$receipt_no','$fee_date',now(),'$college_id','$sem_year','$sem_year_type','$emp_id','$Tuition','$Caution','$Magazine','$university_fee','$Sports','$Library','$Prospectus','$Others','$Forwarding','$Total','$cheque','$cheque_date','Active',now(),'$hostel','$session_data') ";
   
     $result2 = $mysqli->query($queryApp) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){

        
    $new_receipt_no=$receipt_no+1;
    $queryUpdate=" update `master_data` set gen_emp_id= '$new_receipt_no' where id=7 ";
    $result3 = $mysqli->query($queryUpdate) or die($mysqli->error.__LINE__);




$mysqli->commit();

          $arr[] =array('status' => '1', 'message' => 'Inserted Successfully!');
    }else{
        $arr[] =array('status' => '2', 'message' => 'Server error, please try after some time!');
        
        $mysqli->rollback(); 
    }
        
        
    }
    else{
        $arr[] =array('status' => '2', 'message' => 'Student not applied for '.$sem_year.' '.$sem_year_type); $mysqli->rollback(); 
    }

$mysqli->autocommit(TRUE);
  
echo $json_response =json_encode($arr);
    
}
}

}





?>