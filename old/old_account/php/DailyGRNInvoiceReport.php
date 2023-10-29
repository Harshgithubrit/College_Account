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




   
    $sql_Store="SELECT account_purchase_order.*,
   (select sum(total) from account_purchase_order_item where account_purchase_order.receipt_no = account_purchase_order_item.receipt_no )as TotalMrp FROM `account_purchase_order` where  date between '$fdate' and '$tdate'";
  $i=1;
  $tbldata = array();  
    $result=$mysqli->query($sql_Store);
            
            // fetch data in array format  
            while ($row=$result->fetch_assoc()) 
            {  
                // Fetch data of Fname Column and store in array of row_array  
                $tbldata[] = $row;
  
           
            }  
  
  
            $myJSONS = $tbldata;

//             echo $sql_Store="SELECT account_purchase_order.*,
//             (select sum(price) from account_purchase_order_item where account_purchase_order.receipt_no = account_purchase_order_item.receipt_no )as TotalMrp FROM `account_purchase_order` ";
// $tbldata = array();  
// 	$result=$mysqli->query($sql_Store);
					
// 					// fetch data in array format  
// 					while ($row=$result->fetch_assoc()) 
// 					{  
// 							// Fetch data of Fname Column and store in array of row_array  
// 							$tbldata[] = $row;

         
// 					}  


//           $myJSON = $tbldata;
//          // echo json_encode($myJSON);

// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//          $SUM_total_amount =0;
//          $SUM_total_discount =0;
      $SUM_gross_amount = 0;
//          $SUM_gross_amountU = 0;
//          $SUM_total_discountU = 0;
//          $SUM_total_payableU = 0;
//          $SUM_total_AdvanceU=0;
//          $SUM_total_ColU = 0;

     $SUM_total_paid=0;

         
//          $SUM_credit_amount = 0;
//          $SUM_cash_amount = 0;
//          $SUM_cheque_amount = 0;
//          $SUM_online_amount = 0;
//          $SUM_total_Advance=0;
//          $SUM_total_payable=0;
//          $SUM_total_Col = 0;
//          $SUM_TOTAL_BALANCE=0;
         
//          $SUM_unpaid_amount = 0;
//          $SUM_paid_amount = 0;
//          $SUM_remain_amount = 0;
//          $RSUM_gross_amount_online_cash=0;
//          $RSUM_total_discount__online_cash=0;

//          $SUM_gross_amountU2=0;
//          $SUM_total_ColU2=0;
   
   
//    $SUM_total_CASHUP=0;
//    $SUM_total_ONLINEUP=0;
//    $SUM_total_CHEQUEUP=0;
// 	   $sql_sale = "SELECT test_sample_element_details .*, (select CommissionPer from commission_rate_entry where commission_rate_entry.CollectionCenterID =test_sample_element_details.CollectionCenterID LIMIT 1 )as ComissionPer ,(select customer.firstname from customer where customer.CustomerId= (SELECT CustomerID FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID  )) as CustomerName ,(SELECT Online_Amount FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as Online_Amount,(SELECT AdvancedPayment FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as AdvancedPayment, (SELECT DebitAmount FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as DebitAmount , (SELECT SampleDate FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as SampleDate  , (SELECT TotalAmount FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as TotalAmount, (SELECT PaybleAmount FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as PaybleAmount, (SELECT Pay_modeType FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as Pay_modeType , (SELECT AdvancedPayment FROM `test_samplemaster` where test_sample_element_details.SampleID=test_samplemaster.SampleID ) as AdvancedPayment  from test_sample_element_details join test_samplemaster on test_sample_element_details.SampleID=test_samplemaster.SampleID where test_samplemaster.SampleDate between'$fdate' and '$tdate' and test_samplemaster.Sampletype='Self'  group by SampleID Desc";
//   $i=1;
// 	$tbldata_sql_sale = array();  
// 	$result_sale=$mysqli->query($sql_sale);
					
// 					// fetch data in array format  
// 					while ($rowS=$result_sale->fetch_assoc()) 
// 					{  
// 							// Fetch data of Fname Column and store in array of row_array  
// 							$tbldata_sql_sale[] = $rowS;

         
// 					}  

		
// 	 $myJSON_sql_sale = $tbldata_sql_sale;


   
  // echo $sql_sale2 = "SELECT test_samplemaster.*,(select firstname from customer where customer.CustomerId = test_samplemaster.CustomerID) as CustomerName from test_samplemaster where PaymentStatus='Pending'";
  //  $i=1;
  //  $tbldata_sql_sale = array();  
  //  $result_sale=$mysqli->query($sql_sale);
           
  //          // fetch data in array format  
  //          while ($rowP=$result_sale->fetch_assoc()) 
  //          {  
  //              // Fetch data of Fname Column and store in array of row_array  
  //              $tbldata_sql_sale[] = $rowP;
 
          
  //          }  
 
     
  //   $myJSON_sql_sale2 = $tbldata_sql_sale;


 //  echo json_encode($myJSON_sql_sale);

 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



 $RSUM_total_amount =0;
 $RSUM_total_discount =0;
 $RSUM_gross_amount = 0;
 $totalRCredit=0;
 $totalcreditgrossamount=0;
 $totalcreditamount=0;  
 $totalremainamount=0;
 $totaldiscountamount=0;

 
 $RSUM_credit_amount = 0;
 $RSUM_cash_amount = 0;
 $RSUM_cheque_amount = 0;
 $RSUM_online_amount = 0;


 
 $RSUM_unpaid_amount = 0;
 $RSUM_paid_amount = 0;
 $RSUM_remain_amount = 0;
 
 $SUM_total_discountU2=0;
 $SUM_total_payableU2=0;
 $SUM_total_AdvanceU2=0;
 $totl_pending_balanceU2=0;
 $totl_pending_balanceU=0;
