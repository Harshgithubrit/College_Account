<html>
<head>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script> -->

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<?php

$name=$_REQUEST["name"];
$amount_in_words=$_REQUEST["amtw"];
$amount=$_REQUEST["amt"];
$date=$_REQUEST["date"];


$result = str_replace('-', '', $date);
$result = str_split($result);

?>
<!--body >
<div class="body">
    <script>


    </script>
                         
                      
                                
                   
                         <div ng-app="myApp" ng-controller="myCtrl" class="col-md-6 pull-right">
                                
                             <b><!--?php 
                             
                             foreach($result as $x => $value) {
                                  $value."&nbsp &nbsp";
                             }
                             
                             ?></b>
                              &nbsp &nbsp &nbsp &nbsp &nbsp
                             </div>
     
                               
                         <br>
                         <p style="font-size:18px; margin-bottom:10px;"> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <b><span id="nameID"></span></b>
                             
                            </p>

                           
                     &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <span id="paisaID"></span>
                     
                      
                        
                            
                      <div class="row" style="margin-top:10px;">
 
                         <div class="col-md-4 pull-right" style="font-size:18px;">
                         &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp                          &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  **<b><span id="amtID"></span></b>** 
                         </div>
 
 
                         </div>
 </div>
</body>


<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {

    
//alert(localStorage.getItem("name"));
document.getElementById("nameID").innerHTML = localStorage.getItem("name");
document.getElementById("paisaID").innerHTML = localStorage.getItem("amtw");
document.getElementById("amtID").innerHTML = localStorage.getItem("amt");


    
});
</script-->
<body >
    <div class="body">        
        <div ng-app="myApp" ng-controller="myCtrl" class="col-md-6 pull-right">         
            <b>
                <?php 
                    foreach($result as $x => $value) {
                        $value."&nbsp &nbsp";
                    }    
                ?>
            </b>
        </div>                               
        <br>
            <p style="font-size:18px; margin-bottom:10px;margin-left:190px;"><b><span id="nameID"></span></b></p>
            <p style="font-size: 16px;/* margin-bottom: 9px; */margin-top: 28px;margin-left: 150px;"><span id="paisaID"></span></p>
            <div class="row" style="margin-left: 600px;margin-top: -12px;">
                <div class="col-md-4 pull-right" style="font-size:18px;">**<b><span id="amtID"></span></b>**</div>
            </div>
    </div>
</body>


<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {

    
//alert(localStorage.getItem("name"));
document.getElementById("nameID").innerHTML = localStorage.getItem("name");
document.getElementById("paisaID").innerHTML = localStorage.getItem("amtw");
document.getElementById("amtID").innerHTML = localStorage.getItem("amt");


    
});
</script>


</html> 