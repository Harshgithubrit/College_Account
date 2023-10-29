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

$student_id=$_REQUEST['student_id'];
$receipt_id=$_REQUEST['receipt_id'];
$rid=$_REQUEST['rid'];



// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('MJGE');
$pdf->SetTitle('Student Fee');
$pdf->SetSubject('Profile');
$pdf->SetKeywords('MJGE, PDF, Student, Fee, Details');

// remove default header/footer
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_RIGHT);

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


function displaywords($number){
   $no = round($number);
   $point = round($number - $no, 2) * 100;
   $hundred = null;
   $digits_1 = strlen($no);
   $i = 0;
   $str = array();
   $words = array('0' => '', '1' => 'One', '2' => 'Two',
    '3' => 'Three', '4' => 'Four', '5' => 'Five', '6' => 'Six',
    '7' => 'Seven', '8' => 'Eight', '9' => 'Nine',
    '10' => 'Ten', '11' => 'Eleven', '12' => 'Twelve',
    '13' => 'Thirteen', '14' => 'Fourteen',
    '15' => 'Fifteen', '16' => 'Sixteen', '17' => 'Seventeen',
    '18' => 'Eighteen', '19' =>'Nineteen', '20' => 'Twenty',
    '30' => 'Thirty', '40' => 'Forty', '50' => 'Fifty',
    '60' => 'Sixty', '70' => 'Seventy',
    '80' => 'Eighty', '90' => 'Ninety');
   $digits = array('', 'Hundred', 'Thousand', 'Lakh', 'Crore');
   while ($i < $digits_1) {
     $divider = ($i == 2) ? 10 : 100;
     $number = floor($no % $divider);
     $no = floor($no / $divider);
     $i += ($divider == 10) ? 1 : 2;


     if ($number) {
        $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
        $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
        $str [] = ($number < 21) ? $words[$number] .
            " " . $digits[$counter] . $plural . " " . $hundred
            :
            $words[floor($number / 10) * 10]
            . " " . $words[$number % 10] . " "
            . $digits[$counter] . $plural . " " . $hundred;
     } else $str[] = null;
  }
  $str = array_reverse($str);
  $result = implode('', $str);


  $points = ($point) ?
    "" . $words[$point / 10] . " " . 
          $words[$point = $point % 10] : ''; 

  if($points != ''){        
  return $result;
} else {

    return $result;
}

}


  // echo $query_="select * from college_fee as f join college as c on c.college_id = f.college_id join student_course_applied as z on f.student_id = z.student_id where f.student_id = '$student_id' and z.pursuing_passed = 'Pursuing' and f.receipt_no= '$receipt_id' and f.id = $rid ";
 
  $query_="select * from college_fee as f join college as c on c.college_id = f.college_id join student_course_applied as z on f.student_id = z.student_id where f.student_id = '$student_id' and z.pursuing_passed = 'Pursuing' and f.receipt_no= '$receipt_id'";
  
  $result_ = $mysqli->query($query_) or die($mysqli->error.__LINE__);


  
  if($result_->num_rows > 0) {
    while($row_ = $result_->fetch_assoc()) {
        
    $name =  $row_["student_name"];
    $sem_year = $row_["sem_year"];
    $sem_year_type = $row_["batch_session"];

   $date = date("d-m-Y", strtotime($row_["date"]));
    $time =  $row_["time"];
    $college_id =  $row_["college_id"];
    $college_id =  $row_["college_id"];



    $tuition_fee =  $row_["tuition_fee"];
    $caution_money =  $row_["caution_money"];
    $college_magazine_fee =  $row_["college_magazine_fee"];
    $university_fee =  $row_["university_fee"];
    $sports_fee =  $row_["sports_fee"];
    $library_fee =  $row_["library_fee"];
    $prospectus_fee =  $row_["prospectus_fee"];
    $others =  $row_["others"];

    $forwarding_fee =  $row_["forwarding_fee"];
    $total_fee =  $row_["total_fee"];
    $cheque_dd_date =  date("d-m-Y", strtotime($row_["cheque_dd_date"]));


    $college_name =  $row_["college_name"];

    $tot_in_words=displaywords($total_fee);


    
    $course_type_name =  $row_["course_type_name"];

  
    $cheque_dd_no =  $row_["cheque_dd_no"];
  /*     $grelationship =  $row_["relationship"];
    $gphone =  $row_["phone"];

*/


      }
    }


// set font
$pdf->SetFont('helvetica', '', 10);

// add a page
$pdf->AddPage();
// Set some content to print



$html = <<<EOD

<style>
 h1{
   text-align: left; 
   font-size: 40px;
}

h2{
  text-align: center; 
  font-size: 30px;
  font-weight: bold;
}

p1{
  text-align: left; 
  font-size: 10px;
}

p2{
  font-size: 10px;
}





</style>

