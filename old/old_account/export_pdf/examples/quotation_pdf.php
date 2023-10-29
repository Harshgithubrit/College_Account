<?php
//============================================================+
// File name   : example_002.php
// Begin       : 2008-03-04
// Last Update : 2013-05-14
//
// Description : Example 002 for TCPDF class
//               Removing Header and Footer
//
// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               www.tecnick.com
//               info@tecnick.com
//============================================================+

/**
 * Creates an example PDF TEST document using TCPDF
 * @package com.tecnick.tcpdf
 * @abstract TCPDF - Example: Removing Header and Footer
 * @author Nicola Asuni
 * @since 2008-03-04
 */

// Include the main TCPDF library (search for installation path).
// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include_purchse_order.php');

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

  
	//Page header
	public function Header() {
        $this->SetY(-45);
        //footer note
         //footer image and text
        $footer_image_file = 'logo.png';
        $footer_logo_html = '<table style="width: 100%;">
        <tr style="width: 100%;">
       
        <td width="85%">
        <h4 >M.J. COLLEGE</h4> 
    <p >(Affiliated to Durg Vishwa Vidyalaya, Durg - Chhattisgarh)
    Kohka Junwani Road, Infront of C.S.E.B.Substation,
    Kohka, Bhilai(C.G.) Phone No.: 0788-2295044, 2295033.
    </p>
        </td>
    
        <td width="15%">
        
    <br>
    <br>
    <br>
    <img width="100px" height="80px"  style= "width:100px; height:100px;" src="' . $footer_image_file . '" /></td>
        
        
        </tr>
        </table>';
        $this->writeHTML($footer_logo_html, true, 0, true, 0);
        
		}

	// Page footer
  public function Footer() {
  // Position at 15 mm from bottom

    	// Set font
		$this->SetFont('helvetica', 'B', 8);
		// Page number
		$this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'R', 0, '', 0, false, 'T', 'M');
	
		// Set font
	}
}



// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
//$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Zinota Remedies');
$pdf->SetTitle('Test Report');
$pdf->SetSubject('Report');
$pdf->SetKeywords('Zinota, PDF, testreport, report, Zinota Pharma');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));

// set footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
//$pdf->SetFont('times', 'BI', 20);




require_once '../../includes/db.php';

$receipt_no = $_REQUEST["receipt_no"];

 $query_= " select * from account_quotation where receipt_no = '$receipt_no'  ";
  $result_ = $mysqli->query($query_) or die($mysqli->error.__LINE__);
  
  
  if($result_->num_rows > 0) {
    while($row_ = $result_->fetch_assoc()) {
        
    $date =  $row_["date"]; 
    $staff = $row_["user_name"];
    $email = $row_["email"];
    $userid = $row_["user_id"];
    $mobile = $row_["mobile"];
    $remarks = $row_["remarks"];
    $department = $row_["department"] ;   
      }
    }


    $Rdata="";
    $total=0;

    $query_i="select * from account_quotation_item where receipt_no = '$receipt_no'  ";
  $result_i = $mysqli->query($query_i) or die($mysqli->error.__LINE__);
  
  
  if($result_i->num_rows > 0) {
    while($row_i = $result_i->fetch_assoc()) {
        
    $total =$total +  $row_i["total"];

    

    $Rdata .='
    
    <tr class="item">
            <td> '.$row_i["item"].' </td>
            <td>'. $row_i["price"].'</td>
            <td>'. $row_i["quantity"].'</td>
            <td class="text-align-right">'. $row_i["total"].'</td>
            </tr>
    
    ';

    
      }
    }

// add a page
$pdf->AddPage();

$html = <<<EOF


    <style>
    .invoice-box {
        max-width: 100%;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 12px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }

    .marg {
        text-align: right;
    }

    .invoice-box table {
        width: 100%;    
        text-align: left;
        border-spacing: 0;
        border-collapse: collapse;
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
        background-color: #f7f7f7;
        border-bottom: 1px solid #ff5544;
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
        /*font-weight: bold;*/
    }

    .text-align-right {
        text-align: right;
    }

    @media  only screen and (max-width: 600px) {
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


<table cellpadding="5"    >
<tr class="top">
<td >
<table style=" " >
<tr>
<td  >
<div style="  ">
<h1> MJGE Quotation  </h1>
</div>
</td>

</tr>
</table>
</td>
</tr>

<div class="invoice-box">
<table  cellpadding="8"  >
<tr class="heading" >
        <td width="75%" class="title">
        By <br>
        $staff   ($userid)
        </td>

        <td width="25%" >
            Date: $date<br>
            Quotation No.: QU-$receipt_no 
        </td>
    </tr>

     <tr >
        <td width="50%">
                                
        
             <b>E-mail:-</b>$email<br>
             <b>Mobile:-</b>$mobile<br>
        </td>
        <td width="50%">
        <b>Purpose:-</b> $remarks<br>
       <b>Department:-</b>  $department 
   </td>
     </tr>
  
     

            <tr  class="heading">
                <td width="40%">Item</td>
                <td width="20%">Price</td>
                <td width="20%">Quantity</td>
                <td width="20%" class="text-align-right">Total</td>
            </tr>

            
            $Rdata

                    </table>

                    <table >
                    <tr>
                  
                    <td></td>
                    <td></td>
                  
            
                    <td>
                    <div class="marg">
                       <b>Total Price: $total Rs.</b><br>
                       </div>

                    </td>
                </tr>
    
                    </table>
    </div>



EOF;

// output the HTML content  
$pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
$pdf->Output('Invoice.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
