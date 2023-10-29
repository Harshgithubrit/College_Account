<?php

require_once '../includes/db.php';

// $EMP_id=$_REQUEST['uid'];

if(!$mysqli){
die("couldnt connect".mysqli_error);
}


header('Content-Type: application/json');

$data=array();

$selec_type=$_REQUEST['selec_type'];

$query="select college_fee.*, student_course_applied.fee_status, student_course_applied.college_name, (college_fee.total_fee - (select SUM(college_fee_instalment.amount) as amt from college_fee_instalment where college_fee.receipt_no = college_fee_instalment.receipt_no)) as reaminFee, (select mj_student.mobile from mj_student where college_fee.student_id = mj_student.emp_id) as mobile from  college_fee join student_course_applied on college_fee.student_id = student_course_applied.student_id where student_course_applied.fee_status != 'Full Paid' ";

$Total_record_query="SELECT COUNT(*) As total_records FROM `college_fee` WHERE $selec_type ";
   

 
if (isset($_REQUEST['page_no']) && $_REQUEST['page_no']!="") {
	$page_no = $_REQUEST['page_no'];
	} else {
		$page_no = 1;
        }

    //  $query=$_REQUEST['query'];
    //  $query_item=$_REQUEST['query_item'];
     
// 	 $Total_record_query=$_REQUEST['Total_record_query'];	 

	$total_records_per_page = $_REQUEST['records_per_page'];
    $offset = ($page_no-1) * $total_records_per_page;
	$previous_page = $page_no - 1;
	$next_page = $page_no + 1;
	$adjacents = "1"; 



    $result_count = $mysqli->query(" $Total_record_query ");
    //mysqli_query($connect,"SELECT COUNT(*) As total_records FROM `college_fee`  ");

//	$total_records = $result_count->fetch_assoc();
	
	
	while($row = $result_count->fetch_assoc()){
	    $total_records = $row['total_records'];
	$total_fee = $row['total_fee'];
	}
	
	
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
    

	    
        $arr[] =$row;



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
$data["total_fee"]=$total_fee;
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