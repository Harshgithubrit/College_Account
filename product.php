<?php
session_start(); // Starting Session
{
    
    
function alert($msg) {
    echo "<script type='text/javascript'>alert('$msg');</script>";
}
    
    include_once('mysqldetail.php');

$uid=$_SESSION["username"];
$upass=$_SESSION["password"];
$ctype=$_SESSION["ctype"];

 $sqlc = "SELECT * FROM admin where user_id ='$uid' and password= '$upass'";  
 $resultc = mysqli_query($connect, $sqlc);  

 if(mysqli_num_rows($resultc) > 0)  
 {  
      while($rowc = mysqli_fetch_array($resultc))  
      { 
$Sname=$rowc["name"];
$Semail=$rowc["email"];
$mobile=$rowc["mobile"];
$userid=$rowc["user_id"];

 
$link11=$rowc["link1"];
$link22=$rowc["link2"];
$link33=$rowc["link3"];
$link44=$rowc["link4"];


$link55=$rowc["link5"];
$link66=$rowc["link6"];


$desc11=$rowc["desc1"];
$desc22=$rowc["desc2"];
$desc33=$rowc["desc3"];
$desc44=$rowc["desc4"];
$desc55=$rowc["desc5"];
$desc66=$rowc["desc6"];

$imgv1=$rowc["link1"];
$imgv2=$rowc["link2"];
$imgv3=$rowc["link3"];
$imgv4=$rowc["link4"];
$imgv5=$rowc["img5"];
$imgv6=$rowc["img6"];


$i_name=$rowc["i_name"];

$i_desc=$rowc["i_desc"];

$i_address=$rowc["i_address"];

$i_city=$rowc["i_city"];

$i_state=$rowc["i_state"];

$i_pin=$rowc["i_pin"];

$i_logo=$rowc["i_logo"];

$i_banner=$rowc["i_banner"];

$i_contact1=$rowc["i_contact1"];
$i_contact2=$rowc["i_contact2"];
$i_email=$rowc["i_email"];
$i_upi=$rowc["i_upi"];

$country=$rowc["country"];

$profile_active=$rowc["profile_active"];
$institute_active=$rowc["institute_active"];


  } }
  
  
    if($institute_active=="Blocked"){
                                  $notacc="visibility: visible";
                                 }else{ 
                                    $notacc="visibility: hidden";
                                }
                                
                                
                                    if($ctype=="Admin"){
                                  $changeData="visibility: visible";
                                 }else{ 
                                    $changeData="visibility: hidden";
                                }
}


