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



$mysqli->set_charset("utf8");
  $mysqli->autocommit(FALSE);

$query1="select receipt_no from college_fee where receipt_no='$receipt_no' ";

$result1 = $mysqli->query($query1) or die($mysqli->error.__LINE__);
if($result1->num_rows > 0) {

  $queryAppq=" UPDATE `student_course_applied` set  `fee_status`='$fee_status'  where  `student_id`='$user_id'  ";
    $result2q = $mysqli->query($queryAppq) or die($mysqli->error.__LINE__);
    $result2q = $mysqli->affected_rows;

    // if(mysqli_affected_rows($mysqli)>0){  
        
         $queryApp=" UPDATE `college_fee` set `student_id`='$user_id' , `student_name`='$student_name', `receipt_no`='$receipt_no', `date`=now(), `time`=now(), `college_id`='$college_id', `sem_year`='$sem_year', `sem_year_type`='$sem_year_type', `user_id`='$emp_id', `tuition_fee`='$Tuition', `caution_money`='$Caution', `college_magazine_fee`='$Magazine', `university_fee`='$university_fee', `sports_fee`='$Sports', `library_fee`='$Library', `prospectus_fee`='$Prospectus', `others`='$Others', `forwarding_fee`='$Forwarding', `total_fee`='$Total', `cheque_dd_no`='$cheque', `cheque_dd_date`='$cheque_date', `created_status`='Active', `created_date`=now(), `hostel` ='$hostel' where receipt_no='$receipt_no', ";
    $result2 = $mysqli->query($queryApp) or die($mysqli->error.__LINE__);
    $result2 = $mysqli->affected_rows;

    if(mysqli_affected_rows($mysqli)>0){
        
          $arr[] =array('status' => '1', 'message' => 'Updated Successfully!');$mysqli->commit();
    }else{
        $arr[] =array('status' => '2', 'message' => 'Error!'); $mysqli->rollback(); 
    }
    
    // }else{
    //     $arr[] =array('status' => '3', 'message' => 'Error!'); $mysqli->rollback(); 
    // }
  
   

  
echo $json_response =json_encode($arr);


}else{


      $arr[] =array('status' => '0', 'message' => 'receipt no not exist!');
    echo $json_response =json_encode($arr);

}
$mysqli->autocommit(TRUE);
}





?>