<?php

session_start();
    if($_SESSION['loggedIn'] == "true") {
      

$DATA_SESSION = array(
"loggedIn"=>$_SESSION['loggedIn']
, "user_id"=>$_SESSION['user_id']
, "firstname"=>$_SESSION['firstname']
, "lastname"=>$_SESSION['lastname']
, "photo"=>$_SESSION['photo']
, "live_status"=>$_SESSION['live_status']
, "middlename"=>$_SESSION['middlename']
, "admin_role"=>$_SESSION['admin_role']
, "designation"=>$_SESSION['designation'] 
, "ctype"=>$_SESSION['ctype'] 
, "staff_type"=>$_SESSION['staff_type'] 
, "college"=>$_SESSION['college'] 
, "courtesy"=>$_SESSION['courtesy'] 
, "mobile"=>$_SESSION['mobile'] 
, "admin_role"=>$_SESSION['admin_role'] 
, "email"=>$_SESSION['email'] 
);

echo json_encode($DATA_SESSION);

		
    } else {
		
		$DATA_SESSION = array("loggedIn"=>$_SESSION['loggedIn']);
        echo json_encode($DATA_SESSION);

	}
	

 ?>