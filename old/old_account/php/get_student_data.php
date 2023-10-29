<?php 

require_once '../includes/db.php';


$student_id = $_REQUEST["uid"];


 $query="select * from college_fee where student_id='$student_id' order by id DESC ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {

    $tot_fee=0;

	while($row = $result->fetch_assoc()) {

        $tot_fee=$tot_fee+$row["total_fee"];

        $Particulars="".$row["sem_year"]." ".$row["sem_year_type"]." Fee ".$row["student_name"]."(".$row["student_id"].")";


        $arr[] =array('status' => '1', 'Particulars' => $Particulars, 'created_date' => $row["created_date"],  'total_fee_c' => $row["total_fee"], 'total_fee_d' => '0','total_fee_balence' => $tot_fee, 'receipt_no' => $row["receipt_no"], 'student_id' => $row["student_id"], 'student_name' => $row["student_name"]);
 

    }

    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'emp_id' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>