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

require_once '../../includes/db.php';

//$student_id=$_REQUEST['student'];

// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include_lab_mis.php');

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

	// Page footer
  public function Footer() {
  // Position at 15 mm from bottom
    $this->SetY(-10);
		// Set font
		$this->SetFont('helvetica', 'I', 8);
		// Page number
		$this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'R', 0, '', 0, false, 'T', 'M');
	}
}


// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
//$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Zinota Remedies');
$pdf->SetTitle('Lab MSI');
$pdf->SetSubject('Report');
$pdf->SetKeywords('Zinota, PDF, labmsi, lab, Zinota lab');


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


// set some text to print
/*$query="select * from student_qualification where student_id = '$student_id'  ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);


if($result->num_rows > 0) {

  $aca_data="";
	while($row = $result->fetch_assoc()) {
      
  // $firstname =  $row["firstname"];

   $aca_data .= '
   
   <tr>

   <td>'.$row["Qualification"].'</td>
   <td>'.$row["School_Collage"].'</td>
   <td>'.$row["Board_University"].'</td>
   <td>'.$row["Subject_Studied"].'</td>
   <td>'.$row["Year_of_Passing"].'</td>
   <td>'.$row["Marks"].'</td>

   </tr>

   ';

    }
  }


  $query_="select * from mj_student as s join guardian_details as g on s.emp_id = g.student_id join student_course_applied as c on s.emp_id = c.student_id where s.emp_id = '$student_id'  ";
  $result_ = $mysqli->query($query_) or die($mysqli->error.__LINE__);
  
  
  if($result_->num_rows > 0) {
    while($row_ = $result_->fetch_assoc()) {
        
    $firstname =  $row_["firstname"];
    $middlename =  $row_["middlename"];
    $lastname =  $row_["lastname"];
    $fathername =  $row_["father"];
    $mothername =  $row_["mother"];
    $dob =  $row_["dob"];
    $mobile =  $row_["mobile"];
    $gender =  $row_["gender"];
    $caste_category =  $row_["caste_category"];
    $country =  $row_["country"];
    $address =  $row_["address"];
    $pincode =  $row_["pincode"];
    $college_name =  $row_["college_name"];


    
    $subject_name =  $row_["subject_name"];

    
    $gname =  $row_["name"];
    $grelationship =  $row_["relationship"];
    $gphone =  $row_["phone"];


    
      }
    }
  */

// set font
$pdf->SetFont('helvetica', '', 10);

// add a page
$pdf->AddPage();
// Set some content to print



$html = '<span style="text-align:justify;">

<style>
 h1{
   text-align: center; 
   font-size: 30px;
}


p1{
  text-align: center; 
  font-size: 10px;
}

p2{
  font-size: 10px;
}

hr
{
  border: none;
  height: 0.1px;
}


hr.new1
{
  border: none;
  height: 1px;
}

</style>


<font size="12"><table style="width: 100%;">

<tr style="width: 100%;"> <td></td></tr>
<tr style="width: 100%;">
    <td style="width: 40%;"><img src="images/Zinota_logo.png"> </td>
    <td style="width: 60%; text-align: right">Daily Invoice Report</td>
  </tr>
  </table>

  <font size="8"><table style="width: 100%;">

  <tr style="width: 100%;">

    <td style="width: 70%;">Lab Name:NNLab</td>
    <td style="width: 50%;">Generated on: 08-01-21</td>
    </tr>
    <tr style="width: 100%;">
    <td style="width: 70%;">Address: 44/5 Nehru Nagar WEST, Bhilai, C.G.</td>
    <td style="width: 60%;">Sale Date: From [08-01-21 - 08-01-21]</td>
    </tr>
    <tr style="width: 100%;">
    <td style="width: 40%;">Email: info@zinota.in</td>
  </tr>
</table>

<p></p>

<hr>
<table style="width: 100%;">
<tr style="width: 100%;" >
<td style="width: 45%;"></td>
<td style="width: 50%;"> <b>SALE REPORT </b></td>
</tr>
</table>

