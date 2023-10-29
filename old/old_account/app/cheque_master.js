var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http, $location) {

  $scope.Lstatus = '';
  $scope.loading = false;

  var user_full_name ="";
  
  var EMP_id ="";

  var email ="";

  var phone ="";
  
  var college="";

   var receipt_no_last=0;

   var delivery_date="";

   var remarks_status="";

   var vendor_gen_id="";

   var vendor_gen_name="";

   var page_no = 1;

   var gen_chID="";
   get_Requi_data();
  
  $scope.requisition_date = new Date();

  // function get_Requi_data(){

  //   var method = "select";
  //   var query = "select * from cheque_master order by id DESC";

  //   $http.post("php/API.php?method="+method+"&query="+query)
  //   .then(function (result) {
        
  //  console.log(result);
  //  if(result.data.success == true) {
   
  //   $scope.Requi_details = result.data.tbldata;
  //  }

  //     }, function(result) {
  //       //some error

  //       swal(result);

  //       console.log(result);
  //   });

  // }

  function get_Requi_data(){
    var records_per_page="10";
    var ser="";
    // var query = "select * from client_po where PurID LIKE '%"+ser+"%' OR ClientName LIKE '%"+ser+"%' order by id DESC ";
    var query = "select * from cheque_master where ch_id LIKE '%"+ser+"%' OR cheque_number LIKE '%"+ser+"%' order by id DESC ";
    
    var Total_record_query = "select count(*) as total_records from cheque_master order by id DESC ";

    $http.get("php/all_pagination.php?records_per_page="+records_per_page+"&page_no="+page_no+"&ser="+ser+"&query="+query+"&Total_record_query="+Total_record_query)
    .then(function (response) {
     console.log(response.data);
      if(response.data.datastatus != "0") {
              
        $scope.total_no_of_pages_ = response.data.total_no_of_pages;
        $scope.Requi_details = response.data.tbldata;
        
        $scope.page_no_= response.data.page_no;
        $scope.tot_records = response.data.total_records;
        $scope.opts=response.data.DUEP;
            
      }
      else{
        $scope.Requi_details = "";
      }

          
     }, function(result) {
          
            //some error
            console.log(result);
        });
  }



 

function get_reci_data(){ 
    
  document.getElementById("requisition_date").valueAsDate = new Date();
    
  $scope.receipt_no_fl = "";

  swal("Loading...");

  $http.post("php/get_stu_reg_id.php")
      .then(function (result) {
      
    if(result.data['0'].status != "0") {  
      //console.log(result.data);
          $scope.receipt_no_fl = parseFloat(result.data['0'].gen_emp_id);
          receipt_no_last= parseFloat(result.data['0'].gen_emp_id);
        //  console.log(result.data);
        
      //  alert(result.data['0'].gen_emp_id);
      //  console.log(result.data['0'].gen_emp_id);
    }

    swal.close();
            
    }, function(result) {
      //some error
      console.log(result);
    });

}


  $scope.save_reg_amt = function() {

    var remarksss = "";
  
    if($scope.receipt_no_fl == null || $scope.receipt_no_fl == undefined || $scope.receipt_no_fl == ""){
      swal("receipt no not loaded reload page and please try again!");
      return;
    }

    if($scope.student_name == null || $scope.student_name == undefined || $scope.student_name == ""){
      swal("Student Name is Empty!");
      return;
    }

    if($scope.student_mobile == null || $scope.student_mobile == undefined || $scope.student_mobile == ""){
      swal("Please enter student mobile number!");
      return;
    }
    
    if( $scope.reg_amount == null ||  $scope.reg_amount == undefined ||  $scope.reg_amount == "" ){
      swal("Please Enter a Registration Amount!");
      return;
    }
    if( $scope.studentremarks == null ||  $scope.studentremarks == undefined ||  $scope.studentremarks == "" ){
      remarksss = "";
    }else{
      remarksss = $scope.studentremarks;
    }

  
    function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }
    
   var method = "insert";
   var query = "INSERT INTO `student_registeration`(`receipt_no`, `name`, `mobile`, `registeramount`, `status`, `remarks`, `date`, `time`, `recievedby`) VALUES ('"+$scope.receipt_no_fl+"','"+$scope.student_name+"', '"+$scope.student_mobile+"', '"+$scope.reg_amount+"', 'registered', '"+remarksss+"', now(), now(), '"+EMP_id+"' )";


   console.log(query);
  //  return;
    swal("Loading.....");
   
       $http.post("php/API.php?method="+method 
       +"&query="+query)

       .then(function (result) {
           
      console.log(result);
      if(result.data.success == true) {

      var method ="update";
      var query = "update master_data set gen_emp_id = gen_emp_id %2B1 where id = 11";

      swal("Loading.....");
   
       $http.post("php/API.php?method="+method 
       +"&query="+query)

       .then(function (result) {
           
      console.log(result);
      if(result.data.success == true) {

        swal("Successfully Registered!");
        toastr.success("Successfully Registered!");
        
        $scope.student_mobile ="";
        $scope.student_name ="";
        $scope.studentremarks ="";
        $scope.reg_amount ="";

        get_Requi_data();
        $('#defaultModal').modal('hide');

      }
    });
  } 
        
       }, function(result) {
           //some error

           swal(result);

           console.log(result);
       });
       
   };



