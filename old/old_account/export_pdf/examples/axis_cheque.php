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
    //     $this->SetY(-45);
    //     //footer note
    //      //footer image and text
    //     $footer_image_file = '../../images/logo.png';
    //     $footer_logo_html = '
        
        
    //     <table style="width: 100%;">
    //     <tr style="width: 100%;">
       
    //     <td width="85%">
    //     <h4 >M.J. COLLEGE</h4> 
    // <p >(Affiliated to Durg Vishwa Vidyalaya, Durg - Chhattisgarh)
    // Kohka Junwani Road, Infront of C.S.E.B.Substation,
    // Kohka, Bhilai(C.G.) Phone No.: 0788-2295044, 2295033.
    // </p>
    //     </td>
    
    //     <td width="15%">
        
    // <br>
    // <br>
    // <br>
    // <img width="100px" height="80px"  style= "width:100px; height:100px;" src="' . $footer_image_file . '" /></td>
        
        
    //     </tr>
    //     </table>';
    //     $this->writeHTML($footer_logo_html, true, 0, true, 0);
        
		}

	// Page footer
  public function Footer() {
  // Position at 15 mm from bottom

    	// Set font
		// $this->SetFont('helvetica', 'B', 8);
		// // Page number
		// $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'R', 0, '', 0, false, 'T', 'M');
	
		// Set font
	}
}



// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
//$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('MJGE Cheque');
$pdf->SetTitle('Cheque Print');
$pdf->SetSubject('MJGE');
$pdf->SetKeywords('MJGE, PDF, Cheque, MJGE, MJGE Cheque');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));

// set footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);


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

 $cheque_no = $_REQUEST["cheque_no"];
 $print_cheque= "";

 $query_= " select * from cheque_master where cheque_number = '$cheque_no'  ";
  $result_ = $mysqli->query($query_) or die($mysqli->error.__LINE__);
  
  
  if($result_->num_rows > 0) {
    while($row_ = $result_->fetch_assoc()) {
        
    $cheque_number =  $row_["cheque_number"];  
    
    $print_cheque.='
    
    <table style="width: 100%;">
    <tr style="width: 100%;">
       <td style="width: 60%; font-size: 8px;">
       <img src="images/axis.png" style="width: 180px; height: 40px;">
       <br>Nehru Nagar Square, 490020 IFSC CODEA - UTIB0001547</td>

       <td style="width: 40%;"><p style="font-size: 8px; text-align: center;"><b>VALID FOR THREE MONTHS FROM THE DATE OF ISSUE</b></p><br>

       <table border= "1">
       <tr><td>
       </td><td>
       </td><td>
       </td><td>
       </td><td>
       </td><td>
       </td><td>
       </td><td>
       </td></tr>
       </table>

       <table>
       <tr style="text-align: center;"><td>D</td><td>D</td><td>M</td><td>M</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td></tr>
       </table>

       </td>
    </tr><br>

    <tr style="width: 100%;">
        <th colspan="2" style="font-size: 10px; width: 100%;">Pay____________________________________________________________________________________________________or Bearer</th>
        
    </tr><br>

    <tr style="width: 100%;">
        <th colspan="2" style="font-size: 10px;">Rupees_________________________________________________________________________________________________________<br><br>_________________________________________________________________________________Rs.____________________________</th>
        
    </tr><br>

    <tr style="width: 60%; height: 40%;">
    <th border = "1" style="font-size: 16px; width: 15%;  height: 20px; text-align: center;">
    <b>A/c. No.</b></th>
    <th border = "1" style="font-size: 10px; width: 50%;  height: 20px;"></th>
      
    <th style="font-size: 10px; width: 35%;  height: 20px; text-align: right;">
    <img src="images/test.jpg" style="width: 80px; "></th>
    </tr>
    <tr style="width: 100%;">
    <th style="text-align: center; width: 87%; font-size: 8px;">Payable at pat at all branches of Axis Bank Ltd in India</th>
    <th style="text-align: right; width: 13%; font-size: 8px;">Please sign above</th>
    </tr>

    <tr style="width: 100%;">
    <th style="width: 100%;"><p style="text-align: center;">
    <br><b>||*'.$cheque_number.'||* 490211003|: 000190|" 31</b></p></th>
    </tr>

 </table>
 <br>
 <br>
 <br>
 <br>
    ';

      }
    }


// add a page
$pdf->AddPage();

$html = <<<EOF

$print_cheque



      
EOF;

// output the HTML content  
$pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
$pdf->Output('Invoice.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