<hr style="background-color: #a6a6a6;">
<font size="6"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 4%;"><b>S.No</b></td>
<td style="width: 7%; text-align: centre"><b> Booking Date</b></td>
<td style="width: 7%; text-align: centre"><b>INVOICE ID</b></td>
<td style="width: 9%; text-align: centre"><b>BILLED BY</b></td>
<td style="width: 9%; text-align: centre"><b>PATIENT NAME</b></td>
<td style="width: 8%; text-align: centre"><b>TOTAL</b></td>
<td style="width: 8%; text-align: centre"><b>DISCOUNT</b></td>
<td style="width: 8%; text-align: centre"><b>PAYABLE</b></td>
<td style="width: 8%; text-align: centre"><b>ADVANCE</b></td>
<td style="width: 8%; text-align: centre"><b>BALANCE (A)</b></td>
<td style="width: 8%; text-align: centre"><b>COL.EXPENSE (B)</b></td>
<td style="width: 8%; text-align: centre"><b>BALANCE (A-B)</b></td>
<td style="width: 8%; text-align: centre"><b>PAID BALANCE</b></td>
</tr>
</table>
<hr border= "5">

<font size="6"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 4%;"><b>0 </b></td>
<td style="width: 7%; text-align: centre"><b>1</b></td>
<td style="width: 7%; text-align: centre"><b>2</b></td>
<td style="width: 9%; text-align: centre"><b>3</b></td>
<td style="width: 9%; text-align: centre"><b>4</b></td>
<td style="width: 8%; text-align: centre"><b>5</b></td>
<td style="width: 8%; text-align: centre"><b>6</b></td>
<td style="width: 8%; text-align: centre"><b>7</b></td>
<td style="width: 8%; text-align: centre"><b>8</b></td>
<td style="width: 8%; text-align: centre"><b>9</b></td>
<td style="width: 8%; text-align: centre"><b>10</b></td>
<td style="width: 8%; text-align: centre"><b>11</b></td>
<td style="width: 8%; text-align: centre"><b>12</b></td>
</tr>
</table>

<hr style="color: #ff0000;">
<p></p>

<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 50%;"><b></b></td>
<td style="width: 10%;"><b>Grand Total:</b></td>
<td style="width: 7%; text-align: centre"><b>9090.00</b></td>
<td style="width: 10%; text-align: centre"><b>0.00</b></td>
<td style="width: 15%; text-align: centre"><b>2935.00</b></td>
<td style="width: 10%; text-align: centre"><b>6155</b></td>
</tr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Collection Value: 465.00</b></td>
</tr>
<tr><td></td></tr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Sale Value: 9999.00</b></td>
</tr>

<hr>
</table>
<p><br></p>



<hr>
<table style="width: 100%;">
<tr style="width: 100%;" >
<td style="width: 40%;"></td>
<td style="width: 50%;"><b> BALANCE PAYMENT REPORT</b></td>
</tr>
</table>

<hr>
<font size="6"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 5%;"><b>S.No</b></td>
<td style="width: 7%; text-align: centre"><b> Booking Date</b></td>
<td style="width: 7%; text-align: centre"><b>PAYMENT DATE</b></td>
<td style="width: 9%; text-align: centre"><b>INVOICE ID</b></td>
<td style="width: 9%; text-align: centre"><b>BILLED BY</b></td>
<td style="width: 9%; text-align: centre"><b>PATIENT NAME</b></td>
<td style="width: 8%; text-align: centre"><b>TOTAL</b></td>
<td style="width: 8%; text-align: centre"><b>DISCOUNT</b></td>
<td style="width: 8%; text-align: centre"><b>PAYABLE</b></td>
<td style="width: 8%; text-align: centre"><b>ADVANCE</b></td>
<td style="width: 10%; text-align: centre"><b>COL.EXPENSE</b></td>
<td style="width: 8%; text-align: centre"><b>PAID BALANCE</b></td>
</tr>
</table>
<hr>