$realimgpath="http://mjge.in/app/Ademodb/Videos/Online_T/admin/upload/";

	$msg = "";
	$image = $_FILES['image']['name'];
	if (isset($_POST['upload']) && $image !="" ) {
	    
	    	    
	    $image_info = @getimagesize($_FILES["image"]["tmp_name"]);
$image_width =$image_info[0];
$image_height = $image_info[1];


	$chkk = mysqli_real_escape_string($connect, $_POST['chkk']);
	
	  function doUp(){	
	      global $chkk,$link,$imagename,$desc,$fimage,$uid,$upass;
	      global $image,$imgv1,$imgv2,$imgv3,$imgv4,$imgv5,$imgv6;
	      global $image_text;
         include_once('mysqldetail.php');
	     global $connect; 
	    
	    $allowedExts = array("gif", "jpeg", "jpg", "png","GIF", "JPEG", "JPG", "PNG","SVG","svg");
$temp = explode(".", $_FILES["image"]["name"]);
$extension = end($temp);
if ((($_FILES["image"]["type"] == "image/gif")
|| ($_FILES["image"]["type"] == "image/jpeg")
|| ($_FILES["image"]["type"] == "image/jpg")
|| ($_FILES["image"]["type"] == "image/pjpeg")
|| ($_FILES["image"]["type"] == "image/x-png")
|| ($_FILES["image"]["type"] == "image/png")
|| ($_FILES["image"]["type"] == "image/GIF")
|| ($_FILES["image"]["type"] == "image/JPEG")
|| ($_FILES["image"]["type"] == "image/JPG")
|| ($_FILES["image"]["type"] == "image/SVG")
|| ($_FILES["image"]["type"] == "image/svg")
|| ($_FILES["image"]["type"] == "image/PJPEG")
|| ($_FILES["image"]["type"] == "image/X-PNG")
|| ($_FILES["image"]["type"] == "image/PNG"))
&& ($_FILES["image"]["size"] < 9900000)
&& in_array($extension, $allowedExts)) {
    if ($_FILES["image"]["error"] > 0) {
        alert("Return Code: " . $_FILES["image"]["error"] . "<br>");
    } else {
        
        
	    
	

		$image = $_FILES['image']['name'];
		$image_text = mysqli_real_escape_string($connect, $_POST['image_text']);




if($chkk==1){
    $link="link1";
    $desc ="desc1";
    $imagename="link1";
    $path="upload/".$imgv1;
}
if($chkk==2){
    $link="link2";
    $desc ="desc2";
    $imagename="link2";
    $path="upload/".$imgv2;
}
if($chkk==3){
    $link="link3";
    $desc ="desc3";
    $imagename="link3";
    $path="upload/".$imgv3;
}
if($chkk==4){
    $link="link4";
    $desc ="desc4";
    $imagename="link4";
    $path="upload/".$imgv4;
}


if($chkk==5){
    $link="link5";
    $desc ="desc5";
    $imagename="img5";
    $path="upload/".$imgv5;
}

if($chkk==6){
    $link="link6";
    $desc ="desc6";
    $imagename="img6";
    $path="upload/".$imgv6;
}


if (file_exists($path)) {
    unlink($path);
} 


date_default_timezone_set('Asia/Kolkata');
$date = date("Y-m-d");
$time = date("h:i:sa");

//$today = date("D M j G:i:s T Y");  
$time = date("F j, Y, g:i a"); 
$a = mt_rand(100000,999999); 

$random_name = strtotime($date)."MJGE".$a;

$fimage=$random_name.$image;
$imgpath = $realimgpath.$fimage;

	$target = "upload/".$random_name.basename($_FILES['image']['name']);

		if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		    
		    $sql = "UPDATE admin SET $link='$imgpath', $desc='$image_text', $imagename ='$fimage'  ";
$result = mysqli_query($connect, $sql);
		    
			alert("Image uploaded successfully ");
		}else{
			alert("Failed to upload image");
		}
		
header("Refresh:0; url=product.php");
	
        
    }
} else {
    alert("Invalid file");
} 
        
    }
	
	    if($chkk==6){
 
	       if($image_width==512 && $image_height==512){
    doUp();
    }else{
        alert("Invalid image ratio ".$image_width." X".$image_height." uploaded file must be 512 X 512 ratio");
    }
	       
	    }else if($image_width==1280 && $image_height==720){
    doUp();
    }else{
        alert("Invalid image ratio ".$image_width." X".$image_height." uploaded file must be 1280 X 720 ratio");
    }
    
    
  
}

//	$result = mysqli_query($db, "SELECT * FROM images");
 mysqli_close($connect);
?>






<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>MJGE EDUCATION</title>
    <!-- Favicon-->
    <link rel="icon" href="images/logo.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Morris Chart Css-->
    <link href="plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="css/themes/all-themes.css" rel="stylesheet" />
</head>

