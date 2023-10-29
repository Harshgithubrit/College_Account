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
require_once('tcpdf_include.php');

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

	//Page header
	/*public function Header() {
		// Logo
		$image_file = K_PATH_IMAGES.'logo_example.jpg';
		$this->Image($image_file, 10, 10, 15, '', 'JPG', '', 'T', false, 300, '', false, false, 0, false, false, false);
		// Set font
		$this->SetFont('helvetica', 'B', 20);
		// Title
		$this->Cell(0, 15, '<< TCPDF Example 003 >>', 0, false, 'C', 0, '', 0, false, 'M', 'M');
	}*/

	// Page footer
	public function Footer() {
		// Position at 15 mm from bottom
		$this->SetY(-15);
		// Set font
		$this->SetFont('helvetica', 'I', 8);
		// Page number
		$this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	}
}



// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Zinota Remedies');
$pdf->SetTitle('Test Report');
$pdf->SetSubject('Report');
$pdf->SetKeywords('Zinota, PDF, testreport, report, Zinota Pharma');

// remove default header/footer
$pdf->setPrintHeader(false);

// set footer fonts
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_RIGHT);
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

</style>

<img src = "Zinota_logo.png">

<p><br></p>
<p> ------------------------------------------------------------------------------------------------------------------------------------------------------</p>

<table style="width: 100%;">

<tr style="width: 100%;">
    <td style="width: 10%;">Min PRP:</td>
    <td style="width: 10%;">0</td>
    <td style="width: 8%;">To</td>
    <td style="width: 12%;">Max PRP:</td>
    <td style="width: 40%;">50</td>
    <td style="width: 12%;">Total Items:</td>
    <td style="width: 30%;">0000</td>
  </tr>
</table>

<p> ------------------------------------------------------------------------------------------------------------------------------------------------------</p>

<table style="width: 100%;">

<tr style="width: 100%;">
    <td style="width: 30%;">Item Name </td>
    <td style="width: 30%;">Batch No.</td>
    <td style="width: 30%;">Exp. Date</td>
    <td style="width: 30%;">MRP</td>
  </tr>
</table>

<p> ------------------------------------------------------------------------------------------------------------------------------------------------------</p>

<font size="12"><table style="width: 100%;">

  <tr style="width: 100%;">
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
  </tr>

  <tr style="width: 100%;">
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
  </tr>

  <tr>
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
  </tr>

  <tr>
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
  </tr>

  <tr>
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
  </tr>

  <tr>
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
  </tr>

  <tr>
  <td style="width: 30%;">HEMOGLOBIN </td>
  <td style="width: 30%;">16.0   gm/dl </td>
  <td style="width: 30%;">12 - 17 </td>
  <td style="width: 30%;">12 - 17 </td>
</tr>

</table>

<p><br></p>


<p></p>
<p></p>

</span>';

// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);
// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('Studentprofile.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