<font size="6"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 5%;"><b>0</b></td>
<td style="width: 7%; text-align: centre"><b>1</b></td>
<td style="width: 7%; text-align: centre"><b>2</b></td>
<td style="width: 9%; text-align: centre"><b>3</b></td>
<td style="width: 9%; text-align: centre"><b>4</b></td>
<td style="width: 8%; text-align: centre"><b>5</b></td>
<td style="width: 8%; text-align: centre"><b>6</b></td>
<td style="width: 8%; text-align: centre"><b>7</b></td>
<td style="width: 8%; text-align: centre"><b>8</b></td>
<td style="width: 8%; text-align: centre"><b>9</b></td>
<td style="width: 10%; text-align: centre"><b>10</b></td>
<td style="width: 8%; text-align: centre"><b>12</b></td>
</tr>
</table>

<hr>
<p></p>

<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 50%;"><b></b></td>
<td style="width: 10%;"><b>Grand Total:</b></td>
<td style="width: 7%; text-align: centre"><b>9090.00</b></td>
<td style="width: 10%; text-align: centre"><b>0.00</b></td>
<td style="width: 15%; text-align: centre"><b>2935.00</b></td>
<td style="width: 10%; text-align: centre"><b>6155</b></td>
</tr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Collection Value: 465.00</b></td>
</tr>
<tr><td></td></tr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Sale Value: 9999.00</b></td>
</tr>

<hr>
</table>

<p></p>


<hr>
<table style="width: 100%;">
<tr style="width: 100%;" >
<td style="width: 40%;"></td>
<td style="width: 50%;"><b> OVERALL PENDING SALE REPORT</b></td>
</tr>
</table>

<hr>
<font size="6"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 5%;"><b>S.No</b></td>
<td style="width: 10%; text-align: centre"><b>Booking Date</b></td>
<td style="width: 9%; text-align: centre"><b>INVOICE ID</b></td>
<td style="width: 9%; text-align: centre"><b>BILLED BY</b></td>
<td style="width: 9%; text-align: centre"><b>PATIENT NAME</b></td>
<td style="width: 8%; text-align: centre"><b>TOTAL</b></td>
<td style="width: 8%; text-align: centre"><b>DISCOUNT</b></td>
<td style="width: 8%; text-align: centre"><b>PAYABLE</b></td>
<td style="width: 8%; text-align: centre"><b>ADVANCE</b></td>
<td style="width: 10%; text-align: centre"><b>COL.EXPENSE</b></td>
<td style="width: 8%; text-align: centre"><b>BALANCE</b></td>
</tr>
</table>
<hr>

<font size="6"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 5%;"><b>0</b></td>
<td style="width: 10%; text-align: centre"><b>1</b></td>
<td style="width: 9%; text-align: centre"><b>3</b></td>
<td style="width: 9%; text-align: centre"><b>4</b></td>
<td style="width: 8%; text-align: centre"><b>5</b></td>
<td style="width: 8%; text-align: centre"><b>6</b></td>
<td style="width: 8%; text-align: centre"><b>7</b></td>
<td style="width: 8%; text-align: centre"><b>8</b></td>
<td style="width: 8%; text-align: centre"><b>9</b></td>
<td style="width: 10%; text-align: centre"><b>10</b></td>
<td style="width: 8%; text-align: centre"><b>12</b></td>
</tr>
</table>

<hr>
<p></p>

<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 50%;"><b></b></td>
<td style="width: 10%;"><b>Grand Total:</b></td>
<td style="width: 7%; text-align: centre"><b>9090.00</b></td>
<td style="width: 10%; text-align: centre"><b>0.00</b></td>
<td style="width: 15%; text-align: centre"><b>2935.00</b></td>
<td style="width: 10%; text-align: centre"><b>6155</b></td>
</tr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Pending Balance: 465.00</b></td>
</tr>
<tr><td></td></tr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Sale Value: 9999.00</b></td>
</tr>

<hr>
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Collection: 488.00</b></td>
</tr>

<hr class="new1">
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total CASH: 545.00</b></td>
</tr>

<hr class="new1">
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total Sale Value: 9999.00</b></td>
</tr>

<hr class="new1">
</table>

<hr class="new1">
<font size="7"><table style="width: 100%;">
<tr style="width: 100%;">
<td style="width: 80%;"><b></b></td>
<td style="width: 20%;"><b>Total ONLINE: 0</b></td>
</tr>

<hr class="new1">
</table>

<p></p>

</span>';

// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);
// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('TestReport.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
