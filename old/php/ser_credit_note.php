<?php

require_once '../includes/db.php';

$mysqli->set_charset("utf8");

  $ser_ph_no =$_REQUEST['ser_ph_no'];
 $query= "select * from student_registeration where name LIKE '%$ser_ph_no%' or mobile LIKE '%$ser_ph_no%' ";

$result=$mysqli->query($query);
if(mysqli_num_rows($result) > 0){
while ($row=$result->fetch_assoc()) 
{
    $tbldata[] = $row;
    
    // $arr[] =array('status' => '1', 'message' => 'Exists!');
    // echo $json_response =json_encode($arr);

}

$data["tbldata"]=$tbldata;
$data["error"]="";
$data["success"]=true;


}
else
{
   	$data["error"]="Error!";
	$data["success"]=false;
	$data["msg"]=$data["error"];

}

	$myJSON = json_encode($data);
	echo $myJSON;	

mysqli_close($connect);



?>
