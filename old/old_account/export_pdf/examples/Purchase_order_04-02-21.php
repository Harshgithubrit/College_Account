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
        $this->SetY(5);
        //footer note
         //footer image and text
        $header_image_file = 'logo.png';
        $header_logo_html = '<table style="width: 100%;">
        <tr style="width: 100%;">
       
        <td width="85%">
        <h1><b>M.J. COLLEGE</b></h1> 
        <h2>Purchase Order</h2>
    <p >(Affiliated to Durg Vishwa Vidyalaya, Durg - Chhattisgarh)
    Kohka Junwani Road,<br> Infront of C.S.E.B.Substation,
    Kohka, Bhilai(C.G.)<br> Phone No.: 0788-2295044, 2295033.
    </p>
        </td>
    
        <td width="15%">
        
    <br>
    <br>
    <br>
    <img width="100px" height="80px"  style= "width:100px; height:100px;" src="'. $header_image_file . '" />
    </td>
         </tr>
        </table>';
        $this->writeHTML($header_logo_html, true, 0, true, 0);
        
		}

	// Page footer
  public function Footer() {
  // Position at 15 mm from bottom
        $this->SetY(-25);   
        // Set font
        //footer text
        $this->SetFont('helvetica', 'B', 8);
        $footer_text_html = '<table style="width:100%;">
        <tr style="width:100%;">
        <td style="width:100%; text-align:right;"><b>Authorized Signature</b></td>
        </tr>
        </table>';
        $this->writeHTML($footer_text_html, true, 0, true, 0);
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
        font-weight: bold;
    }

    .invoice-box table tr.heading2 td {
        background-color: #78dfff;
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
        border-top: 2px solid #78dfff;
        font-weight: bold;
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


<table cellpadding="5"   style="width: 100%;" >
<tr  style="width: 100%;">
<td >
<table style=" " >
<tr>
<td  style="width: 80%;">
<div style=" ">
<p></p>
</div>
</td>
<td  style="width: 20%;">
<div style="  ">
<p></p>
</div>
</td>

</tr>
</table>
</td>
</tr>

<div class="invoice-box">
<table  cellpadding="8"  >
<tr class="heading" >
        <td width="75%" class="title" >

        </td>

        <td width="35%" >
            Date: 2018-03-28<br>
            Purchase Order No.: 43232
        </td>
    </tr>

</table>
<table >    
     <tr class="heading2">
        <td width="50%">VENDOR</td>
       
     </tr>

     <tr>
     <td width="50%">
                             
         My Company<br>
         123 Street<br>
         Example City
     </td>
     
     <td width="50%">
         Client name<br>
         456 Street<br>
         Client City
         
     </td>
  </tr>
     </table>

     <table style="width:100%;">    
     <tr class="heading2" style="width:100%;">
        <td style="width:30%;">DELIVERY DATE</td>   
        <td style="width:30%;">REQUESTED BY</td>
        <td style="width:23%;">APPROVED BY</td>
        <td style="width:17%;">DEPARTMENT</td>
     </tr>

  <tr  style="width:100%;">
     <td style="width:30%;">01/25/2021</td>   
     <td style="width:30%;">JOHN DOE</td>
     <td style="width:23%;">JOHN DOE</td>
     <td style="width:17%;">IT DEPARTMENT</td>
  </tr>
     </table>

     <table style="width:100%;">    
     <tr class="heading2" style="width:100%;">
        <td style="width:100%;">NOTES</td>
     </tr>

  <tr  style="width:100%;">
     <td style="width:30%;">Description ABCxyz</td>
  </tr>
     </table>


     <table style="width:100%;">

            <tr  class="heading2" style="width:100%;">
                <td width="30%">ITEM NAME</td>
                <td width="20%">ITEM CODE</td>
                <td width="15%">QTY.</td>
                <td width="15%">ITEM PRICE</td>
                <td width="10%">DISC.</td>
                <td width="10%">TOTAL</td>
            </tr>

            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>
            
            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>

            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>

            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>

            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>
            
            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>

            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>

            <tr style="width:100%;">
            <td width="30%">Omnis omnis id sed mollitia sit.</td>
            <td width="20%">10%</td>
            <td width="15%">10%</td>
            <td width="15%">10</td>
            <td width="10%">00.00</td>
            <td width="10%">Rs.74.94</td>
            </tr>

            <tr width="100%" ><br>
            <td width="75%"></td>
                <td width="40%">
                   <b>ORDER TOTAL: € 1.476,63</b><br>
                      Included tax: € 256,27
                </td>
            </tr>

                    </table>
                         
    </div>

       

EOF;

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
$pdf->Output('example_061.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