$scope.delete_registration = function(index){ 

  swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this registration!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
      swal("Loading...");

  var method="delete";
  var query="delete from student_registeration where id = '"+$scope.Requi_details[index].id+"' ";

  console.log(query);
  // return;

  $http.post("php/API.php?query="+query+"&method="+method)
      .then(function (result) {
        
        console.log(result.data);
        if(result.data.success==true){
          toastr.success("Successfully Deleted!");
          get_Requi_data();
        }else{
          toastr.error("Error try again!");
        }
                
      }, function(result) {
          
          //some error
          console.log(result);
      });
      } else {
         swal("Deletion Aborted!");
        }
      });
  }

   $scope.save_item_name=  function(){ 

    
    if($scope.item_name_add_new == null || $scope.item_name_add_new == undefined || $scope.item_name_add_new == ""){
      swal("Please Enter item name!");
      return;
    }

    if($scope.categoryi == null || $scope.categoryi == undefined || $scope.categoryi == ""){
      swal("Please Select Category Name!");
      return;
    }
   
      var method="insert";
      var query="INSERT INTO `office_item_name` (item_name, created_by, category_id) values ('"+$scope.item_name_add_new+"', '"+EMP_id+"', '"+$scope.categoryi+"')";
    
    
      $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
           
            console.log(result.data);
            if(result.data.success==true){
              toastr.success("Successfully Added!");
            }else{
              toastr.error("Error!", "Category", {
                    "timeOut": "0",
                    "extendedTImeout": "0"
                  });
            }
            get_item_data();
             
          }, function(result) {
             
              //some error
              console.log(result);
          });
      }
   

$scope.callList= function(index){

    console.log(index);
    if(index>0){
        page_no=index;
      get_Requi_data();
    }else{}


    
  }



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



$http.post('php/login_validation.php')
.then(function (result) {
  //console.log(result.data);  console.log(result.data.loggedIn);
  if(result.data.loggedIn == "true") {
    $scope.user_name1 =result.data.firstname;
    $scope.user_name =result.data.firstname;
    $scope.user_id =result.data.user_id;
    EMP_id =result.data.user_id;
    $scope.admin_role =result.data.admin_role;

    user_full_name=result.data.firstname+" "+result.data.middlename+" "+result.data.lastname;
    // alert(user_full_name);
    
    $scope.college =result.data.college;
    
    college =result.data.college;
    $scope.email =result.data.email;
    email = result.data.email;
    
    $scope.mobile =result.data.mobile;
    phone =result.data.mobile;    
    
    $scope.middlename =result.data.middlename;
    
    $scope.lastname =result.data.lastname;
    
    $scope.firstname =result.data.firstname;
    
    $scope.courtesy =result.data.courtesy;

  }else{
         window.location.href = "login.html";
       }
}, function(result) {
    //some error
    console.log(result);
});




