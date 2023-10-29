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
require_once('tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Nicola Asuni');
$pdf->SetTitle('TCPDF Example 002');
$pdf->SetSubject('TCPDF Tutorial');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// remove default header/footer
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);



// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('times', 'BI', 20);

// add a page
$pdf->AddPage();

$html = <<<EOF

<style>
	body{
		font-family:'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
		text-align:center;
		color:#777;
	}
	
	body h1{
		font-weight:300;
		margin-bottom:0px;
		padding-bottom:0px;
		color:#000;
	}
	
	body h3{
		font-weight:300;
		margin-top:10px;
		margin-bottom:20px;
		font-style:italic;
		color:#555;
	}
	
	body a{
		color:#06F;
	}
	
	.invoice-box{
	
		margin:auto;
		padding:30px;
		border:1px solid #eee;
		box-shadow:0 0 10px rgba(0, 0, 0, .15);
		font-size:16px;
		line-height:24px;
		font-family:'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
		color:#555;
	}
	
	.invoice-box table{
		width:100%;
		text-align:left;
	}
	
	.invoice-box table td{
		padding:5px;
		vertical-align:top;
	}
	
	.invoice-box table tr td:nth-child(2){
		text-align:right;
	}
	
	.invoice-box table tr.top table td{
		padding-bottom:20px;
	}
	
	.invoice-box table tr.top table td.title{
		font-size:45px;
		line-height:45px;
		color:#333;
	}
	
	.invoice-box table tr.information table td{
		padding-bottom:40px;
	}
	
	.invoice-box table tr.heading td{
		background:#eee;
		border-bottom:1px solid #ddd;
		font-weight:bold;
	}
	
	.invoice-box table tr.details td{
		padding-bottom:20px;
	}
	
	.invoice-box table tr.item td{
		border-bottom:1px solid #eee;
	}
	
	.invoice-box table tr.item.last td{
		border-bottom:none;
	}
	
	.invoice-box table tr.total td:nth-child(2){
		border-top:2px solid #eee;
		font-weight:bold;
	}
	
	@media only screen and (max-width: 600px) {
		.invoice-box table tr.top table td{
			width:100%;
			display:block;
			text-align:center;
		}
		
		.invoice-box table tr.information table td{
			width:100%;
			display:block;
			text-align:center;
		}
	}
	</style>

    

<div class="invoice-box">
<table cellpadding="0" cellspacing="15">
<tr class="top">
<td colspan="2">
<table>
<tr>
<td class="title" >
<div style=" padding: 30px; ">
<img src="../../images/logo.png" style=" padding: 30px; width:120px; max-width:120px;">
</div>
</td>
<td>
<h4 >M.J. COLLEGE</h4> 
<p  style="font-size:10px;">(Affiliated to Durg Vishwa Vidyalaya, Durg - Chhattisgarh)

Kohka Junwani Road, Infront of C.S.E.B.Substation,</p>
<p  style="font-size:10px;">Kohka, Bhilai(C.G.) Phone No.: 0788-2295044, 2295033.
</p>

</td>
</tr>
</table>
</td>
</tr>
<tr class="information">
<td colspan="2">
<table>
<tr>
<td>


Acme Corp.<br>
John Doe<br>
<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5832373036183d20393528343d763b3735">[email&#160;protected]</a>

</td>
<td>

Invoice #: 123<br>
Created: January 1, 2015<br>
Due: February 1, 2015

</td>
</tr>
</table>
</td>
</tr>
<tr class="heading">
<td>
Payment Method
</td>
<td>
Check #
</td>
</tr>
<tr class="details">
<td>
Check
</td>
<td>
1000
</td>
</tr>
<tr class="heading">
<td>
Item
</td>
<td>
Price
</td>
</tr>
<tr class="item">
<td>
Website design
</td>
<td>
$300.00
</td>
</tr>
<tr class="item">
<td>
Hosting (3 months)
</td>
<td>
$75.00
</td>
</tr>
<tr class="item last">
<td>
Domain name (1 year)
</td>
<td>
$10.00
</td>
</tr>
<tr class="total">
<td></td>
<td>
Total: $385.00
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
