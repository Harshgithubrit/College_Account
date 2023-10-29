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

   var remarks_status="";

   var vendor_gen_id="";

   var vendor_gen_name="";
   
   
   var fdate="";
   
var tdate="";


  
  $scope.requisition_date = new Date();

   
var page_no=1;
    
var selec_type="All";

var payselect ="";
call_college();
call_subject_all();
call_student_course_type_all();
call_student_course_all();

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
// function get_Requi_data(){ 

// switch(payselect){
    
    
//     // case "All": 
//     // selec_type=" sem_year_type LIKE '%%' ";
//     // break;
    
//      case "semester": 
//      selec_type=" sem_year_type ='Semester' ";
//     break;
    
//      case "year": 
//      selec_type=" sem_year_type = 'Year' ";
//     break;
    
//     case "": 
//     selec_type=" sem_year_type LIKE '%%' ";
//     break;
    
    
// }

// //alert(selec_type);




//       swal("Loading...");


    
// // var query="select college_fee.*,(college_fee.total_fee - (select SUM(college_fee_instalment.amount) as amt from college_fee_instalment where college_fee.receipt_no = college_fee_instalment.receipt_no)) as reaminFee from  college_fee join student_course_applied on college_fee.student_id = student_course_applied.student_id where student_course_applied.fee_status != 'Full Paid' ";
// //   var Total_record_query="SELECT COUNT(*) As total_records FROM `college_fee` WHERE sem_year_type='"+selec_type+"' ";
   

//  var records_per_page="10";
  
//  // console.log(query);
//  //   console.log(Total_record_query);
  
  
//         $http.get("php/get_due_reportNEW.php?records_per_page="+records_per_page+"&page_no="+page_no+"&selec_type="+selec_type)
//       .then(function (response) {

      

//        console.log(response.data.DATAqUERY);
// if(response.data.datastatus != "0") {
  
//          // $scope.Requi_details = result.data;
          
//               $scope.total_no_of_pages_ = response.data.total_no_of_pages;
//     $scope.Requi_details = response.data.tbldata;
//     $scope.page_no_= response.data.page_no;
//     $scope.total_fee= response.data.total_fee;
//     $scope.total_records= response.data.total_records;
//     $scope.fee_status = response.data.fee_status;
//    console.log(response.data);
  

//   $scope.opts=response.data.DUEP;
// //console.log(response.data);
//     //    
        
// }
//   else{
//     $scope.Requi_details = "";
//   }

//  swal.close();
         
//       }, function(result) {
         
//           //some error
//         //   console.log(result);
//       });
//   };






$scope.get_college_name=function(){
    alert($scope.college_name);
}

$scope.get_subject_name=function(){
    alert($scope.subject_name);
}

$scope.get_=function(){
    alert($scope.college_name);
}

function get_Requi_data(){


    var method="select";
    var query="select college_fee.*, student_course_applied.fee_status, student_course_applied.college_name, (college_fee.total_fee - (select SUM(college_fee_instalment.amount) as amt from college_fee_instalment where college_fee.receipt_no = college_fee_instalment.receipt_no)) as reaminFee, (select mj_student.mobile from mj_student where college_fee.student_id = mj_student.emp_id) as mobile from  college_fee join student_course_applied on college_fee.student_id = student_course_applied.student_id where student_course_applied.fee_status != 'Full Paid' ";

}

$scope.show_lists=function(){
    // alert("hii"+$scope.college_name);
}


$scope.callList= function(index){

  //  console.log(index);
    if(index>0){
        page_no=index;
      get_Requi_data();
    }else{}


    
  }
 
$scope.viewstudent=function(index){
    
    //alert($scope.Requi_details[index].id);
   //  window.open('export_pdf/examples/invoice.php?receipt_no='+$scope.Requi_details[index].receipt_no,'_blank');
       window.open('export_pdf/examples/feereceipt.php?student_id='+$scope.Requi_details[index].student_id+"&receipt_id="+$scope.Requi_details[index].receipt_no+"&rid="+$scope.Requi_details[index].id,'_blank');

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

  //  console.log(result.data.mobile);
    
    
    $scope.middlename =result.data.middlename;
    
    $scope.lastname =result.data.lastname;
    
    $scope.firstname =result.data.lastname;
    
    $scope.courtesy =result.data.courtesy;



    get_Requi_data();
   // console.log(result.data.firstname);
    // window.location.href = "login.html";           
       }else{
         window.location.href = "login.html";
       }
}, function(result) {
    //some error
    console.log(result);
});



$scope.search = function(){
    
    
     
    fdate  = convert($scope.fdate);
    tdate  = convert($scope.tdate); 


 if($scope.payselect == null || $scope.payselect == undefined || $scope.payselect == ""){
      payselect ="All";
    }else{
         payselect = $scope.payselect;
    }

    
    page_no=1;
    get_Requi_data();
    
    
    
}

  function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }

   

// toastr.error("Noooo oo oo ooooo!!!", "Title", {
//     "timeOut": "0",
//     "extendedTImeout": "0"
//   });
//   toastr.success("YYEESSSSSSS");
//  toastr.info("Info Message", "Title");
//   toastr.warning("Warning");


});