$scope.Requisition_Value = function(index){
  // alert("Hello");
  // alert($scope.Requi_details[index].remarks);
   $scope.receipt_no_fl = parseFloat($scope.Requi_details[index].receipt_no);
   $scope.student_name = $scope.Requi_details[index].name;
   $scope.student_mobile = parseFloat($scope.Requi_details[index].mobile);
   
   $scope.reg_amount = parseFloat($scope.Requi_details[index].registeramount);
   $scope.studentremarks= $scope.Requi_details[index].remarks;
}

$scope.Requisition_Print_All = function(index){

  window.open('export_pdf/examples/student_reg.php?receipt_no='+$scope.Requi_details[index].receipt_no,'_blank');

}

$scope.Req_item = function(){
  var method="select";
    var query="SELECT concat(prefix_name,gen_emp_id%2B1) as id FROM `master_data` where id=13";
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) { 
      console.log(result);
            
      if(result.data.success==true){  

    //  $scope.empid=result.data.tbldata[0].id;
       gen_chID=result.data.tbldata[0].id;
    //   alert(result.data.tbldata[0].id);

      }else{
        toastr.error("Error try again!");
       
      }
            }, function(result) {
                //some error
                console.log(result);
            });

  // get_reci_data();
}

$scope.submit_cheque = function(){

  // if($scope.pay == "" || $scope.pay == "null" || $scope.pay == undefined){
  //   swal("Please Enter a payable customer name!");
  //   return;
  // }
  alert(user_full_name);

// return;
  
        var method = "insert";
        var query ="INSERT INTO `cheque_master`(`ch_id`, `cheque_number`, `cheque_number_2`, `cheque_number_3`, `cheque_number_4`, `date`, `time`, `created_by`, `amount`, `type`, `account_number`,`payee`) VALUES  ('"+gen_chID+"', '"+$scope.chrupee1+"', '"+$scope.chrupee2+"', '"+$scope.chrupee3+"', '"+$scope.chrupee4+"', now(),now(), '"+user_full_name+"', '"+$scope.rupee+"','','"+$scope.account_no+"','"+$scope.pay+"') ;update master_data set gen_emp_id = gen_emp_id%2B1 where id=13";

        console.log(query);

        $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) { 
          console.log(result.data);
                
          if(result.data.success==true){  
            
            swal("Submitted Successfully!");
            // $('#defaultModal').modal('hide');

           

            // get_all_emp_data();
            // location.reload();
            // $("#add_emp_form").resetForm();
          }else{
            toastr.error("Error try again!");
          
          }
            }, function(result) {
                //some error
                console.log(result);
            });

}

$scope.submit_uco=function(){
  alert("I'm in uco");

        var method = "insert";
        var query ="INSERT INTO `cheque_master`(`ch_id`, `cheque_number`, `cheque_number_2`, `cheque_number_3`, `cheque_number_4`, `date`, `time`, `created_by`, `amount`, `type`, `account_number`,`payee`) VALUES  ('"+gen_chID+"', '"+$scope.chk_1+"', '"+$scope.chk_2+"', '"+$scope.chk_3+"', '"+$scope.chk_4+"', now(),now(), '"+user_full_name+"', '"+$scope.amount_uco+"','','"+$scope.account_number_uco+"','"+$scope.pay_uco+"') ;update master_data set gen_emp_id = gen_emp_id%2B1 where id=13";

        console.log(query);

        $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) { 
          console.log(result.data);
                
          if(result.data.success==true){  
            
            swal("Submitted Successfully!");
            // $('#defaultModal').modal('hide');

           

            // get_all_emp_data();
            // location.reload();
            // $("#add_emp_form").resetForm();
          }else{
            toastr.error("Error try again!");
          
          }
            }, function(result) {
                //some error
                console.log(result);
            });
}



$scope.numberToWord_get= function(){
  // console.log($scope.amount_uco);


 var datastr = String($scope.amount_uco);
  console.log(datastr.length);
  if(datastr.length<10){
$scope.rupee_uco=toWords($scope.amount_uco);
  }else{
    alert("Amount not valid!");
  }


}
c

});