<body class="theme-cyan">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="product.php">MJGE <?php echo $ctype;?> </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->
                    <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
                    <!-- #END# Call Search -->
                   
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo "$Sname";?></div>
                    <div class="email"><?php echo "$Semail";?></div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="product.php"><i class="material-icons">person</i>Profile</a></li>
                            <li><a href="logout.php"><i class="material-icons">input</i>Sign Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MAIN NAVIGATION</li>
                    <li class="active">
                        <a href="index.php">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="logout.php" class=" waves-effect waves-block">
                            <i class="material-icons">lock_outline</i>
                            <span>Logout</span>
                        </a>
                    </li>
                    
                    
                   
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2020 <a href="javascript:void(0);">MJGE EDUCATION</a>.
                </div>
                <div class="version">
                    <b>Version: </b> 1.0.0
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
       
    </section>

    <section class="content">
        <div class="container-fluid">
            
			 <!-- Colored Card - With Loading -->
            <div class="block-header">
                <h2>
                    <?php echo $ctype;?> Profile
                    <small>All Menu<a href="" target="_blank"></a></small>
                </h2>
            </div>
            <div class="row">
                
                
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header bg-light-blue">
                            <h2>
                                Account Details <small>Description</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                  <i class="material-icons">account_circle</i>
                            </ul>
                        </div>
                        <div class="body">
                       
                       <div class="row clearfix">
                                <div class="col-md-4">
                                    <h2 class="card-inside-title">User ID</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">account_box</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" value="<?php echo $userid;?>" placeholder="User ID" disabled >
                                        </div>
                                        <span class="input-group-addon">
                                       
                                </span>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Name</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">person</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="Sname" value="<?php echo $Sname;?>" placeholder="Name">
                                        </div>
                                        <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="Sname()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>

                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Contact Number</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">call</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="number" class="form-control date"  id="mobile" value="<?php echo $mobile;?>" placeholder="Contact Number">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="mobile()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Email ID</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">mail_outline</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="email" class="form-control date" id="Semail" value="<?php echo $Semail;?>" placeholder="Email">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="Semail()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                    <div class="input-group">
                                <button type="button" class="btn btn-default waves-effect">Change Password</button>
                                </div>
                                </div>
                                
                                
                            </div>
                            
                            <div class="">
                                <?php 
                                
                                if($profile_active=="Blocked"){
                                    $clr="red";
                                            echo "<b><p style='color:$clr;'> Currently profile is ".$institute_active.". </p></b><a href='contact.php'>We were working for your account activation please wait for some time or  Contact MJGE team.</a>";
                             
                                }else{
                                    $clr="green"; echo "<b><p style='color:$clr;'> Currently profile is ".$profile_active.". </p></b>";
                                }
                                
                               
                                
                                ?>
                                </div>
                       
                        </div>
                    </div>
                </div>
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="<?php echo $changeData; ?>">
                    <div class="card">
                        <div class="header bg-light-blue">
                            <h2>
                                Institution Details <small>Description</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                  <i class="material-icons">domain</i>
                            </ul>
                        </div>
                        <div class="body">
                       
                       <div class="row clearfix">
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Institution Name</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">domain</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_name" value="<?php echo $i_name;?>" placeholder="Institution name">
                                        </div>
                                        <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_name()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                        <h2 class="card-inside-title">About Institution</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">domain</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_desc" value="<?php echo $i_desc;?>" placeholder="About Institution">
                                        </div>
                                        <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_desc()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                        <h2 class="card-inside-title">Institution Address</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">location_on</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_address" value="<?php echo $i_address;?>" placeholder="Institution Address">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_address()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Institution City</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">location_city</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_city" value="<?php echo $i_city;?>" placeholder="Institution City">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_city()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Institution State</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">location_on</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_state" value="<?php echo $i_state;?>" placeholder="Institution State">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_state()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Institution Country</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">location_on</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_country" value="<?php echo $country;?>" placeholder="Institution Country">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_country()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Institution Address pin code</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">fiber_pin</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="number" class="form-control date" id="i_pin" value="<?php echo $i_pin;?>" placeholder="Institution Address pin">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_pin()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Contact 1</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">call</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="number" class="form-control date" id="i_contact1" value="<?php echo $i_contact1;?>" placeholder="Contact 1">
                                        </div>
                                       <span class="input-group-addon " style="<?php echo $notacc; ?>">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_contact1()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Contact 2</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">call</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="number" class="form-control date" id="i_contact2" value="<?php echo $i_contact2;?>" placeholder="Contact 2">
                                        </div>
                                       <span class="input-group-addon"  style="<?php echo $notacc; ?>">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_contact2()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                        <h2 class="card-inside-title">Email ID</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">mail_outline</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="email" class="form-control date" id="i_email" value="<?php echo $i_email;?>" placeholder="Email">
                                        </div>
                                       <span class="input-group-addon">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_email()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
                                <div class="col-md-12 hide">
                                        <h2 class="card-inside-title">UPI ID</h2>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">code</i>
                                        </span>
                                        <div class="form-line">
                                            <input type="text" class="form-control date" id="i_upi" value="<?php echo $i_upi;?>" placeholder="UPI Details">
                                        </div>
                                        <span class="input-group-addon"  style="<?php echo $notacc; ?>">
                                        <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" onclick="i_upi()">
                                    <i class="material-icons">done</i>
                                </button>
                                </span>
                                    </div>
                                </div>
                                
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="">
                        <div class="header">
                            <h2>Institution banner image</h2><small>Image must be 1280 X 720 ratio</small>
                            
                        </div>
                        <div class="" >
                    <center><img src="<?php echo $realimgpath.$imgv5;?>" width="80%" /></center>
				</div>
				                     
    <form method="POST" action="product.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000000000000000">
		<div>
			<input type="file" class="btn btn-primary waves-effect" style="width:100%;" name="image">
		</div>

	<div>
			<textarea id="text" cols="" rows="2" class="form-control"  name="image_text" placeholder="Say something about this image..."><?php echo $desc55;?></textarea>
			<input type="number" name="chkk" value="5" hidden>
		</div>
		<div>
		    <button type="submit" name="upload" class="btn btn-primary waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
		</div>
	</form>
              </div>
             </div>	
    
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="">
                        <div class="header">
                            <h2>Institution logo image</h2><small>Image must be 512 X 512 ratio</small>
                            
                        </div>
                        <div class="" >
                    <center><img src="<?php echo $realimgpath.$imgv6;?>" width="80%" /></center>
				</div>
				                     
    <form method="POST" action="product.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000000000000000">
		<div>
			<input type="file" class="btn btn-primary waves-effect" style="width:100%;" name="image">
		</div>

	<div>
			<textarea id="text" cols="" rows="2" class="form-control"  name="image_text" placeholder="Say something about this image..."><?php echo $desc66;?></textarea>
			<input type="number" name="chkk" value="6" hidden>
		</div>
		<div>
		    <button type="submit" name="upload" class="btn btn-primary waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
		</div>
	</form>
              </div>
             </div>	
                                
                            </div>
                            
                             <div class="">
                                <?php 
                                
                                if($institute_active=="Blocked"){
                                  $notacc="visibility: visible";
                                    $clr="red";
                                     echo "<b><p style='color:$clr;'> Currently institution service is ".$institute_active.". </p></b><a href='contact.php'>We were working for your institution information activation please wait for some time or  Contact MJGE team.</a>";
                                }else{ 
                                    $notacc="visibility: hidden";
                                    $clr="green";
                                     echo "<b><p style='color:$clr;'> Currently institution service is ".$institute_active.". </p></b>";
                                }
                                
                               
                                
                                ?>
                                </div>
                       
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                <!--
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header bg-light-blue">
                            <h2>
                                About <small>Description text here...</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                  <i class="material-icons">person</i>
                            </ul>
                        </div>
                        <div class="body">
                            Quis pharetra a pharetra fames blandit. Risus faucibus velit Risus imperdiet mattis neque volutpat, etiam lacinia netus dictum magnis per facilisi sociosqu. Volutpat. Ridiculus nostra.
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header bg-light-green">
                            <h2>
                                Light Green - Title <small>Description text here...</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li>
                                    <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="rotation" data-loading-color="lightGreen">
                                        <i class="material-icons">loop</i>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            Quis pharetra a pharetra fames blandit. Risus faucibus velit Risus imperdiet mattis neque volutpat, etiam lacinia netus dictum magnis per facilisi sociosqu. Volutpat. Ridiculus nostra.
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header bg-amber">
                            <h2>
                                Amber - Title <small>Description text here...</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li>
                                    <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse" data-loading-color="amber">
                                        <i class="material-icons">loop</i>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            Quis pharetra a pharetra fames blandit. Risus faucibus velit Risus imperdiet mattis neque volutpat, etiam lacinia netus dictum magnis per facilisi sociosqu. Volutpat. Ridiculus nostra.
                        </div>
                    </div>
                </div>
                
                -->
                
              <!--
                 <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>About</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="card" >
                            
                    <center><img src="images/005-newspaper.png" width="80%" /></center>
                        
                         <div class="info-box-4 hover-zoom-effect">
                        <div class="icon">
						
                            <i class="material-icons col-pink">email</i>
                        </div>
                        <div class="content">
                            <div class="text">MESSAGES</div>
                            <div class="number">15</div>
                        </div>
						
                    </div>
					
				</div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>TASK Quiz</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="card" >
                            
                    <center><img src="images/003-horse.png" width="80%" /></center>
                        
                         <div class="info-box-4 hover-zoom-effect">
                             <a href="http://enlightenstudyhub.com/Ademodb/Videos/Online_T/admin/pages/tables/Game_Type.php?Main_id=GAME12345&Main_name=GK1234Quiz"></a>
                        <div class="icon">
						
                            <i class="material-icons col-pink">email</i>
                        </div>
                        <div class="content">
                            <div class="text">MESSAGES</div>
                            <div class="number">15</div>
                        </div>
						
                        </div>
					
				    </div>
                    </div>
                 </div>
                 	