// $Rsql_sale = "select sale_return_invoice_details.*,
// (Select date from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as sdate,
// (Select discount_per from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as discount_per,
// (Select customer_name from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as customer_name from sale_return_invoice_details  where sale_return_invoice_details.store_id='$store_id'   ";
// $Ri=1;
// $Rtbldata_sql_sale = array();  
// $Rresult_sale=$mysqli->query($Rsql_sale);
  
//   // fetch data in array format  
//   while ($rowR=$Rresult_sale->fetch_assoc()) 
//   {  
//   // Fetch data of Fname Column and store in array of row_array  
//       $Rtbldata_sql_sale[] = $rowR;

 
//   }  


// $RmyJSON_sql_sale = $Rtbldata_sql_sale;
// //echo json_encode($RmyJSON_sql_sale);


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// $Csql_sale = "select sale_return_invoice_details.*,
// (Select date from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as sdate,
// (Select date from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as sdate,
// (Select discount_per from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as discount_per,
// (Select customer_name from sale_tbl where sale_tbl.sale_id = sale_return_invoice_details.sale_id) as customer_name from sale_return_invoice_details  where sale_return_invoice_details.store_id='$store_id'  ";
// $Ci=1;
// $Ctbldata_sql_sale = array();  
// $Cresult_sale=$mysqli->query($Csql_sale);
  
//   // fetch data in array format  
//   while ($rowC=$Cresult_sale->fetch_assoc()) 
//   {  
//   // Fetch data of Fname Column and store in array of row_array  
//       $Ctbldata_sql_sale[] = $rowC;

 
//   }  


// $CmyJSON_sql_sale = $Ctbldata_sql_sale;



// $Credit = "select * from sale_tbl where pay_mode='Credit' ";

// $Creditval = array();  
// $Creditres=$mysqli->query($Credit);
  
//   // fetch data in array format  
//   while ($rowd=$Creditres->fetch_assoc()) 
//   {  
//   // Fetch data of Fname Column and store in array of row_array  
//       $Creditval[] = $rowd;

 
//   }  


// $myjsonCreditval = $Creditval;



// $OnlineCashquery = "select * from sale_tbl where pay_mode='Cash and Online' ";

// $OnlineCash = array();  
// $OnlineCashres=$mysqli->query($OnlineCashquery);
  
//   // fetch data in array format  
//   while ($rowd=$OnlineCashres->fetch_assoc()) 
//   {  
//   // Fetch data of Fname Column and store in array of row_array  
//       $OnlineCash[] = $rowd;

 
//   }  


// $myjsonOnlineCash = $OnlineCash;

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

