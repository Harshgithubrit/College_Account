<?php


require_once '../includes/db.php';
  session_start();
 
if($_SESSION['loggedIn'] == "true") {
  
} else {
    header('Location: '.'../login.html');
}

 $fdate=$_REQUEST['fdate'];
 $tdate=$_REQUEST['tdate'];



 //$sq= " SELECT SUM(total_fee) as tot from `college_fee`";
 

    $sql_Store = "select * from `employee_salary` where date between '$fdate' and '$tdate'";
    

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
        <h3 class="font-semibold mgbt-xs-20">Payment Report </h3>
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

        <div class="media-right">
            <a href="javascript:void(0);">
                <img class="media-object" src="../images/logo.png" width="100" height="80">
            </a>
        </div>
       <br>
       

        <h5 align="center" style="font-weight:bold">EMPLOYEE SALARY REPORT</h5>
         <br>   
        <table width="100%" border="1">
        <tr class=" style3" style="background:#CCCCCC;">
            <th><div align="center">SNO.</div></th>
            
            <th><div align="center"><span class="" >Pay Slip ID</span></div></th>
            <th><div align="center">Employee Name/Employee ID</div></th>
            <th><div align="center">Date/Time</div></th>            
            <th><div align="center">Pay Mode</div></th>
            <th><div align="center">Pay Status</div></th>
            <th><div align="center">Total Pay Amount </div></th>
            
            </tr>
            <tbody>
            <?php $i=1;?>
        <?php foreach($myJSON_sql_sale as $rowS): ?>
                <?php 
                $total_fee=$total_fee+$rowS['net_income'];
                if($rowS['pay_mode'] =='cash')
                {$total_cash = $total_cash+$rowS['net_income'] ;
                }else if($rowS['pay_mode'] =='Bank')
                {$total_online = $total_online+$rowS['net_income'] ;
                }else if($rowS['pay_mode'] =='Cheque')
                {$total_cheque = $total_cheque+$rowS['net_income'] ;
                }
                ?>
            <tr class=" style2" >
            <td  class="text-center"><?= $i?></td>
            <td ><div ><?= $rowS['pay_slip_id']?></div></td>
            <td ><div ><?= $rowS['employee_name']. '<br>'. $rowS['employee_id']  ?></div></td>
            <td ><div ><?=$rowS['date'] .'<br>'. $rowS['time']?> </div></td>
            <td ><div ><?= $rowS['pay_mode']?> </div></td>
            <td ><div ><?= $rowS['pay_status']?> </div></td>
            <td ><div align="right"><?= $rowS['net_income']?></div></td>
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