var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http) {

var user_id_session="";
 // alert("Test....");

 checkInternet();
 get_all_grn();
 get_all_po();
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

  // get_profile ();
  
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
  // window.location.href = "Ledger.html?uid="+emp_id;

  window.open("Ledger.html?uid="+emp_id,'_blank');
   
  }

   
  };
   

 $scope.onsearch = function () {
  // alert($scope.search);
    //console.log($scope.search);

    checkInternet();
   // alert("Hi..");

        
    $scope.loading = true;
    onsearch_Find_new();
    
    // var Query="select * from mj_student where admission_status='1' and  emp_id LIKE '"+ser+"%' or (firstname LIKE '"+ser+"%'  or (mobile LIKE '"+ser+"%')) order by id DESC LIMIT 50 ";
    //  // console.log(Query);
    //  $scope.loading = true;
  
    //   $http.post("php/search_profile.php?search_query="+Query)
    //       .then(function (result) {
    //           $scope.staff_details = result.data;
    //         //  console.log(result.data);
    //           $scope.loading = false;
    //       }, function(result) {
    //            $scope.loading = false;
    //           //some error
    //           console.log(result);
    //       });
          
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


get_all_fee();
  function get_all_fee(){

    var method="select";
    var query="select count(*) as total_quatation from account_quotation where admin_approved = 'Pending' " ;
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_quatation=result.data.tbldata[0].total_quatation;
              console.log($scope.total_quatation);
              
              if(result.data.length>0){
                $("#Qnew_gif").show();
              }else{
                   $("#Qnew_gif").hide();
              }
              
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

  function get_all_qta(){

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
  
  function get_all_vendor(){

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
  
  function get_all_item(){

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

  function get_all_req_item(){
    
    var method="select";
    var query="select count(*) as total_req from account_requisition where admin_approved = 'Pending' ";
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_req=result.data.tbldata[0].total_req;
              console.log($scope.total_req);
              
              if(result.data.length>0){
                $("#Rnew_gif").show();
              }else{
                   $("#Rnew_gif").hide();
              }
              
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
  
  function get_all_po(){
  
    var method="select";
    var query="select count(*) as total_po, (select count(id) as total_fee_structure from fee_structure) as total_fee_structure from account_purchase_order where verify_status ='Pending' ";
    
    console.log(query);
    
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
             
          $scope.total_po=result.data.tbldata[0].total_po;
          $scope.total_fee_structure = result.data.tbldata[0].total_fee_structure;
          
          
          if(result.data.length>0){
                $("#Pnew_gif").show();
              }else{
                   $("#Pnew_gif").hide();
              }
          
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
  
  function get_all_grn(){
   var method="select";
    var query="select count(*) as total_grn, (select count(id) from fee_structure) as tot,(SELECT SUM(total) as tot FROM account_purchase_order_item  JOIN account_purchase_order  ON account_purchase_order_item.receipt_no = account_purchase_order.receipt_no where account_purchase_order.verify_status = 'Complete')as total_grn_amount,(select count(*) as td_fee from college_fee_instalment where date=CURRENT_DATE ) as td_fee,(select sum(amount) as td_amount from college_fee_instalment  where date=CURRENT_DATE  ) as td_amount from account_purchase_order where verify_status ='Complete'";
    
    console.log(query);
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
      console.log(result.data.tbldata);
         if(result.data.success==true){  
          $scope.total_grn=result.data.tbldata[0].total_grn;
            $scope.td_fee=result.data.tbldata[0].td_fee;
              $scope.td_amount=result.data.tbldata[0].td_amount;
          
          $scope.total_grn_amount=result.data.tbldata[0].total_grn_amount;
              console.log($scope.total_grn);
              
         $scope.total_fee=result.data.tbldata[0].tot;

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
  
call_college();
function call_college(){
  
    var Query="select * from college";
   
    $scope.loading = true;

$http.post("php/collegeselection.php?Query="+Query)
   .then(function (result) {
       $scope.College = result.data;//result.data;
      //  $scope.CollegecountSelector = $scope.College[0];

      $scope.loading = false;
   }, function(result) {
        $scope.loading = false;
       //some error
       console.log(result);
   });
}
  
call_subject_all();

function call_subject_all(){

  var Query=" select * from student_subjects ";
  $scope.loading = true;

  $http.post("php/subjectselection.php?Query="+Query)
      .then(function (result) {
          $scope.student_subjects = result.data;//result.data;
          $scope.countSelector = $scope.student_subjects[0];

           subject_data= result.data;

          $scope.loading = false;
      }, function(result) {
           $scope.loading = false;
          //some error
          console.log(result);
      });
  };


  call_student_course_type_all();

  function call_student_course_type_all(){
  
    var Query=" select * from student_course_type ";
    $scope.loading = true;
  
    $http.post("php/subjectselection.php?Query="+Query)
        .then(function (result) {   
         //   console.log(result.data);
            
            $scope.student_course_type = result.data;//result.data;
           
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    };

call_student_course_all();

function call_student_course_all(){
    
      var Query=" select * from student_course ";
      $scope.loading = true;
    
      $http.post("php/subjectselection.php?Query="+Query)
          .then(function (result) {   
            //   console.log(result.data);
              
              $scope.student_course = result.data;//result.data;
             
              $scope.loading = false;
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
};

var sem_year1="";
var sem_year_number1="";

var page_no =1;
onsearch_Find_new();

function onsearch_Find_new(){

  $scope.total_record="";

  $scope.staff_details="";
  $scope.page_no_="";
  $scope.total_no_of_pages_ ="";
  $scope.opts="";
  
  var ctypeid= "";

  var cid= "";

  var cname= "";

  var sname= "";
  
  
  
  var ser = "";
  if($scope.search == null || $scope.search == undefined || $scope.search == ""){

    ser = "";
 }else{
      ser = $scope.search ;
 }

  if($scope.college_name == undefined){
      cid="";
      
  }else{
      cid= $scope.college_name;
     
  }
  
  
  if($scope.subject_name == "All" || $scope.subject_name == undefined){
      ctypeid="";        

  }else{
      ctypeid=$scope.subject_name;
  }
 

  if($scope.course_type_name == "All" || $scope.course_type_name == undefined){
    cname= "";
  }else{
    cname =$scope.course_type_name;
  }
  
  if($scope.course_name == "All" || $scope.course_name == undefined){
    sname= "";
  }else{
    sname =$scope.course_name;
  }

  
  $("#prog").show();

  //swal("Loading.......");

  var records_per_page="10";
 
  $http.post("php/search_profileNew.php?records_per_page="+records_per_page+"&page_no="+page_no+"&ser="+ser+"&cid="+cid+"&ctypeid="+ctypeid+"&cname="+cname+"&sname="+sname+"&sem_year1="+sem_year1+"&sem_year_number1="+sem_year_number1)
  .then(function (response) {
    console.log(response.data);
  //  alert(result.data.length);
    
      $scope.loading = false;
            
      if(response.data.datastatus != "0") {

   // $scope.Requi_details = result.data;
    
      $scope.total_no_of_pages_ = response.data.total_no_of_pages;
      $scope.total_record = response.data.total_records;
      $scope.staff_details = response.data.tbldata;
      $scope.page_no_= response.data.page_no;
// console.log(response.data.DUEP);

$scope.opts=response.data.DUEP;
//console.log(response.data.total_records);
//    
  
}
else{
$scope.staff_details="";
}
$("#prog").hide();
swal.close();
      
}, function(result) {
       $scope.loading = false;
      //some error
      console.log(result);
});

}

$scope.callList= function(index){

  console.log(index);
  if(index>0){
      page_no=index;
    onsearch_Find_new();
  }else{}
  
}

document.getElementById('my-select').addEventListener('change', function() {

  
  sem_year1="";
  sem_year_number1="";

//alert(this.value);
  switch(this.value) {
    case "All":
      sem_year1="";
      sem_year_number1="";
      break;
              case "First Year":
                  sem_year1="Year";
                  sem_year_number1="1";
                  break;
              case "Second Year":
                  sem_year1="Year";
                  sem_year_number1="2";
                  break;
              case "Third Year":
                  sem_year1="Year";
                  sem_year_number1="3";
                  break;
              case "Fourth Year":
                  sem_year1="Year";
                  sem_year_number1="4";
                  break;
              case "First Semester":
                  sem_year1="Semester";
                  sem_year_number1="1";
                  break;
              case "Second Semester":
                  sem_year1="Semester";
                  sem_year_number1="2";
                  break;
              case "Third Semester":
                  sem_year1="Semester";
                  sem_year_number1="3";
                  break;
              case "Fourth Semester":
                  sem_year1="Semester";
                  sem_year_number1="4";
                  break;
              case "Fifth Semester":
                  sem_year1="Semester";
                  sem_year_number1="5";
                  break;
              case "Sixth Semester":
                  sem_year1="Semester";
                  sem_year_number1="6";
                  break;
              case "Seventh Semester":
                  sem_year1="Semester";
                  sem_year_number1="7";
                  break;
              case "Eighth Semester":
                  sem_year1="Semester";
                  sem_year_number1="8";
                  break;
          }

          
  onsearch_Find_new();
  
});

$scope.find_out=function(){
  onsearch_Find_new();
}


 $scope.Save_employee_details = function(){
  
  // alert($scope.college_name);
  // return;

//   if($scope.employee_id == null || $scope.employee_id == undefined || $scope.employee_id == ""){
// swal("Please enter Employee Id");
// return;
// }

 
      if($scope.employee_name == null || $scope.employee_name == undefined || $scope.employee_name == ""){
      swal("Please enter Employee name");
      return;
      }

      if($scope.college_name == null || $scope.college_name == undefined || $scope.college_name == ""){
        swal("Please enter College name");
        return;
        }
        if($scope.designation == null || $scope.designation == undefined || $scope.designation == ""){
              swal("Please enter designation");
      return;
      }
      if($scope.staff_type == null || $scope.staff_type == undefined || $scope.staff_type == ""){
      swal("Please select staff_type");
      return;
      }
      if($scope.monthly_salary == null || $scope.monthly_salary == undefined || $scope.monthly_salary == ""){
      swal("Please enter monthly salary");
      return;
      }
      if($scope.pf == null || $scope.pf == undefined || $scope.pf == ""){
        swal("Please enter pf");
        return;
        }
        if($scope.esi == null || $scope.esi == undefined || $scope.esi == ""){
          swal("Please enter esi");
          return;
          }
          if($scope.bank_name == null || $scope.bank_name == undefined || $scope.bank_name == ""){
            swal("Please enter bank_name");
            return;
            }
            if($scope.account_no == null || $scope.account_no == undefined || $scope.account_no == ""){
              swal("Please enter account_no");
              return;
              }
              if($scope.ifsc_code == null || $scope.ifsc_code == undefined || $scope.ifsc_code == ""){
                swal("Please enter ifsc_code");
                return;
                }
                if($scope.branch == null || $scope.branch == undefined || $scope.branch == ""){
                  swal("Please enter branch");
                  return;
                  }
                  if($scope.mobile_no == null || $scope.mobile_no == undefined || $scope.mobile_no == ""){
                    swal("Please enter mobile_no");
                    return;
                    }
                    if($scope.email == null || $scope.email == undefined || $scope.email == ""){
                      swal("Please enter email");
                      return;
                      }
                      if($scope.address == null || $scope.address == undefined || $scope.address == ""){
                        swal("Please enter address");
                        return;
                        }
                        if($scope.created_by == null || $scope.created_by == undefined || $scope.created_by == ""){
                          swal("Please enter created_by");
                          return;
                          }
      
      

  
   
  var method="insert";  
  var query="INSERT INTO `employee`(`employee_id`, `employee_name`,`college_name`, `designation`, `staff_type`, `monthly_salary`, `PF`, `ESI`, `bank_name`, `account_no`, `IFSC_code`, `branch`, `mobile_no`, `email`, `permanent_address`, `created_by`, `status`, `date`, `time`) VALUES ((select CONCAT('MJGE',gen_emp_id%2B1) as employee_id from `master_data` where id = 1),'"+$scope.employee_name+"','"+$scope.college_name+"','"+$scope.designation+"','"+$scope.staff_type+"','"+$scope.monthly_salary+"','"+$scope.pf+"','"+$scope.esi+"','"+$scope.bank_name+"','"+$scope.account_no+"','"+$scope.ifsc_code+"','"+$scope.branch+"','"+$scope.mobile_no+"','"+$scope.email+"','"+$scope.address+"','"+$scope.created_by+"','1',now(),now()); update `master_data` set gen_emp_id = gen_emp_id%2B1 where id =1 " ;
   
   
    // swal("Loading...");
   $http.post("php/API_2.php?query="+query+"&method="+method)
   .then(function (result) {
    console.log(query);
    console.log(result.data);
        if(result.data.success==true){  

               toastr.success("Inserted Successfully!");
       }
       
       else{
             
           toastr.error("Error try again!");
       }
       //swal.close();
        
       
      
      
      // console.log(result.data);
    
   }, function(result) {
        $scope.loading = false;
       //some error
       console.log(result);
   });
   
}   

    get_college_name();
  function get_college_name(){  

    checkInternet();
  
    $scope.loading = true;
  
      var method="select";
      var query="select college_name from college";
      console.log(query);
    
      $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) {
            $scope.College_data = result.data.tbldata;
           // alert(result.data.tbldata);
            console.log(result.data.tbldata);
            $scope.loading = false;
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    }

    

    $scope.emp_modal = function(){
      
     
      emp_search();
      
//       alert("its valuee "+$scope.empdetails);
      
//       if($scope.empdetails !="" || $scope.empdetails!=undefined){
//         //alert("Iam if ");

//       // $scope.empdetails="";
//         // document.getElementById("college12").selectedIndex = "0";
//         // document.getElementById("staff12").selectedIndex = "0";
        
//         emp_search();
// alert("caleld ");

//       }
//       else{
//         alert("I'm in else")
//
        
//       }

      
    }

    $scope.college_name1 = function(){
     
      emp_search();
    }
    $scope.staff_type1 = function(){

      emp_search();
    }
    var page_no=1;
    function emp_search(){
      //alert($scope.employee_search);
      //console.log($scope.search);
      $scope.empdetails="";
      $scope.page_no_emp="";
      $scope.total_record_emp="";
      $scope.opts_emp="";
      
      // document.getElementById("college12").selectedIndex = "0";
      // document.getElementById("staff12").selectedIndex = "0";

      console.log($scope.empdetails);


      checkInternet();
     // alert("Hi..");
  
      var ser = "";
         if($scope.employee_search == null || $scope.employee_search == undefined || $scope.employee_search == ""){
    
     ser = "";
        }else{
             ser = $scope.employee_search ;
        }

        var college = "";
        if($scope.college_name == null || $scope.college_name == undefined || $scope.college_name == ""){
   
          college = "";
       }else{
        college = $scope.college_name ;
       
       }

       var staff = "";
        if($scope.staff_type == null || $scope.staff_type == undefined || $scope.staff_type == ""){
   
          staff = "";
       }else{
        staff = $scope.staff_type ;
       }
  
          
      $scope.loading = true;
      
      var query="select * from employee where  staff_type LIKE '%"+staff+"%' and (employee_name  LIKE '%"+ser+"%' or employee_id LIKE '"+ser+"%') and college_name LIKE '%"+college+"%' order by id DESC";
     
      var Total_record_query = "select count(*) as total_records from employee where staff_type LIKE '%"+staff+"%' and employee_name  LIKE '%"+ser+"%' and employee_id LIKE '"+ser+"%' and college_name LIKE '%"+college+"%' order by id DESC ";

      console.log(query);
       
       $scope.loading = true;

       var records_per_page = 10;
     
    
        $http.post("php/all_pagination.php?query="+query+"&Total_record_query="+Total_record_query+"&records_per_page="+records_per_page+"&page_no="+page_no)
            .then(function (response) {
              if(response.data != "0"){
                $scope.total_no_of_pages_new = response.data.total_no_of_pages;
                console.log($scope.total_no_of_pages_new);
              $scope.empdetails = response.data.tbldata;
              $scope.page_no_new= response.data.page_no;
              $scope.tot_records_new = response.data.total_records;
              $scope.opts_new=response.data.DUEP;    
              }else{
                $scope.empdetails = "";
              }
               
              //  console.log(result.data);
                $scope.loading = false;
            }, function(response) {
                 $scope.loading = false;
                //some error
                console.log(response);
            });
    };

    
    
  $scope.employee_on_search = function () {
      emp_search();
    }
       

    $scope.Employee_details_update =  function(){
         
//       if($scope.item_name_edit == null || $scope.item_name_edit == undefined || $scope.item_name_edit == ""){
//           swal("Please enter item name");
// return;
//   }
  
         
//    if($scope.changedValue == null || $scope.changedValue == undefined || $scope.changedValue == ""){
//  swal("Please select Goods/Service");
// return;
// }

  
//   if($scope.categoryie == null || $scope.categoryie == undefined || $scope.categoryie == ""){
//  swal("Please select Category");
// return;
// }
  
// if($scope.unite == null || $scope.unite == undefined || $scope.unite == ""){
//  swal("Please select unit");
// return;
//}
  
       $scope.loading = true;

  var method="update";
  var query="update employee set `employee_name`= '"+$scope.employee_nameEdit+"',`college_name`='"+$scope.college_nameEdit+"',`designation`='"+$scope.designationEdit+"',`staff_type`='"+$scope.staff_typeEdit+"',`monthly_salary`='"+$scope.monthly_salaryEdit+"',`PF`='"+$scope.pfEdit+"',`ESI`='"+$scope.esiEdit+"',`bank_name`='"+$scope.bank_nameEdit+"',`account_no`='"+$scope.account_noEdit+"',`IFSC_code`='"+$scope.ifsc_codeEdit+"',`branch`='"+$scope.branchEdit+"',`mobile_no`='"+$scope.mobile_noEdit+"',`email`='"+$scope.emailEdit+"',`permanent_address`='"+$scope.addressEdit+"' where `employee_id` = '"+$scope.employee_id+"' ";


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
 
 
 


 $scope.on_selectEmp = function(index){
        
  $scope.employee_id =$scope.empdetails[index].employee_id;  
//   alert($scope.employee_id);  
  $scope.employee_nameEdit =$scope.empdetails[index].employee_name;
  
  $scope.college_nameEdit =$scope.empdetails[index].college_name;
  
  $scope.designationEdit =$scope.empdetails[index].designation;
  $scope.staff_typeEdit =$scope.empdetails[index].staff_type;
  $scope.monthly_salaryEdit =$scope.empdetails[index].monthly_salary;
  $scope.pfEdit =$scope.empdetails[index].PF;
  $scope.esiEdit =$scope.empdetails[index].ESI;
  $scope.bank_nameEdit =$scope.empdetails[index].bank_name;
  $scope.account_noEdit =$scope.empdetails[index].account_no;
  $scope.ifsc_codeEdit =$scope.empdetails[index].IFSC_code;
  $scope.branchEdit =$scope.empdetails[index].branch;
  $scope.mobile_noEdit =$scope.empdetails[index].mobile_no;
  $scope.emailEdit =$scope.empdetails[index].email;
  $scope.addressEdit =$scope.empdetails[index].permanent_address;
 
 

itemid  = $scope.empdetails[index].id;
}


 $scope.callList_emp= function(index){

      console.log(index);
      if(index>0){
          page_no=index;
        emp_search();
      }else{}
      
    }


});