<div>
  <div class="" style="padding:5px;">
    <div class="float-right text-right">
      <h3 class="font-semibold mgbt-xs-20"> Daily GRN Report </h3>
      <table border="1" class="">
        <tr>
          <th>Genrated On: </th>
          <th><?php echo date("d-m-Y") ?></th>
        </tr>
        <tr>
          <td>Sale Date : </td>
          <td><?php echo date("d-m-Y", strtotime($fdate)); ?> - <?php  echo date("d-m-Y", strtotime($tdate)); ?></td>
        </tr>
      </table>
    </div>
    <address>
      <span><img alt="logo" src="../images/logo.png"  style="width:10%;" /></span>
   <br>
  
    </address>
    <div  > 
    <tr >
          <th  height="10"colspan="13" class="bdr style2" ><div align="center" class="style6" style="font-size:16px;font-weight:bold;">GRN REPORT </th>
        </tr>
    <table width="100%" border="1"    >

      
      
        <tr class=" style3" style="background:#CCCCCC;">
        
          <th   >SNO.</th>
		  
          <th><div > Receipt Date</div></th>
		  <th   ><div >RECEIPT ID</div></th>
          <th  ><div >Billed By </div></th>
          <th  ><div >Supplier Name </div></th>
          <th  ><div align="right">TOT. FEE </div></th>
          <th  ><div  >PAYMODE</div></th>
          
          <th   ><div >Paid Amount</div></th>
          
       
        </tr>
     
      <tbody>

      <?php foreach($myJSONS as $rowS): ?>
        <tr class=" style2" >
        
          <td  class="text-center"><?= $i?></td>

          <td><div ><?= $rowS['date']?></div></td>
		  <td ><div style="text-align:center;" ><?= $rowS['receipt_no']?></div></td>
          
          <td ><div ><?= $rowS['user_name']?> </div></td>

          <td ><div ><?= $rowS['vendor_name']?> </div></td>
          <td ><div align="right" ><?= $rowS['TotalMrp']?> </div></td>
          <td ><div align="right" ><?= $rowS['Paymode']?> </div></td>
          <td ><div align="right"><?= $rowS['TotalMrp']?> </div></td>
          

        </tr>
      </tbody>
    
      </div>

        <?php $i++?>

        <?php

 $SUM_gross_amount =  $SUM_gross_amount + $rowS['TotalMrp'];

 $SUM_total_paid =  $SUM_total_paid + $rowS['TotalMrp'];
        
        //  $SUM_total_discount =  $SUM_total_discount + $rowS['DisPer'];
        //  $SUM_total_payable = $SUM_total_payable + $rowS['PaybleAmount'];
        //  $SUM_total_Advance= $SUM_total_Advance + $rowS['AdvancedPayment'];
        //  $SUM_total_Col = $SUM_total_Col+ ($rowS['PaybleAmount']/2);
        //  $SUM_total_paid = $SUM_total_paid + $rowS['DebitAmount']+ $rowS['AdvancedPayment'];
         
        //  $SUM_TOTAL_BALANCE = $SUM_TOTAL_BALANCE+$rowS['PaybleAmount']-( $rowS['DebitAmount']+$rowS['AdvancedPayment']);



//  echo $rowS['DebitAmount'];
          
        //   if($rowS['Pay_modeType']=='Cash'){
            
        //       $SUM_total_CASHUP = $SUM_total_CASHUP + $rowS['DebitAmount']+$rowS['AdvancedPayment'];
        //     //   echo $rowS['DebitAmount'];
        //   }
        //    else if($rowS['Pay_modeType']=='Online'){
                
        //        $SUM_total_ONLINEUP = $SUM_total_ONLINEUP + $rowS['Online_Amount']+$rowS['AdvancedPayment'];
              
        //    }else if($rowS['Pay_modeType']=='Cheque'){
             
        //        $SUM_total_CHEQUEUP = $SUM_total_CHEQUEUP + $rowS['DebitAmount']+$rowS['AdvancedPayment'];
              
        //    }  

        
//          $SUM_total_amount = $SUM_total_amount +  $row['credit_amount'];
       
//          $SUM_gross_amount =    $SUM_gross_amount  +$row['gross_amount'];
       


//         if($row['credit_amount'] != $row['payable_amount']){
//   $SUM_remain_amount  =  $SUM_remain_amount + ($row['payable_amount'] - $row['credit_amount']);
//         }else {
//         }
//           $SUM_paid_amount  =  $SUM_paid_amount + $row['credit_amount'];


//          if($row['pay_mode'] == "Credit"){

//          $SUM_credit_amount = $SUM_credit_amount + $row['payable_amount'];
//          }if($row['pay_mode'] == "Cash"){

//          $SUM_cash_amount = $SUM_cash_amount +$row['payable_amount'];
//           }if($row['pay_mode'] == "Online"){

//             $SUM_online_amount = $SUM_online_amount +$row['payable_amount'];
//              }if($row['pay_mode'] == "Cheque"){

//               $SUM_cheque_amount = $SUM_cheque_amount +$row['payable_amount'];
//                }

          ?>

        <?php endforeach; ?>


      </tbody>
      <tfoot>
        <tr  class=" style3" style="background:#CCCCCC;">
             
          <th ></th> 
          
          <th ></th> 
          
          <th ></th> 
                  <th > </th>
                   <th>
            <div >Grand Total:</div>
          </th> 
          
          <th ><div align="right"><?=  $SUM_gross_amount ?> </div></th>
  
<th></th>          
    
          
          <th ><div align="right"><span > Total Collection Value:<b>[ <?= round($SUM_total_paid)?>  ]</b></div></th>
         
        </tr>
        
           <tr style="background:#CCCCCC;">
        <th colspan="12" ><div align="right"><span > Total Sale Value:<b>[ <?= round($SUM_gross_amount)?>  ]</b></div></th>
        </tr>
      </tfoot>
</table>
 




        
    
          
    </table> <th   ><div align="right">For MJGE <br>
              <br>
              Authorised Signatory <br>
          </div></th>
  </div>
  <span class="style2">
  <!-- panel-body -->
  </span></div>
<p class="style2">&nbsp;</p>
</body>
</html>