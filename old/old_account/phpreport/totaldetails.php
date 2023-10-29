<?php 

require_once '../includes/db.php';


$query="select admin_approved from account_requisition ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);


$arr = array();

$total_records= 0;
$pendingcount= 0;
$rejectcount= 0;
$approvedcount= 0;

if($result->num_rows > 0) {


	while($row = $result->fetch_assoc()) {

    $total_records++;

    
    if($row["admin_approved"] == "Approved"){
        $approvedcount++;
        }
        
    if($row["admin_approved"] == "Pending"){
        $pendingcount++;
        }
        
    if($row["admin_approved"] == "Rejected"){
        $rejectcount++;
    }
    
   }

   $arr[] =array('status' => '1','totalrecords' => "$total_records", 'approvedcount'=> "$approvedcount",'pendingcount'=> "$pendingcount", 'rejectcount'=> "$rejectcount");
    
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'datavalue' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>