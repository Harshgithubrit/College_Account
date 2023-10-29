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
require_once('tcpdf_include_test_report.php');

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {


	// Page footer
  public function Footer() {
  // Position at 15 mm from bottom
    $this->SetY(-30);
    //footer note
    $footer_note_html = '<font size= "8"><table style="width: 100%;">
    <tr style="width: 100%;">
    <td style="width: 60%;">Note:</td>
    </tr>
    </table>';
    $this->writeHTML($footer_note_html, true, 0, true, 0);
    //footer image and text
    $footer_image_file = 'images/Zinota_logo.png';
    $footer_logo_html = '<font size= "10"><table style="width: 100%;">
    <tr style="width: 100%;">
    <td style="width: 60%;">Technician</td>
    <td style="width: 25%;">Dr.R.K.CHANDRAKAR</td>
    <td style="width: 10%;"><img width="400px" height="150px" style= "width:100px; height:100px;" src="' . $footer_image_file . '" /></td>
    </tr>
    </table>';
    $this->writeHTML($footer_logo_html, true, 0, true, 0);
    
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

<table style="width: 100%;">

<tr style="width: 100%;">
    <td style="width: 15%;">Lab No </td>
    <td style="width: 30%;">:SID000983</td>
  </tr>

  <tr style="width: 100%;">
    <td style="width: 15%;"><b>NAME </b></td>
    <td style="width: 55%;">: MR. C.P. Verma __________ Age: 49Years,male </td>
    <td style="width: 30%;"> Reporting Date : 23-12-2020</td>
  </tr>

  <tr style="width: 100%;">
  <td style="width: 15%;">Referred by</td>
  <td style="width: 55%;">: Dr. Sanjeev Kashyap(MBBS)</td>
  <td style="width: 30%;"> Sampling Date : 23-12-2020</td>

</tr>
</table>

<p> ------------------------------------------------------------------------------------------------------------------------------------------------------</p>

<table style="width: 100%;">
<tr style="width: 100%;" >
<td style="width: 45%;"> Investigation </td>
<td style="width: 35%;"> Result </td>
<td style="width: 80%;"> Normal Values </td>
</tr>
</table>

<p> ------------------------------------------------------------------------------------------------------------------------------------------------------</p>

<font size="12"><table style="width: 100%;">

<tr>
<td style= "text-align: center;"> <h>HAEMATOLOGY</h> </td>
</tr> <br>

  <tr style="width: 100%;">
  <td style="width: 45%;"> HEMOGLOBIN </td>
  <td style="width: 35%;"> 16.0   gm/dl </td>
  <td style="width: 80%;"> 12 - 17 </td>
  </tr><br>

  <tr>
    <td>RBC INDICES</td>
  </tr>

  <tr style="width: 100%;">
  <td style="width: 45%;"> RBC COUNT </td>
  <td style="width: 35%;"> 5.48 mil/cu.mm </td>
  <td style="width: 80%;"> 4.1 - 5.5 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> HAEMATOCRIT </td>
  <td style="width: 35%;"> 50.0% </td>
  <td style="width: 80%;"> 40 - 50 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> MCV </td>
  <td style="width: 35%;"> 92.2 fl </td>
  <td style="width: 80%;"> 83 - 101 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> MCH </td>
  <td style="width: 35%;"> 31.0 pg </td>
  <td style="width: 80%;"> 27 - 32 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> MCHC </td>
  <td style="width: 35%;"> 33.6 g/dl </td>
  <td style="width: 80%;"> 32 - 36 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> RDW </td>
  <td style="width: 35%;"> 15.4% </td>
  <td style="width: 80%;"> 11.6-14.0 </td>
</tr>

</table>
<p><br></p>

<font size="12"><table style="width: 100%;">

<tr>
<td style= "text-align: center;"> <h>HAEMATOLOGY</h> </td>
</tr> <br>

  <tr style="width: 100%;">
  <td style="width: 45%;"> HEMOGLOBIN </td>
  <td style="width: 35%;"> 16.0   gm/dl </td>
  <td style="width: 80%;"> 12 - 17 </td>
  </tr><br>

  <tr>
    <td>RBC INDICES</td>
  </tr>

  <tr style="width: 100%;">
  <td style="width: 45%;"> RBC COUNT </td>
  <td style="width: 35%;"> 5.48 mil/cu.mm </td>
  <td style="width: 80%;"> 4.1 - 5.5 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> HAEMATOCRIT </td>
  <td style="width: 35%;"> 50.0% </td>
  <td style="width: 80%;"> 40 - 50 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> MCV </td>
  <td style="width: 35%;"> 92.2 fl </td>
  <td style="width: 80%;"> 83 - 101 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> MCH </td>
  <td style="width: 35%;"> 31.0 pg </td>
  <td style="width: 80%;"> 27 - 32 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> MCHC </td>
  <td style="width: 35%;"> 33.6 g/dl </td>
  <td style="width: 80%;"> 32 - 36 </td>
  </tr>

  <tr>
  <td style="width: 45%;"> RDW </td>
  <td style="width: 35%;"> 15.4% </td>
  <td style="width: 80%;"> 11.6-14.0 </td>
</tr>

</table>
<p><br></p>

<p></p>
<p </p>

</span>';

// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);
// ---------------------------------------------------------

$pdf->AddPage();
// Set some content to print
$html = <<<EOD


<style>
h1{
  font-size: 20px;}

  p{
    text-align: justify;
  }
</style>

<h1>12. Academic Qualification </h1>
<p>I hereby declare that all the particulars furnishes by me in this application are true to the best of my knowledge and belief.
I have read all the contents and the terms and conditions contained in the information brochureand I shall abide by them. In the event of suppression
or distortion of any fact like category, qualification, nationality, etc. given my application for, I understand that if already admitted, my admission/degree
acquired is liable for cancellation. I also understand that the decision of the college management regarding my admission will be final and I shall abide by 
the same. Further. if admitted, I promise to abide by the rules, norms, and descipline of the college.</p>

<p> <br></p>
<p style="text-align: right"> Signature of the Candidate</p>

<h1>13. Declaration by the Parent/Guardian </h1>
<p>I hereby declare that I have known the financial obligation of my ward and I can afford to pay all the costs and I undertake to paay the tuition
and other fees payable to the college under the rules in force and which may be framed from time to time by the management. I am aware that the fee paid
to the college for admission will be forfeited in case of his/her discontinuation of the studies on any reason. I also stand by the declaration given 
by my son/daughter/ward to the college.</p>

<p> <br></p>
<p style="text-align: right"> Signature of the Parents/Local Guardian</p>
<p style="text-align: right"> Mob: ......................................................</p>


<p> <br></p>
<p> <br></p>

<p>14. Your complete mailing address including your name, area, pincode(see instuctions for filling up application form
in the brochure).</p1>
<p>_________________________________________________________________________________________
_____________________________________________________________________________________________
________________________________________________________________________________________</p><br>

<p><br></p>

<p style="text-align: right"> ______________________</p>

<p style="text-align: right"> Signature of the Candidate</p> <br>
<p><br></p>

<p style="text-align: right"> ________________________________</p>

<p style="text-align: right"> Countersigned by Parent/Guardian</p> <br>


<p style="text-align: right"> Date: ________________________</p> <br>

<p><br></p>
<p><br></p>


EOD;


$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);

//Close and output PDF document
$pdf->Output('TestReport.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
