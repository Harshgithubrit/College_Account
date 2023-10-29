<?php

			
require_once '../includes/db.php';

$mysqli->set_charset("utf8");

$receipt_no=$_REQUEST['receipt_no'];


$query ="select  *  from account_quotation join account_vendor on account_vendor.vendor_id= account_quotation.vendor_id where account_quotation.receipt_no = '$receipt_no'  ";

$result=$mysqli->query($query);
while ($row=$result->fetch_assoc()) 
{
	$title="Quotation";
	$description=$row['remarks'];
	$user_name=$row['user_name'];
	$category=$row['category'];
	$email=$row['email'];
	$contact =$row['mobile'];
	$priority=$row['priority'];
	$category=$row['category'];
	$create_date=$row['create_date'];
	$department=$row['department'];
	$perpose=$row['remarks'];
    $vendor_id=$row['vendor_id'];
    $vendor_name=$row['company'];
    $vendor_email=$row['vendor_email'];
    $vendor_contact=$row['vendor_contact'];
    $vendor_address=$row['address'];
}

date_default_timezone_set('Asia/Kolkata');
$date = date("Y-m-d");
$time = date("d-m-Y h:i:sa");



?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>MJGE Quotation</title>
    
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }

   
    </style>
</head>

<body >
    <div style="background-color: #ffeded;" class="invoice-box">
        <table>
            <tr>
                <td width="20%">
                    <img src="../images/logo.png" style="width:100%; max-width:100px;">
                </td>
                
                <td width="80%">
                    Quotation No : <b>QU-<?php echo $receipt_no;?></b><br>
                    Created Date: <?php echo date("d/m/Y", strtotime($create_date)); ?><br>
                    
                </td>
            </tr>
        </table>

        <table>
            <tr style="width:100%">
                <td width="50%">   <p style=" text-align:left"><b> FROM:</b></p>
                   <b> BY:</b> <?php echo $user_name;?> <br>
                    <b>Departmen:</b> <?php echo $department;?><br>
                   
                </td>
                
                <td width="50%"> <p style="width:90%; text-align:left"><b> <br> </b></p>
                    <b>EMAIL</b>: <?php echo $email;?> <br>
                  <b>CONTACT</b>: <?php echo $contact;?> <br>
                   
                </td>
            </tr>
        </table>
        <table>

            
        </table>

        <table>
        <tr  class="heading">
            <td width="50%" >
       Category
            </td>
            
            <td width="50%" style=" text-align:right;">
               Priority
            </td>
        </tr>
    </table>

        <table>
            <tr class="details">
                <td width="50%" >
                    <?php echo $category;?>
                </td >
                
                <td width="50%" style=" text-align:right;" >
                     <?php echo $priority;?>
                </td>
            </tr>
        </table>
        
         <table>
        <tr>
            <td>
      <b> Purpose</b>:<?php echo $perpose;?>
            </td>
           
            </tr>
           
    </table>
        
    <table>


    <tr class="heading">
           <td><h3>Vendor Info<h3></th>
            <td></th>
</tr>
                <tr>
         
             <td><b>Vendor Name</b> <?php echo $vendor_name;?> </td>
           
             
<td><b>Vendor Mail </b> <?php echo $vendor_email;?> </td>

</tr>
<tr>
             <td><b>Vendor Address </b><?php echo $vendor_address;?> </td>
         
             <td><b></td>
             

</tr>

    </table>

        <table style="width:100%; " >
            <tr class="heading" style="width:100%;">
                <td style="width:25%;">
                    Item
                </td>
               
                <td style="width:35%; text-align:left;">
                    Specification
                </td>


                <td  style="width:15%;">
                    Unit Price
                 </td>
                <td style="width:10%;">
                    Quantity
                </td>
    
               
            </td>
    
            <td style="width:15%; text-align:right;">
                Total
            </td>
            </tr>
        </table>

            <table style="width:100%;">
                
                
                <?php
                
               
                
                $query ="select  *  from account_quotation_item where receipt_no = '$receipt_no' ";
           
               
 $qty=0;
 $topr=0;
