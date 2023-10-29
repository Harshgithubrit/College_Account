<?php 

require_once '../includes/db.php';

$total='';
$unpaid='';
$paid='';
$fullpaid='';
$halfpaid='';


$query="select COUNT(*) As Total,
(SELECT count(*) from student_course_applied  WHERE `fee_status`='Not Paid' ) As unpaid,
(SELECT count(*) from student_course_applied  WHERE `fee_status`='Full Paid' ) As fullpaid,
(SELECT count(*) from student_course_applied  WHERE `fee_status`='Half Paid' ) As halfpaid
from student_course_applied ";

$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();

if($result->num_rows > 0) {

	while($row = $result->fetch_assoc()) {

        
    $total = $row["Total"];
        
      
    $unpaid =  $row["unpaid"];
    
    
    $fullpaid = $row["fullpaid"];
    
    
     $halfpaid =  $row["halfpaid"];
    
    $paid=$row["fullpaid"]+$row["halfpaid"];
    
	}
    
  

   $arr[] =array('status' => '1','total' => "$total", 'unpaid' => "$unpaid", 'fullpaid' => "$fullpaid", 'halfpaid' => "$halfpaid", 'paid' => "$paid");
    
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'datavalue' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>