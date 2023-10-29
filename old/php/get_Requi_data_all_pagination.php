<?php

require_once '../includes/db.php';

header('Content-Type: application/json');

$data=array();
 
if (isset($_REQUEST['page_no']) && $_REQUEST['page_no']!="") {
	$page_no = $_REQUEST['page_no'];
	} else {
		$page_no = 1;
        }

     $query=$_REQUEST['query'];
     $query_item=$_REQUEST['query_item'];
     
	 $Total_record_query=$_REQUEST['Total_record_query'];	 

	$total_records_per_page = $_REQUEST['records_per_page'];
    $offset = ($page_no-1) * $total_records_per_page;
	$previous_page = $page_no - 1;
	$next_page = $page_no + 1;
	$adjacents = "2"; 



    $result_count = $mysqli->query(" $Total_record_query  ");
    //mysqli_query($connect,"SELECT COUNT(*) As total_records FROM `college_fee`  ");

	$total_records = $result_count->fetch_assoc();
	$total_records = $total_records['total_records'];
    $total_no_of_pages = ceil($total_records / $total_records_per_page);
	$second_last = $total_no_of_pages - 1; // total page minus 1


if($_REQUEST['page_no']!=""){
    $result = $mysqli->query(" $query LIMIT $offset, $total_records_per_page");
}else{
     $result = $mysqli->query(" $query  LIMIT $offset, $total_records_per_page");
}

$tbldata = array();  

$r = array();
if( $result->num_rows>0){
while($row = $result->fetch_assoc()){
    
    $rq=$row["receipt_no"];
     $qadmin_approved="Pending";
	    $padmin_approved="Pending";
	    
	    $verify_status_approved ="";
	    $delivered_status ="";
	    
	    $queryiq="select  admin_approved from account_quotation   where receipt_no='$rq' ";
	    $resultiq = $mysqli->query($queryiq) or die($mysqli->error.__LINE__);
	    	while($rowiq = $resultiq->fetch_assoc()) {
	    	     $qadmin_approved=$rowiq["admin_approved"];
	    	}
	    	
	    	$queryip="select delivered_status, verify_status, admin_approved from account_purchase_order   where receipt_no='$rq' ";
	    	$resultip = $mysqli->query($queryip) or die($mysqli->error.__LINE__);
	    	while($rowip = $resultip->fetch_assoc()) {
	    	    
	    	     $padmin_approved=$rowip["admin_approved"];
	    	     
	    	     $verify_status_approved=$rowip["verify_status"];
	    	     
	    	     $delivered_status=$rowip["delivered_status"];
	    	     
	    	     
	    	}
	    
	    $queryi=" $query_item   where receipt_no='$rq' ";
$resulti = $mysqli->query($queryi) or die($mysqli->error.__LINE__);
	    	while($rowi = $resulti->fetch_assoc()) {
	    	     $quantity=$rowi["quantity"];
	    	     $total=$rowi["total"];
	    	}
	    
       $arr[] =array('delivered_status'=>$delivered_status, 'verify_status'=>$verify_status_approved,'q_approved'=> $qadmin_approved,'p_approved'=> $padmin_approved,'quantity'=> $quantity, 'total'=> $total, 'mobile'=> $row["mobile"], 'email'=> $row["email"], 'user_name'=> $row["user_name"], 'user_id'=> $row["user_id"], 'date'=> $row["date"], 'time'=> $row["time"], 'remarks'=> $row["remarks"], 'category'=> $row["category"], 'priority'=> $row["priority"], 'receipt_no'=> $row["receipt_no"], 'admin_approved'=> $row["admin_approved"], 'admin_remarks'=> $row["admin_remarks"],'hold_status'=> $row['hold_status'],'hold_date'=> $row['hold_date']);




}
}






$data["tbldata"]=$arr;
$data["page_no"]=$page_no;
$data["total_records"]=$total_records;
$data["total_no_of_pages"]=$total_no_of_pages;
$data["total_records_per_page"]=$total_records_per_page;
$data["previous_page"]=$previous_page;
$data["next_page"]=$next_page;
$data["second_last"]=$second_last;
$data["adjacents"]=$adjacents;
$data["error"]="";
$data["success"]='active';