-->


                
            </div>
			   
			 <div class="row" style="<?php echo $changeData; ?>">
			     
               
				
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Slide Image 1</h2><small>Image must be 1280 X 720 ratio</small>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="card" >
                    <center><img src="<?php echo $realimgpath.$imgv1;?>" width="80%" /></center>
				</div>
				                     
    <form method="POST" action="product.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000000000000000">
		<div>
			<input type="file" class="btn btn-primary waves-effect" style="width:100%;" name="image">
		</div>
		<div>
			<textarea id="text" cols="" rows="2" class="form-control"  name="image_text" placeholder="Say something about this image..."><?php echo $desc11;?></textarea>
			<input type="number" name="chkk" value="1" hidden>
		</div>
		<div>
		    <button type="submit" name="upload" class="btn btn-primary waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
		</div>
	</form>
              </div>
             </div>	
             
             
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Slide Image 2</h2><small>Image must be 1280 X 720 ratio</small>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="card" >
                    <center><img src="<?php echo $realimgpath.$imgv2;?>" width="80%" /></center>
				</div>
				                     
    <form method="POST" action="product.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000000000000000">
		<div>
			<input type="file" class="btn btn-primary waves-effect" style="width:100%;" name="image">
		</div>
		<div>
			<textarea id="text" cols="" rows="2" class="form-control"  name="image_text" placeholder="Say something about this image..."><?php echo $desc22;?></textarea>
			<input type="number" name="chkk" value="2" hidden>
		</div>
		<div>
		    <button type="submit" name="upload" class="btn btn-primary waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
		</div>
	</form>
              </div>
             </div>	
             
                         <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Slide Image 3</h2><small>Image must be 1280 X 720 ratio</small>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="card" >
                    <center><img src="<?php echo $realimgpath.$imgv3;?>" width="80%" /></center>
				</div>
				                     
    <form method="POST" action="product.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000000000000000">
		<div>
			<input type="file" class="btn btn-primary waves-effect" style="width:100%;" name="image">
		</div>
		<div>
			<textarea id="text" cols="" rows="2" class="form-control"  name="image_text" placeholder="Say something about this image..."><?php echo $desc33;?></textarea>
			<input type="number" name="chkk" value="3" hidden>
		</div>
		<div>
		    <button type="submit" name="upload" class="btn btn-primary waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
		</div>
	</form>
              </div>
             </div>	
             
             
                         <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Slide Image 4</h2> <small>Image must be 1280 X 720 ratio</small>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="card" >
                    <center><img src="<?php echo $realimgpath.$imgv4;?>" width="80%" /></center>
				</div>
				                     
    <form method="POST" action="product.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000000000000000">
		<div>
			<input type="file" class="btn btn-primary waves-effect" style="width:100%;" name="image">
		</div>
		<div>
			<textarea id="text" cols="" rows="2" class="form-control" name="image_text" placeholder="Say something about this image..."><?php echo $desc44;?></textarea>
			<input type="number" name="chkk" value="4" hidden>
		</div>
		<div>
		    <button type="submit" name="upload" class="btn btn-primary waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
		</div>
	</form>
              </div>
             </div>	
                
                
                
         
              
            </div>
  
           
        </div>
    </section>
    
    
    <div class="modal fade" id="defaultModalViewF" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
					
						<center>
						    <div class="page-loader-wrapper" >
        <div class="loader">
            <div class="md-preloader pl-size-md">
                <svg viewBox="0 0 75 75">
                    <circle cx="37.5" cy="37.5" r="33.5" class="pl-red" stroke-width="4"></circle>
                </svg>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
						</center>
                        </div>
                    </div>
                </div>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Jquery CountTo Plugin Js -->
    <script src="plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Morris Plugin Js -->
    <script src="plugins/raphael/raphael.min.js"></script>
    <script src="plugins/morrisjs/morris.js"></script>

    <!-- ChartJs -->
    <script src="plugins/chartjs/Chart.bundle.js"></script>

    <!-- Flot Charts Plugin Js -->
    <script src="plugins/flot-charts/jquery.flot.js"></script>
    <script src="plugins/flot-charts/jquery.flot.resize.js"></script>
    <script src="plugins/flot-charts/jquery.flot.pie.js"></script>
    <script src="plugins/flot-charts/jquery.flot.categories.js"></script>
    <script src="plugins/flot-charts/jquery.flot.time.js"></script>

    <!-- Sparkline Chart Plugin Js -->
    <script src="plugins/jquery-sparkline/jquery.sparkline.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/index.js"></script>

    <!-- Demo Js -->
    <script src="js/demo.js"></script>
