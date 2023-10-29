<?php 

require_once '../includes/db.php';


$receipt_no = $_REQUEST["receipt_no"];
$student_id = $_REQUEST["student_id"];


 $query="select * from college_fee where student_id='$student_id' and receipt_no='$receipt_no' order by id DESC ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {

    $tot_fee=0;

	while($row = $result->fetch_assoc()) {

        $tot_fee=$tot_fee+$row["total_fee"];

        $Particulars="".$row["student_name"]."(".$row["student_id"].") ".$row["sem_year"]." ".$row["sem_year_type"]." Fee ";


        $arr[] =array('status' => '1', 'Particulars' => $Particulars, 'created_date' => $row["created_date"],  'total_fee_c' => '0', 'total_fee_d' => $row["total_fee"],'total_fee_balence' => $tot_fee, 'receipt_no' => $row["receipt_no"], 'student_id' => $row["student_id"], 'student_name' => $row["student_name"]);
 

    }
    
    
    
    
     $query="select * from college_fee_instalment where student_id='$student_id' and receipt_no='$receipt_no' order by id DESC ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$tot_feec=0;
$tot_feeb=$tot_fee;

if($result->num_rows > 0) {


	while($row = $result->fetch_assoc()) {
	    
    $tot_feeb=bcsub($tot_feeb, $row["amount"]);
    
    
    $tot_feec=$tot_feec + $row["amount"];
    
     $arr[] =array('status' => '1', 'Particulars' => '', 'created_date' => $row["date"]." ".$row["time"],  'total_fee_c' => $row["amount"], 'total_fee_d' => '0','total_fee_balence' => $tot_feeb, 'receipt_no' => '', 'student_id' => '', 'student_name' => '');
    }
    
    
   
}
          $arr[] =array('status' => '1', 'Particulars' => 'Total', 'created_date' => '',  'total_fee_c' => $tot_feec, 'total_fee_d' => $tot_fee,'total_fee_balence' => $tot_feeb, 'receipt_no' => '', 'student_id' => '', 'student_name' => '');

# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'emp_id' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>