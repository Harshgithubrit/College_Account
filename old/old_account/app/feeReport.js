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

function get_Requi_data(){ 

//alert("oo");


      swal("Loading...");


if(fdate==""){
    
var query=" select  cf.*, sca.fee_status from college_fee as cf JOIN student_course_applied as sca ON cf.student_id=sca.student_id order by cf.id DESC ";
  var Total_record_query="SELECT COUNT(*) As total_records, SUM(total_fee) as total_fee FROM `college_fee` as cf join student_course_applied as sca ON cf.student_id=sca.student_id";
  
}else{
var query=" select  cf.*, sca.fee_status from college_fee as cf join student_course_applied as sca ON cf.student_id=sca.student_id where cf.date between '%"+fdate+"%' and '%"+tdate+"%' order by id DESC ";
  var Total_record_query="SELECT COUNT(*) As total_records, SUM(total_fee) as total_fee FROM `college_fee` as cf join student_course_applied as sca ON cf.student_id=sca.student_id where cf.date between '%"+fdate+"%' and '%"+tdate+"%' ";
  
}
  var records_per_page="10";
  
  console.log(query);
    console.log(Total_record_query);
  
  
    $http.get("php/get_fee_report_pagination.php?records_per_page="+records_per_page+"&page_no="+page_no+"&query="+query+"&Total_record_query="+Total_record_query+"&uid="+EMP_id)
      .then(function (response) {

      

       console.log(response.data.tbldata);
if(response.data.datastatus != "0") {
  
         // $scope.Requi_details = result.data;
          
              $scope.total_no_of_pages_ = response.data.total_no_of_pages;
    $scope.Requi_details = response.data.tbldata;
    $scope.page_no_= response.data.page_no;
    $scope.total_fee= response.data.total_fee;
    $scope.total_records= response.data.total_records;
    $scope.fee_status = response.data.fee_status;
   console.log(response.data);
  

  $scope.opts=response.data.DUEP;
//console.log(response.data);
    //    
        
}
  else{
    $scope.Requi_details = "";
  }

 swal.close();
         
      }, function(result) {
         
          //some error
          console.log(result);
      });
  };


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


