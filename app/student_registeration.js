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

   get_Requi_data();
  
  $scope.requisition_date = new Date();

  function get_Requi_data(){

    var method = "select";
    var query = "select *, (select college_name from college where college.college_id = student_registeration.college_name) as college_name, (select subject_name from student_subjects where student_subjects.subject_id = student_registeration.subject_name) as subject_name, (select course_type_name from student_course_type where student_course_type.course_type_id = student_registeration.course_type_name) as course_type_name from student_registeration order by id DESC";

    $http.post("php/API.php?method="+method+"&query="+query)
    .then(function (result) {
        
   console.log(result);
   if(result.data.success == true) {
   
    $scope.Requi_details = result.data.tbldata;
   }

      }, function(result) {
        //some error

        swal(result);

        console.log(result);
    });

  }


$scope.Req_item = function(){
  get_reci_data();
  call_student_course_all();
  call_student_course_type_all();
  call_subject_all();
  call_college();
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
        //   alert($scope.receipt_no_fl);
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


function call_college(){
 
var Query=" select * from college";
$scope.loading = true;

$http.post("php/collegeselection.php?Query="+Query)
   .then(function (result) {
       $scope.College = result.data;//result.data;
       $scope.CollegecountSelector = $scope.College[0];

//subject_data= result.data;
 //console.log(result.data);
//console.log($scope.student_subjects[0]);
      // 
    //  get_Some_College($scope.College[0]);
      $scope.loading = false;
   }, function(result) {
        $scope.loading = false;
       //some error
       console.log(result);
   });
};

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
     if($scope.college_name == null || $scope.college_name == undefined || $scope.college_name == ""){
        swal("Please Select College!");
        return;
      }
  

    if($scope.subject_name == null || $scope.subject_name == undefined || $scope.subject_name == ""){
        swal("Please Select A Course Type!");
        return;
      }
  
      if($scope.course_type_name == null || $scope.course_type_name == undefined || $scope.course_type_name == ""){
        swal("Please Select A Course!");
        return;
      }

      if($scope.course_name == null || $scope.course_name == undefined || $scope.course_name == ""){
        swal("Please Select A Subject!!");
        return;
      }


    if($scope.current_class == null || $scope.current_class == undefined || $scope.current_class == ""){
        swal("Please Select A Semester/Year!");
        return;
      }
      
      
      if($scope.pay_date == null || $scope.pay_date == undefined || $scope.pay_date == ""){
        swal("Please Select A Semester/Year!");
        return;
      }
      
      

  
    function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }
    
   var method = "insert";
   var query = "INSERT INTO `student_registeration`(`receipt_no`, `name`, `mobile`, `registeramount`, `status`, `remarks`, `date`, `time`, `recievedby`, `college_name`, `subject_name`, `course_type_name`, `course_name`, `current_class`, `payment_date`) VALUES ('"+$scope.receipt_no_fl+"','"+$scope.student_name+"', '"+$scope.student_mobile+"', '"+$scope.reg_amount+"', 'registered', '"+remarksss+"', now(), now(), '"+EMP_id+"','"+$scope.college_name+"','"+$scope.subject_name+"','"+$scope.course_type_name+"','"+$scope.course_name+"' ,'"+$scope.current_class+"', '"+convert($scope.pay_date)+"')";


   console.log(query);
    // return;
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
});