$result=$mysqli->query($query);
while ($row=$result->fetch_assoc()) 

{
 $qt = $row['price'];
    $qty= $qty+$qt;
    
    
     $tqt = $row['total'];
    $topr= $topr+$tqt;
echo '


  <tr class="item"  style="width:100%; ">
                    <td style="width:25%;">
                        '.$row["item"].'
                    </td>
                    <td style="width:35%; text-align:left;" >
                        '.$row["item_description"].'
                    </td>
                    <td  style="width:15%;" >
                        '.$row["price"].'
                    </td>
                    <td  style="width:10%; ">
                        '.$row["quantity"].'
                    </td>

                    <td style="width:15%; text-align:right;">
                        '.$row["total"].'
                    </td>
                </tr>


';

}
                
                
                ?>
                <tr style="border-bottom: 1px solid #000000;background-color:black">
           
                <td style="padding: 0.5px;" colspan="5"></td>
                </tr>
                <tr class="item"  style="width:100%; border-bottom: 1px solid #000000;">
                    <td style="width:25%;border-bottom: 1px solid #000000;">
                       
                    </td>
                    <td style="width:35%; text-align:left; border-bottom: 1px solid #000000;" >
                        Total:
                    </td>
                    <td  style="width:15%;border-bottom: 1px solid #000000;" >
                      <?php echo $qty;?>
                    </td>
                    <td  style="width:10%;border-bottom: 1px solid #000000;">

                    </td>

                    <td style="width:15%; text-align:right;border-bottom: 1px solid #000000;">
                       <?php echo $topr;?>
                    </td>
                </tr>
    


            </table>
            
            <table  >
            <tr class="item">
                 <td width="50%" style=" text-align:right;">
                   
                 </td>
                <td width="20%" style=" text-align:right;">
                    Sub Total:
                 </td>
                 <td width="30%" styly=" text-align:right;">
                  <?php echo $topr;?>
                 </td>
                </tr>
            </table>
           
            <table>
                 
                <tr class="item">
                    
                  <td width="50%">
            
                   </td>
                 
                <td width="20%" style=" text-align:right;border-bottom: 1px solid #000000;">
                Tax:
                 </td>
                 <td width="30%" style=" text-align:right;border-bottom: 1px solid #000000;" >
                   0
                 </td>
           </tr>
            </table>

            <table >
               <tr class="item" >
                    <td width="50%">
                   
                 </td>
                 
                <td width="20%" style=" text-align:right;border-bottom: 1px solid #000000;">
                    Grand Total:
                   </td>
                   <td width="30%" style="  text-align:right;border-bottom: 1px solid #000000;">
                     <?php echo $topr;?>
                   </td>
               </tr>
            <tr>
                <td width="50%">
                      <h><b>TERMS AND CONDITIONS:</b></h><br>
                   <p style="font-size: 12px;">1. Customer will be billed after indicating acceptance of this quote.</p>
                   <p style="font-size: 12px;">2. Payment will be due prior to delivery of service and goods.</p>
                </td>
                
            <tr>    
            <td width="50%"></td>
                <td width="50%" style=" text-align:right;">
                    <hr style="text-align:right;border-bottom: 1px solid #000000;">
                    <p>Authorized Signarture</p>
                </td>
                    
            </tr>
               
            </table>
            
    
            <tr>
                <td>  <p style="width:15%; text-align:center"><b> M.J. COLLEGE</b></p>
                  
                    (Affiliated to Durg Vishwa Vidyalaya, Durg - Chhattisgarh) Kohka Junwani Road, Infront of
                    C.S.E.B.Substation, Kohka, Bhilai(C.G.) Phone No.: 0788-2295044, 2295033. 
                </td>
            </tr>
        </table>

    </div><br>
  
      <p><br></p>
        <p><br></p>
</body>
</html>