</body>



<script>

function i_name(){
var cum="i_name";
var valuea = document.getElementById("i_name").value;
if(valuea==""){alert("Enter institution name"); return; }
update_val_All(cum,valuea);
}

function i_desc(){
var cum="i_desc";
var valuea = document.getElementById("i_desc").value;
if(valuea==""){alert("Enter about institution"); return; }
update_val_All(cum,valuea);
}

function i_address(){
var cum="i_address";
var valuea = document.getElementById("i_address").value;
if(valuea==""){alert("Enter institution address"); return; }
update_val_All(cum,valuea);
}

function i_city(){
var cum="i_city";
var valuea = document.getElementById("i_city").value;
if(valuea==""){alert("Enter institution city"); return; }
update_val_All(cum,valuea);
}

function i_state(){
var cum="i_state";
var valuea = document.getElementById("i_state").value;
if(valuea==""){alert("Enter institution state"); return; }
update_val_All(cum,valuea);
}

function i_country(){
var cum="country";
var valuea = document.getElementById("i_country").value;
if(valuea==""){alert("Enter institution state"); return; }
update_val_All(cum,valuea);
}



function i_pin(){
var cum="i_pin";
var valuea = document.getElementById("i_pin").value;
if(valuea==""){alert("Enter institution zip code"); return; }
update_val_All(cum,valuea);
}

