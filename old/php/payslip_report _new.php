<?php
   require_once '../includes/db.php';  
     session_start();
    
   if($_SESSION['loggedIn'] == "true") {
     
   } else {
       header('Location: '.'../login.html');
   }
   $gross_amount=0;

   	$employee_id=$_REQUEST['employee_id'];
       $payslip_id=$_REQUEST['pay_slip_id'];

    // $sql_Store="SELECT client_po_item.*,(select item_main_master.ItemName from item_main_master where client_po_item.item_code=item_main_master.ItemCode) as item_name,(select client_po.ClientName from client_po where client_po.PurID=client_po_item.po_id) as client_name,(select employee.fullname from employee where employee.user_id IN (SELECT client_po.CreatedByUserID FROM client_po where client_po.PurID = client_po_item.po_id )) as billed_name,(select client_master.Address from client_master where client_master.ClientID IN (SELECT client_po.`ClientID` FROM client_po where client_po.PurID = client_po_item.po_id )) as address FROM `client_po_item` where po_id='$purchase_id' ";
  $sql_Store="SELECT employee_salary.*,(select employee.account_no from employee where employee.employee_id=employee_salary.employee_id) as account_no,(select employee.date from employee where employee.employee_id=employee_salary.employee_id) as date_of_joining   FROM `employee_salary` WHERE `employee_id` LIKE '$employee_id' and pay_slip_id = '$payslip_id'";

   $tbldata = array();  
   	$result=$mysqli->query($sql_Store);
   					
   					// fetch data in array format  
   					while ($row=$result->fetch_assoc()) 
   					{  
   							// Fetch data of Fname Column and store in array of row_array  
   							$tbldata[] = $row;
                            $payslip_id =$row['pay_slip_id'];
                            $pay_month=$row['pay_month'];
                            $year=$row['generated_year'];
                            $month=$row['generated_month'];
                            $emp_name=$row['employee_name'];
                            $staff_type=$row['staff_type'];
                            $date=date('d-m-Y',strtotime($row['date']));
                            $account_no=$row['account_no'];
                            $designation=$row['designation'];
                            $date_of_joining=$row['date_of_joining'];
                            $working_days=$row['working_days'];
                            $monthly_salary=$row['monthly_salary'];
                            $other_deduction_amt=(int)$row['other_deduction'];

                        //    echo  gettype($row['absent_days']);
                    
                            $present_days=$working_days-(int)$row['absent_days'];


                            $perday_salary= $present_days*($row['monthly_salary']/$working_days);
                         
                           $pf_per =$row["PF"];
                           $esi_per=$row["ESI"];
                      
                            
                            $pf_amount=round($perday_salary*$row["PF"])/100;
                            $esi_amt=round($perday_salary*$row["ESI"])/100;
                            $monthly_salary-($pf_amount+$esi_amt);
                            $net_pay=round(($monthly_salary/$working_days)*($present_days)-($pf_amount+$esi_amt+$other_deduction_amt));
                          
               
                            $total_deduct_amt=round($pf_amount+$esi_amt+$other_deduction_amt);

                            
                //  $x=($row['quantity']*$row['unit_mrp'])-$row['quantity']*$row['unit_mrp']*$row['discount_per']/100;
                // $gross_amount = $gross_amount+ $x;
                // $customer_name=$row['client_name'];
                // $billed_name=$row['billed_name'];
                // $address=$row['address'];
   					}  
           
   
   
             $myJSON = $tbldata;
            
            // echo json_encode($myJSON);
            
   ?>

<style>
                                @page {
                                size: A4; 
                                margin:0;  
                                                    
                                }
                                @media print {
                                /*html, body {
                                    max-width: 210mm; 
                                    max-height: 297mm;
                                    padding: 12px;
                                }*/
                                /* ... the rest of the rules ... */
                                }

                                td, th {
                                    padding: 0 5px 0 5px;
                                }
                            
                            </style>

                            <style type="text/css">
                                    
                                        page {
                                        
                                        display: block;
                                        margin: 0 auto;
                                        margin-bottom: 0.5cm;
                                        }
                                       
                                        page[size="A5"][layout="landscape"] {
                                        width: 21cm;
                                        height: 20cm;  
                                        }
                                        @media print {
                                            body, page {
                                                margin: 0;
                                                box-shadow: 0;
                                            }
                                        }
                            </style>  