<h3> Fee Receipt </h3>

<table  style="width: 100%; ">
<tr style="width: 100%;" >
    <th  width="80%"  >  
    <h3>$college_name</h3> <br>
    <p1>(Affiliated to Durg Vishwa Vidyalaya, Durg - Chhattisgarh)</p1><br>
    <p1>Kohka Junwani Road, Infront of C.S.E.B.Substation,</p1><br>
    <p1>Kohka, Bhilai (C.G.) Phone No. :0788-2295044, 2295033.</p1>
    </th>
    
    <th width="20%" style="width: 80px; height:80px;" >
    <img src="../../images/logo.png">
    
    <p><br></p>
    <p> Receipt No.<b>  $receipt_id </b> </p>
    <p><b> Date.   $date </b> </p>
    </th>
  </tr>

</table>


<table style= "
border-collapse:separate;
border:solid black 1px;
border-radius:6px;
-moz-border-radius:6px;">
  <tr>
    <th></th>
    <th></th>
  </tr>

  
  <tr>
    <td>1. Received From Shri/Smt./Ku. </td>
      <td><b> $name ($student_id)</b></td>
  </tr>

  <tr>
    <th></th>
  </tr>

  <tr>
  <td>2. Class: $sem_year $sem_year_type</td>
  <td> Subcect: $course_type_name </td>
  </tr>
</table>

<p><br></p>

<table border="0.5"  style= " padding: 5px;
border-collapse: collapse;
border:solid black 1px;
border-radius:6px;
-moz-border-radius:6px;">
  <tr>
  <th style="width:10%">S.No.</th>
	<th style="width: 50%">On Account Of</th>
	<th style="width:40%; text-align:left;">Amount</th>
  </tr>

  <tr>
  <th>1.</th>
	<th>Tution Fee</th>
	<th style="text-align:left;">$tuition_fee </th>
  </tr>

  <tr>
  <th>2.</th>
	<th>Caution Money Deposit</th>
	<th style="text-align:left;">$caution_money</th>
  </tr>

  <tr>
  <th>3.</th>
	<th>College Magazine Charges</th>
	<th style="text-align:left;">$college_magazine_fee</th>
  </tr>

  <tr>
  <th>4.</th>
	<th>University Charges</th>
	<th style="text-align:left;">$university_fee</th>
  </tr>

  <tr>
  <th>5.</th>
	<th>Sports Fee</th>
	<th style="text-align:left;">$sports_fee</th>
  </tr>


  <tr>
  <th>6.</th>
	<th>Library Fee</th>
	<th style="text-align:left;">$library_fee</th>
  </tr>

  <tr>
  <th>7.</th>
	<th>Prospectus</th>
	<th style="text-align:left;">$prospectus_fee</th>
  </tr>

  <tr>
  <th>8.</th>
	<th>Others</th>
	<th style="text-align:left;">$others</th>
  </tr>

  <tr>
  <th>9.</th>
	<th>Forwarding Charges</th>
	<th style="text-align:left;">$forwarding_fee</th>
  </tr>

  <tr>
  <th></th>
	<th></th>
	<th></th>
  </tr>

  <tr>
  <th></th>
	<th></th>
	<th></th>
  </tr>

   <tr>
  <th></th>
	<th>Total</th>
	<th style="text-align:left;">$total_fee Rs.</th>
  </tr>

</table>

<table border="0.1"  style="width:100%"> 
  <tr>
  <th>(in Words Rs.) <i>$tot_in_words</i> </th>
  </tr>
</table>
<p><br></p>
<table style= "
border-collapse:separate;
border:solid black 1px;
border-radius:6px;
-moz-border-radius:6px;">
    
  <tr>
    <td>By Ch. No./Dd No. $cheque_dd_no </td>
    <td> Cheque Date $cheque_dd_date </td>
  </tr>

  <tr>
    <th></th>
  </tr>

  <tr>
  <td>Drawn on ___________________</td>
  </tr>
</table>

<table style= "
border-collapse:separate;
border:solid black 1px;
border-radius:6px;
-moz-border-radius:6px;">
  <tr> 
  <p><br></p>
  <p><br></p>
  <th>For, $college_name</th>
  </tr>
</table>


<p></p>
<p </p>
EOD;

// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);
// ---------------------------------------------------------

/*$pdf->AddPage();
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
<p><br></p>
<p><br></p>

<p style="text-align: center"> FOR OFFICE USE ONLY</p> <br>


<table  style="width: 100%; ">

<tr style="width: 100%;">

    <td width="35%">
  Admission No.
    </td>

    <td  width="45%"  >
    <p1><center> Signature of Admission asst.</center></p1> 
    </td>
    <td>
    <p1>Signature of Principal</p1>
    </td>
  </tr>

</table>

EOD;


$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);
*/
//Close and output PDF document
$pdf->Output('StudentFee.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
