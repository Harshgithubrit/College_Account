<?php


require_once '../includes/db.php';
  session_start();
 
if($_SESSION['loggedIn'] == "true") {
  
} else {
    header('Location: '.'../login.html');
}

	//  $SampleID=$_REQUEST['SampleID'];
   $fdate=$_REQUEST['fdate'];
   $tdate=$_REQUEST['tdate'];

 $sq= " SELECT SUM(total_fee) as tot from `college_fee`";
 
if($fdate=="NaN-aN-aN"){

//   $sql_Store="select  cf.*, sca.fee_status from college_fee_instalment as cf JOIN student_course_applied as sca ON cf.student_id=sca.student_id order by cf.id DESC group by cf.receipt_no ";

     $sql_Store="SELECT college_fee_instalment.*, (select student_name from college_fee where college_fee.receipt_no = college_fee_instalment.receipt_no GROUP BY receipt_no)as student_name FROM `college_fee_instalment` where date between '$fdate' and '$tdate' ";
}else
{
    $sql_Store="SELECT college_fee_instalment.*, (select student_name from college_fee where college_fee.receipt_no = college_fee_instalment.receipt_no GROUP BY receipt_no)as student_name FROM `college_fee_instalment` where date between '$fdate' and '$tdate' ";
}
  $tbldata = array();  
    $result=$mysqli->query($sql_Store);
            
            // fetch data in array format  
            while ($row=$result->fetch_assoc()) 
            {  
                // Fetch data of Fname Column and store in array of row_array  
                $tbldata[] = $row;

                
            }  
             $myJSON_sql_sale = $tbldata;

         
         $total_fee=0;
         $total_cash=0;
         $total_online =0;
         $total_cheque =0;

?>

               


<html>
    <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <style>
     .style2{font-size:12px;font-weight:bold;padding:5px;}
      .style3{font-size:14px;font-weight:bold;padding:5px;}
 </style>

    </head>
    <body>

    <div class="" style="padding:20px;">
        <div class="float-right text-right">
        <h3 class="font-semibold mgbt-xs-20"> Daily FEE Report </h3>
        <table border="1" class="">
            <tr>
            <th>Genrated On: </th>
            <th><?php echo date("d-m-Y") ?></th>
            </tr>
            <tr>
            <td>From Date to Date : </td>
            <td><?php echo date("d-m-Y", strtotime($fdate)); ?> - <?php  echo date("d-m-Y", strtotime($tdate)); ?></td>
            </tr>
        </table>
        </div>
        <address>
        <span class="mgbt-xs-20"><img alt="logo" src="/images/logo.png"  style="width:10%"/></span>
            <br>
    
        </address>
        <tr >
            <th  height="10"colspan="13" class="bdr style2" ><div align="center" class="style6" style="font-size:16px;font-weight:bold;">FEE REPORT </th>
        </tr>
        <table width="100%" border="1">
        <tr class=" style3" style="background:#CCCCCC;">
            <th   align="right">SNO.</th>
            
            <th align="right"><div ><span class="" >Receipt No.</span></div></th>
            <th  align="right"><div >Student Name/Student ID</div></th>
            <th  align="right"><div >Date/Time</div></th>            
            <th  align="right"><div align="right">Pay Mode </div></th>
            <th align="right" ><div  >Status</div></th>
            <th  align="right"><div align="right">Total Fee Amount </div></th>
            
            </tr>
            <tbody>
            <?php $i=1;?>
            <?php foreach($myJSON_sql_sale as $rowS): ?>
                <?php 
                $total_fee=$total_fee+$rowS['amount'];
                if($rowS['payment_type'] =='cash')
                {$total_cash = $total_cash+$rowS['amount'] ;
                }else if($rowS['payment_type'] =='online')
                {$total_online = $total_online+$rowS['amount'] ;
                }else if($rowS['payment_type'] =='cheque')
                {$total_cheque = $total_cheque+$rowS['amount'] ;
                }
                ?>
            <tr class=" style2" >
            <td  class="text-center"><?= $i?></td>
            <td ><div ><?= $rowS['receipt_no']?></div></td>
            <td ><div ><?= $rowS['student_name']. '<br>'. $rowS['student_id']  ?></div></td>
            <td ><div ><?=$rowS['date'] .'<br>'. $rowS['time']?> </div></td>
            <td ><div ><?= $rowS['payment_type']?> </div></td>
            <td ><div ><?= $rowS['status']?> </div></td>
            <td ><div align="right"><?=$rowS['amount'] ?> </div></td>
            </tr>
            <?php $i++;?>
            <?php endforeach;?>
            
            <tr><td  colspan="6" style="text-align:right"><b>Total Amount</b></td>
            <td style="text-align:right"><b><?= $total_fee?></b></td>
        </tr>

                <tr>
                    <td colspan="6" style="text-align:right"><b> Total in cash</b></td>
                    <td><div align="right"><?=$total_cash ?> </div></td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align:right"><b> Total in online</b></td>
                    <td><div align="right"><?=$total_online ?> </div></td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align:right"><b> Total in cheque</b></td>
                    <td><div align="right"><?=$total_cheque ?> </div></td>
                </tr>
            </tbody>
            </table>
            <br>
            <div style=" width:90%; text-align:center; font-size:16px"><strong>Authorised Signatory</strong>    </div>
  <table  class="table table-bordered table-sm  " style="margin:30px; width:90%;  font-size:14px" bordered='2' >

  <tr>
          <th style=" width:30%; padding:16px; " > TOTAL CASH SENT: </th>
          
          <th style=" width:50%;  padding:16px; "></th>
          </tr>
          <tr>
          <th style=" width:40%; padding:16px; ">TOTAL ONLINE SENT: </th>
          <th style=" width:35%; padding:16px; "></th>
         
          </tr>
          <tr>
          <th style=" width:40%; padding:16px; "> TOTAL CHEQUE AMOUNT SENT: </th>
          <th style=" width:35%; padding:16px; "></th>
          </tr>
          <tr>
          <th style=" width:40%; padding:16px; "> SIGNATURE OF DEPARTMENT: </th>
          <th style=" width:35%; padding:16px; "></th>
        
        </tr>
        <tr>
          <th style=" width:40%; padding:16px; "> SIGNATURE ACCOUNTANT: </th>
          <th style=" width:35%; padding:16px; "></th>
        
        </tr>
  

   
          </table>
  </div>
  
    </div>
    </body>
</html>