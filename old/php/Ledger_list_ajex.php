<div  style="overflow-x:auto;">
             
<table  style="overflow-x:auto; font-size:13px" id="fee_table" class="table table-bordered table-striped table-hover dataTable ">
    <thead>
        <tr>
            <th>View</th>
            <th>S.No</th>
            <th>Receipt No</th>
            <th>Fee Status</th>
            <th>Date Time</th>
            <th>Semester/Year</th>
            <th>College ID</th>
            <th>Tuition Fee</th>
            <th>Caution Money</th>
            <th>College Magazine Fee</th>
            <th>University Fee</th>
            <th>Sports Fee</th>
            <th>Library Fee</th>
            <th>Prospectus Fee</th>
            <th>Hostel Fee</th>
            <th>Others</th>
            <th>Forwarding Fee</th>
            <th>Total Fee</th>
            <th>Cheque dd No</th>
            <th>Cheque dd Date</th>
            <th>Created Date</th>
        </tr>
    </thead>
               
                                
<?php
{

    require_once '../includes/db.php';


    header('Content-Type: application/json');

 
if (isset($_REQUEST['page_no']) && $_REQUEST['page_no']!="") {
	$page_no = $_REQUEST['page_no'];
	} else {
		$page_no = 1;
        }
        
        $Mailemp_ID =$_REQUEST['Mailemp_ID'];

	$total_records_per_page = 4;
    $offset = ($page_no-1) * $total_records_per_page;
	$previous_page = $page_no - 1;
	$next_page = $page_no + 1;
	$adjacents = "2"; 

if($_REQUEST['page_no']!=""){

    $result_count = $mysqli->query("SELECT COUNT(*) As total_records FROM `college_fee` where student_id='$Mailemp_ID'  ");
    //mysqli_query($connect,"SELECT COUNT(*) As total_records FROM `college_fee`  ");
}else{
   
	$result_count = mysqli_query($connect,"SELECT COUNT(*) As total_records FROM `college_fee` where student_id='$Mailemp_ID'  ");
}
	$total_records = $result_count->fetch_assoc();
	$total_records = $total_records['total_records'];
    $total_no_of_pages = ceil($total_records / $total_records_per_page);
	$second_last = $total_no_of_pages - 1; // total page minus 1

$query="SELECT a.hostel, b.fee_status,a.extra_fee,a.created_date,a.cheque_dd_date,a.cheque_dd_no,a.total_fee,a.forwarding_fee,a.others,a.prospectus_fee,a.library_fee,a.sports_fee,a.university_fee,a.college_magazine_fee,a.caution_money, a.tuition_fee,a.sem_year_type,a.sem_year,a.time,a.date,a.college_id,a.student_id,a.student_name,a.receipt_no,a.id FROM `college_fee` as a join student_course_applied as b on a.student_id=b.student_id where a.student_id='$Mailemp_ID' ORDER BY a.id DESC LIMIT $offset, $total_records_per_page";

if($_REQUEST['page_no']!=""){
    $result = $mysqli->query($query);
}else{
     $result = $mysqli->query($query);
}

$tuition_fee=0;
$caution_money=0;
$college_magazine_fee=0;
$university_fee=0;
$library_fee=0;
$prospectus_fee=0;
$total_fee=0;
$sports_fee=0;
$others=0;
$forwarding_fee=0;
$inc=0;
$hostel=0;

while($row = $result->fetch_assoc()) {

    $inc++;
    
    if($row["fee_status"]=="Full Paid"){
        $stscolor="green";
    }else{
         $stscolor="red";
    }


    $tuition_fee=round($tuition_fee, 3)+ round($row["tuition_fee"], 3);
    $caution_money= round($caution_money, 3)+ round($row["caution_money"], 3);
    $college_magazine_fee=round($college_magazine_fee, 3)+ round($row["college_magazine_fee"], 3);
    $university_fee=round($university_fee, 3)+ round($row["university_fee"], 3);
    $sports_fee= round($sports_fee, 3)+ round($row["sports_fee"], 3);
    $library_fee=round($library_fee, 3)+ round($row["library_fee"], 3);
    $prospectus_fee= round($prospectus_fee, 3)+ round($row["prospectus_fee"], 3);
    $total_fee= round($total_fee, 3)+ round($row["total_fee"], 3);
    $forwarding_fee= round($forwarding_fee, 3)+ round($row["forwarding_fee"], 3);
    $others= round($others, 3)+ round($row["others"], 3);
    $hostel= round($hostel, 3)+ round($row["hostel"], 3);
	
    echo  '  
     <tr   style="font-size:12px; cursor: pointer;  color:'.$stscolor.'; " 
          >
     <th> 

  
          <span class="tag label  bg-teal waves-effect preview_print" style="font-size:12px;" 
         data-id24 ="'.$row["hostel"].'"
         data-id23 ="'.$row["fee_status"].'"
         data-id22 ="'.$row["extra_fee"].'"
         data-id21 ="'.$row["created_date"].'"
         data-id20 ="'.$row["cheque_dd_date"].'"
         data-id19 ="'.$row["cheque_dd_no"].'"
         data-id18 ="'.$row["total_fee"].'"
         data-id17 ="'.$row["forwarding_fee"].'"
         data-id16 ="'.$row["others"].'"
         data-id15 ="'.$row["prospectus_fee"].'"
         data-id14 ="'.$row["library_fee"].'"
         data-id13 ="'.$row["sports_fee"].'"
         data-id12 ="'.$row["university_fee"].'"
         data-id11 ="'.$row["college_magazine_fee"].'"
         data-id10 ="'.$row["caution_money"].'"
          data-id9 ="'.$row["tuition_fee"].'" 
          data-id8 ="'.$row["sem_year_type"].'" 
          data-id7 ="'.$row["sem_year"].'" 
          data-id6 ="'.$row["time"].'" 
          data-id5 ="'.$row["date"].'" 
          data-id4 ="'.$row["college_id"].'" 
          data-id3 ="'.$row["student_id"].'" 
          data-id2 ="'.$row["student_name"].'" 
          data-id1="'.$row["receipt_no"].'" 
          data-id0="'.$row["id"].'" 
         
          data-toggle="modal"  data-target="#defaultModalView" >View
         <i class="material-icons" style="font-size:12px;">print</i>
     </span>
    
         <span class="tag label  bg-blue waves-effect preview_edit" style="font-size:12px;"  
         data-id24 ="'.$row["hostel"].'"
         data-id23 ="'.$row["fee_status"].'"
         data-id22 ="'.$row["extra_fee"].'"
         data-id21 ="'.$row["created_date"].'"
         data-id20 ="'.$row["cheque_dd_date"].'"
         data-id19 ="'.$row["cheque_dd_no"].'"
         data-id18 ="'.$row["total_fee"].'"
         data-id17 ="'.$row["forwarding_fee"].'"
         data-id16 ="'.$row["others"].'"
         data-id15 ="'.$row["prospectus_fee"].'"
         data-id14 ="'.$row["library_fee"].'"
         data-id13 ="'.$row["sports_fee"].'"
         data-id12 ="'.$row["university_fee"].'"
         data-id11 ="'.$row["college_magazine_fee"].'"
         data-id10 ="'.$row["caution_money"].'"
          data-id9 ="'.$row["tuition_fee"].'" 
          data-id8 ="'.$row["sem_year_type"].'" 
          data-id7 ="'.$row["sem_year"].'" 
          data-id6 ="'.$row["time"].'" 
          data-id5 ="'.$row["date"].'" 
          data-id4 ="'.$row["college_id"].'" 
          data-id3 ="'.$row["student_id"].'" 
          data-id2 ="'.$row["student_name"].'" 
          data-id1="'.$row["receipt_no"].'" 
          data-id0="'.$row["id"].'" 

         data-toggle="modal" data-target="#defaultModalUpdate" >Edit
                                    <i class="material-icons" style="font-size:12px;">edit</i>
                                </span>
                            
                                <span class="tag label  bg-red waves-effect preview_delete" style="font-size:12px;" 
                                
                                
          data-id1="'.$row["receipt_no"].'" 
          data-id0="'.$row["id"].'" 
          data-id2="'.$row["student_id"].'" 
          data-id3="'.$row["sem_year_type"].'" 
          data-id4="'.$row["sem_year"].'" 
                                >Delete
                                <i class="material-icons" style="font-size:12px;">delete</i>
                            </span>

     
 </th>

 <th class="fee_Ledger">'.$inc.'</th>
            <th class="fee_Ledger"> '.$row["receipt_no"].'</th>
            <th class="fee_Ledger"> '.$row["fee_status"].'</th>
            <th class="fee_Ledger"> '.$row["date"].' '.$row["time"].'</th>
            <th class="fee_Ledger"> '.$row["sem_year"].' '.$row["sem_year_type"].'</th>
            <th class="fee_Ledger"> '.$row["college_id"].'</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["tuition_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["caution_money"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["college_magazine_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["university_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["sports_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["library_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["prospectus_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["hostel"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["others"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["forwarding_fee"], 3).' ₹</th>
            <th class="fee_Ledger" style="text-align:right;" > '.round($row["total_fee"], 3).' ₹</th>
            <th class="fee_Ledger"> '.$row["cheque_dd_no"].'</th>
            <th class="fee_Ledger"> '.$row["cheque_dd_date"].'</th>
            <th class="fee_Ledger"> '.$row["created_date"].'</th>

        </tr>
            
               
                
           ';  
		   	  
		   	
        }


echo '
        <tfoot>
                                    <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
            <th></th>
            <th>Total</th>
            <th></th>
            <th></th>
            <th style="text-align:right;" >'.round($tuition_fee, 3).' ₹</th>
            <th style="text-align:right;" >'.round($caution_money, 3).' ₹</th>
            <th style="text-align:right;" >'.round($college_magazine_fee, 3).' ₹</th>
            <th style="text-align:right;" >'.round($university_fee, 3).' ₹</th>
            <th style="text-align:right;" >'.round($sports_fee, 3).' ₹</th>
            <th style="text-align:right;" >'.round($library_fee, 3).' ₹</th>
            <th style="text-align:right;" >'.round($prospectus_fee, 3).' ₹</th>
            <th style="text-align:right;" >'.round($hostel, 3).' ₹</th>
            <th style="text-align:right;" >'.round($others, 3).' ₹</th>
            <th style="text-align:right;" >'.round($forwarding_fee, 3).' ₹</th>
            <th style="text-align:right; color:green; " >'.round($total_fee, 3).' ₹</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
                                    </tr>
                                </tfoot>';

                                
	
	
}
    ?>


    <tbody >                   
</tbody>
</table>
         
</div>


<div style='padding: 10px 20px 0px; border-top: dotted 1px #CCC; '>
<strong>Page <?php echo $page_no." of ".$total_no_of_pages; ?></strong>
</div>

<nav style='  cursor: pointer; ' aria-label="Page navigation clearfix w-50">
                                <ul class="pagination float-right mt-5">
                                    
	<?php // if($page_no > 1){ echo "<li><a href='?page_no=1'>First Page</a></li>"; } ?>
     
	<li class="page-item" <?php if($page_no <= 1){ echo "class='disabled'"; } ?>>
	<a class='page-link text-dark cbtn_view' <?php if($page_no > 1){echo "data-id3='$previous_page'"; } ?>>Previous</a>
	</li>
       
    <?php 
	if ($total_no_of_pages <= 10){  	 
		for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
			if ($counter == $page_no) {
		   echo "<li class='active page-item cbtn_view'><a class='page-link bg-primary text-light' >$counter</a></li>";	
				}else{
           echo "<li class='page-item' ><a class='page-link text-dark cbtn_view' data-id3='$counter'>$counter</a></li>";
				}
        }
	}
	elseif($total_no_of_pages > 10){
		
	if($page_no <= 4) {			
	 for ($counter = 1; $counter < 8; $counter++){		 
			if ($counter == $page_no) {
		   echo "<li class='active page-item'><a class='page-link bg-primary text-light' >$counter</a></li>";	
				}else{
           echo "<li><a class='page-link text-dark cbtn_view' data-id3='$counter' >$counter</a></li>";
				}
        }
		echo "<li class='page-item' ><a class='page-link text-dark' >...</a></li>";
		echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='$second_last'>$second_last</a></li>";
		echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='$total_no_of_pages'>$total_no_of_pages</a></li>";
		}

	 elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {		 
		echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='1' >1</a></li>";
		echo "<li class='page-item'><a  class='page-link text-dark cbtn_view' data-id3='2' >2</a></li>";
        echo "<li class='page-item'><a class='page-link text-dark' >...</a></li>";
        for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {			
           if ($counter == $page_no) {
		   echo "<li class='page-item active'><a class='page-link bg-primary text-light' >$counter</a></li>";	
				}else{
           echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='$counter' >$counter</a></li>";
				}                  
       }
       echo "<li class='page-item'><a class='page-link text-dark' >...</a></li>";
	   echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='$second_last'  >$second_last</a></li>";
	   echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='$total_no_of_pages'  >$total_no_of_pages</a></li>";      
            }
		
		else {
        echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='1' >1</a></li>";
		echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='2' >2</a></li>";
        echo "<li class='page-item'><a class='page-link text-dark' >...</a></li>";

        for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
          if ($counter == $page_no) {
		   echo "<li class='active page-item'><a class='page-link bg-primary text-light' >$counter</a></li>";	
				}else{
           echo "<li class='page-item'><a class='page-link text-dark cbtn_view' data-id3='$counter' >$counter</a></li>";
				}                   
                }
            }
	}
?>
    
	<li class='page-item' <?php if($page_no >= $total_no_of_pages){ echo "class='disabled'"; } ?>>
	<a class='page-link text-dark cbtn_view'  <?php if($page_no < $total_no_of_pages) { echo "data-id3='$next_page'"; } ?>>Next</a>
	</li>
    <?php if($page_no < $total_no_of_pages){
		echo "<li class='page-item' ><a class='page-link text-dark cbtn_view' data-id3='$total_no_of_pages' >Last &rsaquo;&rsaquo;</a></li>";
		} ?>
</ul>
</nav>


                        