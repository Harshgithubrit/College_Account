<?php 

require_once '../includes/db.php';

$total='';

$query="SELECT (select SUM(total_fee) from college_fee )-(select sum(amount) from college_fee_instalment) as due_amount";

$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();

if($result->num_rows > 0) {

	while($row = $result->fetch_assoc()) {

        
    $total = $row["due_amount"];
        
 
	}
    
  

   $arr[] =array('status' => '1','total' => "$total");
    
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'datavalue' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>