$counter=0;
$list_counter=0;


                                
                              //  $DUEP[$counter] = array("id" => "$counter", "name" => $counter, "status" => 'inactive');

                              
                               if($page_no > 1){
                                   $list_counter++;
                                    $DUEP[$list_counter] = array("id" => "1", "name" => 'First Page', "status" => 'inactive');
                             
                                
                                } 
                                    

                                if ($page_no > 1){ 
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "$previous_page", "name" => 'Previous', "status" => 'inactive');
                                }
                                 
                            
                                if ($total_no_of_pages <= 10){  	 
                                    for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
                                        if ($counter == $page_no) {
                                            $list_counter++; 
                                            $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'active');
                                             }else{
                                                $list_counter++; 
                                                $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'inactive');
                                         }
                                    }
                                }
                                elseif($total_no_of_pages > 10){
                                    
                                if($page_no <= 4) {			
                                 for ($counter = 1; $counter < 8; $counter++){		 
                                        if ($counter == $page_no) {
                                            $list_counter++; 
                                            $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'active');
                               
                                            }else{
                                                $list_counter++; 
                                                $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'inactive');
                               
                                            }
                                    }
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "...", "name" => "...", "status" => 'inactive');
                               
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "$second_last", "name" => $second_last, "status" => 'inactive');
                               
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "$total_no_of_pages", "name" => $total_no_of_pages, "status" => 'inactive');
                               

                                    }
                            
                                 elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {	
                                    
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "1", "name" => "1", "status" => 'inactive');
                               
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "2", "name" => "2", "status" => 'inactive');
                               
                                    $list_counter++; 
                                    $DUEP[$list_counter] = array("id" => "...", "name" => "...", "status" => 'inactive');
                                    
                                    for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {			
                                       if ($counter == $page_no) {
                                        $list_counter++; 
                                        $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'active');
                                             }else{
                                                $list_counter++; 
                                                $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'inactive');
                                             }                  
                                   }

                                   $list_counter++; 
                                   $DUEP[$list_counter] = array("id" => "...", "name" => "...", "status" => 'inactive');
                               
                                   $list_counter++; 
                                   $DUEP[$list_counter] = array("id" => "$second_last", "name" => $second_last, "status" => 'inactive');
                              
                                   $list_counter++; 
                                   $DUEP[$list_counter] = array("id" => "$total_no_of_pages", "name" => $total_no_of_pages, "status" => 'inactive');
                                         }
                                    
                                    else {
                                        $list_counter++; 
                                        $DUEP[$list_counter] = array("id" => "1", "name" => "1", "status" => 'inactive');
                               
                                        $list_counter++; 
                                        $DUEP[$list_counter] = array("id" => "2", "name" => "2", "status" => 'inactive');
                                   
                                        $list_counter++; 
                                        $DUEP[$list_counter] = array("id" => "...", "name" => "...", "status" => 'inactive');
                                 
                                    for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
                                      if ($counter == $page_no) {
                                        $list_counter++; 
                                        $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'active');
                                            }else{
                                                $list_counter++; 
                                                $DUEP[$list_counter] = array("id" => "$counter", "name" => $counter, "status" => 'inactive');
                                           }                   
                                            }
                                        }
                                }


                               
                               
                                if($page_no < $total_no_of_pages){
                                     
                                    $list_counter++; 
                                       $DUEP[$list_counter] = array("id" => "$next_page", "name" => 'Next', "status" => 'inactive');

                                
                            }

        
    if($page_no < $total_no_of_pages){
        $list_counter++; 
        $DUEP[$list_counter] = array("id" => "$total_no_of_pages", "name" => 'Last', "status" => 'inactive');
    }
                            
                              







    $data["DUEP"]=$DUEP;
$res = json_encode($data);
echo $res;
?>