function i_contact1(){
var cum="i_contact1";
var valuea = document.getElementById("i_contact1").value;
if(valuea==""){alert("Enter institution contact 1"); return; }
update_val_All(cum,valuea);
}

function i_contact2(){
var cum="i_contact2";
var valuea = document.getElementById("i_contact2").value;
if(valuea==""){alert("Enter institution contact 2"); return; }
update_val_All(cum,valuea);
}

function i_email(){
var cum="i_email";
var valuea = document.getElementById("i_email").value;
if(valuea==""){alert("Enter institution email id"); return; }
update_val_All(cum,valuea);
}

function i_upi(){
var cum="i_upi";
var valuea = document.getElementById("i_upi").value;
if(valuea==""){alert("Enter UPI ID"); return; }
update_val(cum,valuea);
}

function Sname(){
var cum="name";
var valuea = document.getElementById("Sname").value;
if(valuea==""){alert("Enter Profile name"); return; }
update_val(cum,valuea);
}

function Semail(){
var cum="email";
var valuea = document.getElementById("Semail").value;
if(valuea==""){alert("Enter profile email"); return; }
update_val(cum,valuea);
}

function mobile(){
var cum="mobile";
var valuea = document.getElementById("mobile").value;
if(valuea==""){alert("Enter profile contact number"); return; }
update_val(cum,valuea);
}




function update_val(cum,valuea){
 //$('#live_dataicon').html("Loading...");
//alert("hoooo");
//var user_id= "1213";

var uid = "<?php echo $uid;?>";
var pass = "<?php echo $upass;?>";

if(cum==""){
    alert("somthing wrong!");  
    return;
}

if(uid==""){
    alert("please try after login!");  
    return;
}

if(pass==""){
   alert("please try after login!");  
   return;
}

if(confirm("Are you sure you want to update this?"))  
{  $('#defaultModalViewF').modal('show');
$.ajax({  
                     url:"update_profile.php",  
                     method:"POST",  
                     data:{cum:cum,valuea:valuea,pass:pass,uid:uid},  
                     dataType:"text",  
                     success:function(data){  
                          alert(data);  
                          //fetch_data();

 //   $('#live_dataicon').html(data);
                     }  
                }); 
}
$('#defaultModalViewF').modal('hide');
}




function update_val_All(cum,valuea){
 //$('#live_dataicon').html("Loading...");
//alert("hoooo");
//var user_id= "1213";

var uid = "<?php echo $uid;?>";
var pass = "<?php echo $upass;?>";

if(cum==""){
    alert("somthing wrong!");  
    return;
}

if(uid==""){
    alert("please try after login!");  
    return;
}

if(pass==""){
   alert("please try after login!");  
   return;
}

if(confirm("Are you sure you want to update this?"))  
{  $('#defaultModalViewF').modal('show');
$.ajax({  
                     url:"update_profile_All.php",  
                     method:"POST",  
                     data:{cum:cum,valuea:valuea,pass:pass,uid:uid},  
                     dataType:"text",  
                     success:function(data){  
                          alert(data);  
                          //fetch_data();

 //   $('#live_dataicon').html(data);
                     }  
                }); 
}
$('#defaultModalViewF').modal('hide');
}



</script>
</html>