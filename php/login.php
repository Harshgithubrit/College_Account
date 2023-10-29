<?php
require_once '../includes/db.php';

 $user_id =  $_REQUEST["user_id"];
 $password =  $_REQUEST["password"];

$query="select * from mj_staff where emp_id= '$user_id' and password= '$password' ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {



$ctype = $row["ctype"];

//   if($ctype == "Admin" || $ctype == "Account" || $ctype == "Staff"){
          if($ctype == "Admin" || $ctype == "Account"|| $ctype == "Manager" ){
       
       		session_start();
$_SESSION['loggedIn'] = "true";
$_SESSION['user_id'] = $user_id;
$_SESSION['firstname'] = $row["firstname"];
$_SESSION['lastname'] = $row["lastname"];
$_SESSION['middlename'] = $row["middlename"];
$_SESSION['photo'] = $row["photo"];
$_SESSION['live_status'] = $row["live_status"];
$_SESSION['admin_role'] = $row["admin_role"];
$_SESSION['designation'] = $row["designation"];
$_SESSION['ctype'] = $row["ctype"];
$_SESSION['staff_type'] = $row["staff_type"];
$_SESSION['college'] = $row["college"];
$_SESSION['email'] = $row["email"];
$_SESSION['mobile'] = $row["mobile"];
$_SESSION['courtesy'] = $row["courtesy"];

        # JSON-encode the response
$DATA_SESSION = array("designation"=> $_SESSION['designation'], "staff_type"=> $_SESSION['staff_type'], "status" => '1', "ctype"=> $_SESSION['ctype'] , "loggedIn"=>$_SESSION['loggedIn'], "user_id"=>$_SESSION['user_id'], "firstname"=>$_SESSION['firstname'],  "lastname"=>$_SESSION['lastname'],  "photo"=>$_SESSION['photo'],  "live_status"=>$_SESSION['live_status'], "middlename"=>$_SESSION['middlename'], "admin_role"=>$_SESSION['admin_role']);
echo json_encode($DATA_SESSION);
    }else{
        $DATA_SESSION = array("status" => '0', "message"=>"Only Admin,Manager and Account profile can login!");
echo json_encode($DATA_SESSION);
    }
    

    }
    
    
 



}else{
$DATA_SESSION = array("status" => '0', "message"=>"wrong user id or password, Please Try again!");
echo json_encode($DATA_SESSION);
}
?>