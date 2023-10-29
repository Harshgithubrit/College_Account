var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http) {

var user_id_session="";
 // alert("Test....");

 checkInternet();
 get_all_qta();
 get_all_vendor();
 get_all_req_item();
 get_all_item();
 
  $scope.logout = function() {
    $http.post("php/logout.php")
    .then(function (result) {
    
    //   console.log(result.data);
       if(result.data == "true") {
     
            window.location.href = "login.html";
  
           }
        
    }, function(result) {
        //some error
        console.log(result);
    });
    
  };


  TOTAL_DETAILS();

  function TOTAL_DETAILS(){  
    checkInternet();
    $scope.loading = true;
    $http.post("phpreport/totaldetails.php")
        .then(function (result) {

          $scope.total_requisition_report=result.data[0].totalrecords;
          $scope.total_approved=result.data[0].approvedcount;
          $scope.total_rejected=result.data[0].rejectcount;
          $scope.total_pending=result.data[0].pendingcount;

         // console.log(result);
          //  console.log(result.data.todays);
          //console.log(result.data[0].total);
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    };


  FEE_REPORT();

  function FEE_REPORT(){  
    checkInternet();
    $scope.loading = true;
    $http.post("phpreport/feereport.php")
        .then(function (result) {

          $scope.todayreport=result.data[0].todays;
          $scope.yesterdayreport=result.data[0].yesterday;
          $scope.thisweekreport=result.data[0].thisweek;
          $scope.thismonthreport=result.data[0].thismonth;
          $scope.totalreport=result.data[0].total;

          //console.log(result.data[0].yesterday);
          //  console.log(result.data.todays);
         // console.log(result.data[0].total);
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    };

    PURCHASE_REPORT();

    function PURCHASE_REPORT(){  
      checkInternet();
      $scope.loading = true;
      $http.post("phpreport/purchasereport.php")
          .then(function (result) {
  
            $scope.total=result.data[0].total;
            $scope.unpaid=result.data[0].unpaid;
            $scope.fullpaid=result.data[0].fullpaid;
            $scope.halfpaid=result.data[0].halfpaid;
            $scope.paid=result.data[0].paid;
  
            //console.log(result.data[0].yesterday);
            //  console.log(result.data.todays);
           // console.log(result.data[0].total);
              $scope.loading = false;
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
      };
  
   DUE_REPORT();

    function DUE_REPORT(){  
      checkInternet();
      $scope.loading = true;
      $http.post("phpreport/Duereport.php")
          .then(function (result) {
  console.log(result.data);
            $scope.due=result.data[0].total;
           
  
            //console.log(result.data[0].yesterday);
            //  console.log(result.data.todays);
           // console.log(result.data[0].total);
              $scope.loading = false;
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
      };

  //get_profile ();
  
  function get_profile(){  

    checkInternet();

    $scope.loading = true;

    $http.post("php/get_profile.php")
        .then(function (result) {
            $scope.staff_details = result.data;
           // console.log(result.data);
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    };
    
    
    get_item();
    
    
    function get_item(){  

    checkInternet();

    $scope.loading = true;

      var method="select";
      var query="select * from office_item_name order by id DESC LIMIT 50 ";
    
    
      $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) {
            $scope.itemdetails = result.data.tbldata;
           // alert(result.data.tbldata);
          //  console.log(result.data.tbldata);
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    }
    
    var itemid="";
    $scope.onitem_select = function(index){
        
        
          $scope.item_name_edit =$scope.itemdetails[index].item_name;
          
          $scope.changedValue =$scope.itemdetails[index].type;
          
          $scope.unite =$scope.itemdetails[index].unit;
          
          $scope.categoryie =$scope.itemdetails[index].category_id;
        
       itemid  = $scope.itemdetails[index].id;
    }
    
     $scope.itemupdate =  function(){
         
          if($scope.item_name_edit == null || $scope.item_name_edit == undefined || $scope.item_name_edit == ""){
              swal("Please enter item name");
  return;
      }
      
             
       if($scope.changedValue == null || $scope.changedValue == undefined || $scope.changedValue == ""){
     swal("Please select Goods/Service");
    return;
  }
  
      
      if($scope.categoryie == null || $scope.categoryie == undefined || $scope.categoryie == ""){
     swal("Please select Category");
    return;
  }
      
   if($scope.unite == null || $scope.unite == undefined || $scope.unite == ""){
     swal("Please select unit");
    return;
  }
      
           $scope.loading = true;

      var method="update";
      var query="update office_item_name set item_name = '"+$scope.item_name_edit+"', category_id= '"+$scope.categoryie+"', type= '"+$scope.changedValue+"', unit= '"+$scope.unite+"'  where id = "+itemid+" ";
    
    
      $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) {
            
            
              if(result.data.success==true){ get_item();
                    toastr.success("Updated Successfully!");
            }else{
                
                toastr.error("Error try again!");
            }
            
         
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
        
     }
    
    
    $scope.Itemonsearch = function () {
  // alert($scope.search);
    //console.log($scope.search);

    checkInternet();
   // alert("Hi..");

    var ser = "";
       if($scope.item_search == null || $scope.item_search == undefined || $scope.item_search == ""){
  
   ser = "";
      }else{
           ser = $scope.item_search ;
      }

        
    $scope.loading = true;
    
    var Query="select * from office_item_name where   item_name LIKE '"+ser+"%'  order by id DESC LIMIT 50 ";
    //  console.log(Query);
     $scope.loading = true;
  
      $http.post("php/search_profile.php?search_query="+Query)
          .then(function (result) {
              $scope.itemdetails = result.data;
            //  console.log(result.data);
              $scope.loading = false;
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
          
  };
  
    
    
    
    $scope.save_item_name = function(){
    
       
       if($scope.changedValu == null || $scope.changedValu == undefined || $scope.changedValu == ""){
     swal("Please select Goods/Service");
    return;
  }
  
      
      if($scope.categoryi == null || $scope.categoryi == undefined || $scope.categoryi == ""){
     swal("Please select Category");
    return;
  }
       if($scope.item_name_add_new == null || $scope.item_name_add_new == undefined || $scope.item_name_add_new == ""){
              swal("Please enter item name");
  return;
      }
   if($scope.unit == null || $scope.unit == undefined || $scope.unit == ""){
     swal("Please select unit");
    return;
  }
  
  
 
        var cate_id = $scope.categoryi;
        var item_name= $scope.item_name_add_new;
        
      var method="insert";
      var query="INSERT INTO `office_item_name`( `unit`, `type`, `item_name`, `category_id`, `created_by`, `date_time`) VALUES ('"+$scope.unit+"','"+$scope.changedValu+"','"+item_name+"','"+cate_id+"','"+user_id_session+"', now()) ";
        
       // console.log(query);
         swal("Loading...");
        $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) {
          
             if(result.data.success==true){  
             
              get_item();
                   
                    toastr.success("Inserted Successfully!");
                
            }
            
            else{
                  
                toastr.error("Error try again!");
            } swal.close();
             
            
           
           
           // console.log(result.data);
         
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
        
    }


    
$scope.view_profile =  function (index) {

  checkInternet();

  var emp_id = $scope.staff_details[index].emp_id;

//  console.log(emp_id);
 
  
  if(emp_id == null || emp_id == undefined || emp_id == "" || emp_id =="no data found!" ){
    swal("Student not found!");
    return;
  }else{
    
  id_edit = $scope.staff_details[index].id;
  window.location.href = "Ledger.html?uid="+emp_id;
   
  }

   
  };
   

 $scope.onsearch = function () {
  // alert($scope.search);
    //console.log($scope.search);

    checkInternet();
   // alert("Hi..");

    var ser = "";
       if($scope.search == null || $scope.search == undefined || $scope.search == ""){
  
   ser = "";
      }else{
           ser = $scope.search ;
      }

        
    $scope.loading = true;
    
    var Query="select * from mj_student where admission_status='1' and  emp_id LIKE '"+ser+"%' or (firstname LIKE '"+ser+"%'  or (mobile LIKE '"+ser+"%')) order by id DESC LIMIT 50 ";
     // console.log(Query);
     $scope.loading = true;
  
      $http.post("php/search_profile.php?search_query="+Query)
          .then(function (result) {
              $scope.staff_details = result.data;
            //  console.log(result.data);
              $scope.loading = false;
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
          
  };
  
  

  
  $http.post('php/login_validation.php')
  .then(function (result) {
   // console.log(result.data); 
   //  console.log(result.data.loggedIn);
    if(result.data.loggedIn == "true") {
  
      $scope.user_name1 =result.data.firstname;
      $scope.user_name =result.data.firstname;
      $scope.user_id =result.data.user_id;
      $scope.admin_role =result.data.admin_role;
  
  user_id_session= result.data.user_id;
       
     // console.log(result.data.firstname);
      // window.location.href = "login.html";
  
             
         }else{
  window.location.href = "login.html";
  
         }
      
  }, function(result) {
      //some error
      console.log(result);
  });


  function checkInternet(){
    if (navigator.onLine == true) {
     // alert('Connection active!');
  //   console.log('Connection active!');
    }else{
    alert('Internet connection is lost');
    toastr.warning('Internet connection is lost');
    return;
    }
  }
  
  
  
  
  
     get_cate_data();
     function get_cate_data(){ 
   
      var method="select";
      var query="select * from office_item_category";
    
    
      $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
           
           // console.log(result.data);
            $scope.data_list_cnamesie=result.data.tbldata;
            $scope.data_list_cnamesi=result.data.tbldata;
             
          }, function(result) {
             
              //some error
              console.log(result);
          });
      }


  QuotationData();
  
function QuotationData(){


var method="select";
var query="SELECT COUNT(id) as tot_all, (select COUNT(id) FROM `account_quotation` where account_approved='Pending' ) as tot_pandin, (select COUNT(id) FROM `account_quotation` where account_approved='Approved' ) as tot_approved, (select COUNT(id) FROM `account_quotation` where account_approved='Rejected' ) as tot_rejected FROM `account_quotation` ";

$http.post("php/API.php?method="+method+"&query="+query)
    .then(function (result) {
    
      // console.log("Qdata............................");
      //  console.log(result.data);

      //  console.log(result.data.error);
      //  console.log(result.data.success);

      //  console.log(result.data.tbldata);

      //  console.log(result.data.tbldata[0].countdata);

       $scope.total_q_report=result.data.tbldata[0].tot_all;
       $scope.total_qpending=result.data.tbldata[0].tot_pandin;
       $scope.total_qapproved=result.data.tbldata[0].tot_approved;
       $scope.total_qrejected=result.data.tbldata[0].tot_rejected;


     
        
    }, function(result) {
        //some error
        console.log(result);
    });


}

PurchaseData();
function PurchaseData(){


  var method="select";
  var query="SELECT COUNT(id) as tot_all, (select COUNT(id) FROM `account_purchase_order` where account_approved='Pending' ) as tot_pandin, (select COUNT(id) FROM `account_purchase_order` where account_approved='Approved' ) as tot_approved, (select COUNT(id) FROM `account_purchase_order` where account_approved='Rejected' ) as tot_rejected FROM `account_purchase_order` ";
  
  $http.post("php/API.php?method="+method+"&query="+query)
      .then(function (result) {
      
        // console.log("Qdata............................");
        //  console.log(result.data);
  
        //  console.log(result.data.error);
        //  console.log(result.data.success);
  
        //  console.log(result.data.tbldata);
  
        //  console.log(result.data.tbldata[0].countdata);
  
         $scope.total_p_report=result.data.tbldata[0].tot_all;
         $scope.total_ppending=result.data.tbldata[0].tot_pandin;
         $scope.total_papproved=result.data.tbldata[0].tot_approved;
         $scope.total_prejected=result.data.tbldata[0].tot_rejected;
  
  
       
          
      }, function(result) {
          //some error
          console.log(result);
      });
  
  
  }
  function get_all_fee()
  {

    var method="select";
    var query="select count(*) as total_quatation from account_quotation";
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_quatation=result.data.tbldata[0].total_quatation;
              console.log($scope.total_quatation);
        }else{
            
            toastr.error("Error try again!");
        }
        
       
       
       // console.log(result.data);
     
    }, function(result) {
         $scope.loading = false;
        //some error
        console.log(result);
    });
    
  }

  function get_all_qta()
  {

    var method="select";
    var query="select count(*) as total_quatation from account_quotation";
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_quatation=result.data.tbldata[0].total_quatation;
              console.log($scope.total_quatation);
        }else{
            
            toastr.error("Error try again!");
        }
        
       
       
       // console.log(result.data);
     
    }, function(result) {
         $scope.loading = false;
        //some error
        console.log(result);
    });
    
  }
  
  function get_all_vendor()
  {

    var method="select";
    var query="select count(*) as total_vendor from account_vendor";
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_vendor=result.data.tbldata[0].total_vendor;
              console.log($scope.total_vendor);
        }else{
            
            toastr.error("Error try again!");
        }
        
       
       
       // console.log(result.data);
     
    }, function(result) {
         $scope.loading = false;
        //some error
        console.log(result);
    });
    
  }
  
  function get_all_item()
  {

    var method="select";
    var query="select count(*) as total_item from office_item_name";
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.tot_item=result.data.tbldata[0].total_item;
              console.log($scope.tot_item);
        }else{
            
            toastr.error("Error try again!");
        }
        
       
       
       // console.log(result.data);
     
    }, function(result) {
         $scope.loading = false;
        //some error
        console.log(result);
    });
    
  }


   function get_all_req_item()
  {
    
    var method="select";
    var query="select count(*) as total_req from account_requisition";
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_req=result.data.tbldata[0].total_req;
              console.log($scope.total_req);
        }else{
            
            toastr.error("Error try again!");
        }
        
       
       
       // console.log(result.data);
     
    }, function(result) {
         $scope.loading = false;
        //some error
        console.log(result);
    });
    
  }
  
  
});


