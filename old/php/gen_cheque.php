<?php 

require_once '../includes/db.php';

echo $Query = $_REQUEST["query"];
echo $number_of_cheques = $_REQUEST["method"];

$arr=array(); 

for($i=1; $i <= $number_of_cheques; $i++){

$result = $mysqli->query($Query) or die($mysqli->error.__LINE__);
if(mysqli_affected_rows($mysqli) > 0) {

  $arr[] =array('status' => '1', 'message' => 'Cheques Generated Successfully!', 'number' => $i);

  echo $json_response = json_encode($arr);
}
    
else{
$arr[] =array('status' => '0', 'emp_id' => 'no data found!');

echo $json_response =json_encode($arr);

}


}



?>