<section role="main" ng-controller="myCtrl" style="background-color: #fffce6;">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <!--a href="#" class="fa fa-times"></a-->
                    </div>

                    <h2 class="panel-title"> 
                        <button class="btn btn-primary" onClick="PrintDivo();"><i class="fa fa-print"></i> Print Bill</button>
                    </h2>
                </header>
            </section>
            <section class="panel"  id="dvContentso" style="width:20.85cm;height:29.7cm">
            
                    <div id='dvContentso'>
                    <!--?php for($i=0;$i<2;$i++){ ?-->
                        <div class="row">   
                            <div class="col-sm-12">
                                <page size="A5" style="height:13cm;width:30cm">
                                    <div class="panel-body">
                                            <table class="table" width="100%" border="1">
                                                <thead>
                                                    <tr>
                                                        <td colspan="2" style='border-top-width: 0px; border-right-width: 0px; border-bottom-width: 1px;border-left-width: 0px;'><h3 style="font-weight: bold; text-align:left;"><img src="../images/logo.png" style="width:100%; max-width:100px;"></h3></td>
                                                        <td colspan="4"style='border-top-width: 0px; border-right-width: 0px; border-bottom-width: 1px;border-left-width: 0px;'><h2 style="font-weight: bold; text-align:center;">ZINOTA PAYSLIP</h2><p style="font-weight: bold; text-align:center;">Junwani Rd, Kohka, Bhilai, Chhattisgarh 490023</p></td>
                                                        <td colspan="2"style='border-top-width: 0px; border-right-width: 0px; border-bottom-width: 1px;border-left-width: 0px;'><h6 style="font-weight: bold; text-align:right;">PAYSLIP FOR <?php echo $pay_month?>- <?php echo $year?><br>GENERATE ON <?php echo $date?></h6></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style='border-top-width: 0px; border-right-width: 1px; border-bottom-width: 1px;border-left-width: 0px;'>
                                                            <p>
                                                                <b style="margin-left: 30px;">Pay Slip ID:- </b><?php echo $payslip_id;?></b><br>
                                                                <b style="margin-left: 30px;">Employee ID:- </b><?php echo $employee_id;?></b><br>
                                                                <b style="margin-left: 30px;">Staff-Type:- </b><?php echo $staff_type;?></b><br>
                                                                <b style="margin-left: 30px;">Pay Date:- </b><?php echo $date;?></b><br>
                                                                <b style="margin-left: 30px;">PF Account Number:- </b><?php echo $account_no;?></b><br>
                                                                <b style="margin-left: 30px;">ESI Account Number:- </b><?php echo $account_no;?></b><br>
                                                            </p>
                                                        </td>
                                                        <td colspan="4" style='border-top-width: 0px; border-right-width: 0px; border-bottom-width: 1px;border-left-width: 0px;'>
                                                            <p>
                                                                <b style="margin-left: 30px;">Employee Name:- </b><?php echo $emp_name;?></b><br>
                                                                <b style="margin-left: 30px;">Designation:- </b><?php echo $designation;?></b><br>
                                                                <b style="margin-left: 30px;">Date of Joining:- </b><?php echo $date_of_joining;?></b><br>
                                                                <b style="margin-left: 30px;">Days Worked:- </b><?php echo $working_days;?></b><br>
                                                                <b style="margin-left: 30px;">Present Days:- </b><?php echo $present_days;?></b><br>
                                                                <b style="margin-left: 30px;">Bank Account/Cheque Number:- </b><?php echo $account_no;?></b><br>
                                                            </p>
                                                        </td>
                                                    </tr>                                                    
                                                    <tr style="text-align:center">
                                                        <th colspan="2" style='background-color: #c2c2c2;border-top-width: 0px; border-right-width: 1px; border-bottom-width: 0px;border-left-width: 0px;'>EARNINGS</th>
                                                        <th colspan="2"style='background-color: #c2c2c2;border-top-width: 0px; border-right-width: 1px; border-bottom-width: 0px;border-left-width: 0px;'>AMOUNT</th>
                                                        <th colspan="2"style='background-color: #c2c2c2;border-top-width: 0px; border-right-width: 1px; border-bottom-width: 0px;border-left-width: 0px;'>DEDUCTION</th>
                                                        <th colspan="2"style='background-color: #c2c2c2;border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;'>AMOUNT</th>                              
                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="col"colspan="2" style="border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">Basic Pay</th>
                                                        <th scope="col"colspan="2" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 0px;border-left-width: 0px;"><?php echo $monthly_salary;?>  Rs.</th>
                                                        <th scope="col"colspan="2" style="border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">PF Amount (<?php echo $pf_per.'%'; ?>)<br>ESI Amount (<?php echo $esi_per.'%'; ?>)<br>Other Deduction</th>
                                                        <th scope="col"colspan="2" style="border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;"><?php echo $pf_amount?>   Rs.<br><?php echo $esi_amt?> Rs.<br><?php echo $other_deduction_amt ?>Rs.</th>
                                                    </tr>
                                                    <tr>
                                                            <th scope="col"colspan="2" style="background-color: #c2c2c2;border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">Total Earnings (Rounded)</th>
                                                            <th scope="col"colspan="2" style="background-color: #c2c2c2;border-top-width: 1px; border-right-width: 1px; border-bottom-width: 0px;border-left-width: 0px;"><?php echo round($perday_salary); ?>  Rs.</th>
                                                            <th scope="col"colspan="2" style="background-color: #c2c2c2;border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">Total Deductions (Rounded)</th>
                                                            <th scope="col"colspan="2" style="background-color: #c2c2c2;border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;"><?php echo $total_deduct_amt?>  Rs.</th>
                                                    </tr>                                                    
                                                    <tr>
                                                            <th scope="col"colspan="4" style="border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">NET PAY (Rounded)</th>
                                                            <th scope="col"colspan="4" style="border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;"><?php echo $net_pay?>  Rs.</th>
                                                    </tr>                                                                                                      
                                                    <tr>
                                                            <th scope="col"colspan="8" style="border-top-width: 1px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">......................................................................</th>
                                                    </tr>                                                                                                     
                                                    <tr>
                                                            <th scope="col"colspan="8" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px;border-left-width: 0px;">Employer Signature</th>
                                                    </tr>
                                                </tbody>
                                            </table>               
                                    </div>
                                    
                                </page>
                                </div>
                        </div>
                    <!--?php }?-->
                    </div>
            </section>
        </div>
    </div>
</section>
<!-- end: page -->

    <!-- Jquery Core Js -->
    <script src="app/emp_salary.js"></script>
	
    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

   
    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>




    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/tables/jquery-datatable.js"></script>
    <script src="js/pages/forms/advanced-form-elements.js"></script>




    <script src="js/pages/ui/modals.js"></script>
    <!-- Demo Js -->
    <script src="js/demo.js"></script>

<script>
    function PrintDivo() {
            var contents = document.getElementById("dvContentso").innerHTML;
            var frame1 = document.createElement('iframe');
            frame1.name = "frame1";
            frame1.style.position = "absolute";
            frame1.style.top = "-1000000px";
            document.body.appendChild(frame1);
            var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
            frameDoc.document.open();
            frameDoc.document.write('<html><head><title></title>');
            frameDoc.document.write('</head><body>');
            frameDoc.document.write(contents);
            frameDoc.document.write('</body></html>');
            frameDoc.document.close();
            setTimeout(function () {
                window.frames["frame1"].focus();
                window.frames["frame1"].print();
                document.body.removeChild(frame1);
            }, 500);
            return false;
        }
    </script>