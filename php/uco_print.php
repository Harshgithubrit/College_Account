<!DOCTYPE html>
<html  lang="en" ng-app="myApp">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>MJGE Account</title>
    <!-- Favicon-->
 <!-- Favicon-->
    <link rel="icon" href="../favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="../plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="../plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="../plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Preloader Css -->
    <link href="../plugins/material-design-preloader/md-preloader.css" rel="stylesheet" />

    <!-- JQuery DataTable Css -->
    <link href="../plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

  <!-- Colorpicker Css -->
    <link href="../plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />

    <!-- Dropzone Css -->
    <link href="../plugins/dropzone/dropzone.css" rel="stylesheet">

    <!-- Custom Css -->
    <link href="../css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="../css/themes/all-themes.css" rel="stylesheet" />


       <!-- Bootstrap Select Css -->
       <link href="../plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
   
      
<script src="../js/angular.min.js"></script>
<script src="../js/sweetalert.min.js"></script>

<script src="../https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="../conver/html2canvas.js"></script>
<script src="../http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="../http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="../css/toastr.css">




</head>

<body class="theme-indigo" >
 
<?php

$name=$_REQUEST["name"];
$amount_in_words=$_REQUEST["amtw"];
$amount=$_REQUEST["amt"];
$date=$_REQUEST["date"];


$result = str_replace('-', '', $date);
$result = str_split($result);

?>
                   
                      
<div class="body">
                         
                      
                                
                        <div class="media-left">
                                </div>


                                <br>
                                <div class="col-md-6">
                            
                            </div>
                            <div class="col-md-6 pull-right">
                                <h4></h4>
                            <b><?php 
                            
                            foreach($result as $x => $value) {
                                 $value."&nbsp &nbsp";
                            }
                            
                            ?></b>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                            </div>
    
                               <br>
                               <br>

                        <h4></h4>
                        <P style="font-size:18px;">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <?php echo $name;?>
                            
                        </P>

                        <P >&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <b><?php echo $amount_in_words;?> </b>
                    
                     
                        <br>
                    </P>
                     <div class="row">

                        <div class="col-md-6">
                            
                        </div>
                        <div class="col-md-4 pull-right" style="font-size:18px;">
                            **<b><?php echo $amount;?></b>** &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        </div>


                        </div>
</div>
                  
      

</body>

</html>