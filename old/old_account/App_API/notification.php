<?php


$recipet_id=$_REQUEST['recipet_id'];
$table=$_REQUEST['table'];

$type=$_REQUEST['type'];

        
$token="";

$serverKey ="AAAAZKGKfqA:APA91bEGKK_lQE1_qBQtBzWF3wrvUUXqBEQ6vjgsvrgR-3hV9raulcF9yVSoxhVaIn55AVeC8YEABl3OsD5izjMHqUGyYvP_qcgLpper8aJ9z22HJT1D-OBHQ8AxlYsx4Sf9wM6wBMtz";

date_default_timezone_set('Asia/Kolkata');
$date = date("Y-m-d");
$time = date("h:i:sa");


$ne=date('Y-m-d');
$t=time();
$start = DateTime::createFromFormat("Y-m-d ","$ne ",new DateTimeZone("Asia/Kolkata"));
date_default_timezone_set('Asia/Kolkata');
$date = date("Y-m-d");
$time = date("d-m-Y h:i:sa");
//$today = date("D M j G:i:s T Y");  
$time = date("F j, Y, g:i a"); 
  
  
  	require_once '../includes/db.php';
  	
  	$Query = " SELECT `user_name`,`user_id`,`remarks`,`department` FROM $table WHERE`receipt_no`='$recipet_id' ";
  		$result=$mysqli->query($Query);
	// fetch data in array format  
	if(mysqli_affected_rows($mysqli)>0){
		while ($row=$result->fetch_assoc()) 
		{
			$title = "Requisition By ".$row["user_name"]."(".$row["user_id"].")";
			$desc = "Purpose ".$row["remarks"].", Department ".$row["department"];
		}
	}
	

	
	  	$Query1 = " SELECT `gcm_token` FROM `mj_staff` where `ctype`='Admin' ";
  		$result1=$mysqli->query($Query1);
	// fetch data in array format  
	if(mysqli_affected_rows($mysqli)>0){
		while ($row1=$result1->fetch_assoc()) 
		{
			$token = $row1["gcm_token"];
			
			
			
    $url = "https://fcm.googleapis.com/fcm/send";




 
 $msg = array();
        $msg['data']['title'] = $title;
        $msg['data']['body'] = $desc;
        $msg['data']['icon'] = 'http://mjge.in/images/BAN.png';
        $msg['data']['sound'] = 'default';
      //  $msg['data']['chat_room_id'] = $chat_room_id;
         $msg['data']['type'] = $type;
                      
                    $fields = array
                        (
                        'to'            => $token,
                        'data'  => $msg
                        );
                    $headers = array
                        (
                        'Authorization: key=' . $serverKey,
                        'Content-Type: application/json'
                        );
                #Send Reponse To FireBase Server
                    $ch = curl_init();
                    curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
                    curl_setopt( $ch,CURLOPT_POST, true );
                    curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
                    curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
                    curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
                    curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );

                    $result = curl_exec ( $ch );
                    echo "<pre>";print_r($result);exit;
                    curl_close ( $ch );

			
		
		}
	}

// include_once('../../mysqldetail.php');

//  mysqli_set_charset($connect, 'utf8');
 
 
// $sql2="SELECT token_id FROM user_details ";
// $result2=mysqli_query($connect,$sql2);
// while($row2 =mysqli_fetch_array($result2))
    // {}
//$token = "fFbiKnG_Tgq86yWO7t_kZB:APA91bGEJOBkMVHmgLs55vdHo0iBrbJARetgMolNlVVfMb5pVigwAn0ZLqOdPfx0H8gRlDxxGl1kkALxqC8hht2BNyShOvYT1DLEr_o36vsig4v-KHi4c_Ain6n_hoWSYkA_DnrVp5we";






    

     
?>
