var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http, $location) {

  $scope.Lstatus = '';
  $scope.loading = false;
    
    var session_year="";
    var selectSem="";
    var subType="";
    var pay_select="";
   var course_type_id=""; 
  var clg_name="";
  var courseID="";
  var user_full_name ="";
  
  var EMP_id ="";

  var email ="";

  var phone ="";
  
  var college="";
  
  var contact="";

   var receipt_no_last=0;

   var remarks_status="";

   var vendor_gen_id="";

   var vendor_gen_name="";
   
   
   var fdate="";
   
var tdate="";

var student_id ="";

var page_no_new=1;


  
  $scope.requisition_date = new Date();

   
var page_no=1;
    
var selec_type="All";

var payselect ="";
call_college();
call_subject_all();
call_student_course_type_all();
call_student_course_all();

get_sessions();

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
  
//   $scope.select_session=function(){
      
//   }
  
  
  
  
  function get_sessions(){
      if($scope.session == null || $scope.session == undefined || $scope.session == ""){
       session_year="";
    }else{
         session_year = $scope.session;
         alert("hiiii"+$scope.session);
    } 
      var method="select";
      
     var query="select college_fee.*, student_course_applied.*, (college_fee.total_fee - (select SUM(college_fee_instalment.amount) as amt from college_fee_instalment where college_fee.receipt_no = college_fee_instalment.receipt_no)) as reaminFee, (select mj_student.mobile from mj_student where college_fee.student_id = mj_student.emp_id) as mobile from  college_fee join student_course_applied on college_fee.student_id = student_course_applied.student_id where student_course_applied.fee_status != 'Full Paid' and student_course_applied.session ='"+session_year+"' ";

    
    console.log(query);
    // $http.post("php/due_details_data.php?Query="+Query)
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
    
       console.log(result.data);
       if(result.data.success == true) {
     
          $scope.Requi_details = result.data.tbldata;
          console.log(result.data)

           }
        
    }, function(result) {
        //some error
        console.log(result);
    });
  } 
  
// $scope.get_course_type_name=function(){
//     course_type_id=$scope.course_type_name;
// } 
//  $scope.get_college_name=function(){
//     clg_name=$scope.college_name;
// } 

// $scope.get_subject_name=function(){
//     courseID=$scope.subject_name;
// }
  
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
   


//   var records_per_page="10";
  
//  // console.log(query);
//  //   console.log(Total_record_query);
  
  
//         $http.get("php/get_due_report.php?records_per_page="+records_per_page+"&page_no="+page_no+"&selec_type="+selec_type)
//       .then(function (response) {

      

//       console.log(response.data.DATAqUERY);
// if(response.data.datastatus != "0") {
  
//          // $scope.Requi_details = result.data;
          
//               $scope.total_no_of_pages_ = response.data.total_no_of_pages;
//     $scope.Requi_details = response.data.tbldata;
//     $scope.page_no_= response.data.page_no;
//     $scope.total_fee= response.data.total_fee;
//     $scope.total_records= response.data.total_records;
//     $scope.fee_status = response.data.fee_status;
//   console.log(response.data);
  

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
//           console.log(result);
//       });
//   };

 $scope.on_std_search = function () {
//   alert($scope.stu_srch);
    //console.log($scope.search);

    // checkInternet();
   // alert("Hi..");

    var ser = "";
       if($scope.stu_srch == null || $scope.stu_srch == undefined || $scope.stu_srch == ""){
        ser = "";
      }else{
           ser = $scope.stu_srch ;
      }

    // $scope.loading = true;=
    var method="select";
    
    var query="select college_fee.*, student_course_applied.*, (college_fee.total_fee - (select SUM(college_fee_instalment.amount) as amt from college_fee_instalment where college_fee.receipt_no = college_fee_instalment.receipt_no)) as reaminFee, (select mj_student.mobile from mj_student where college_fee.student_id = mj_student.emp_id) as mobile from  college_fee join student_course_applied on college_fee.student_id = student_course_applied.student_id where student_course_applied.fee_status != 'Full Paid' and college_fee.student_name LIKE '%"+ser+"%' or college_fee.student_id LIKE '%"+ser+"%' group by college_fee.student_id order by college_fee.id DESC";
     
    // LIKE '%"+ser+"%'";
    
    // var Query="select * from mj_student where admission_status='1' and  emp_id LIKE '"+ser+"%' or (firstname LIKE '"+ser+"%'  or (mobile LIKE '"+ser+"%')) order by id DESC LIMIT 50 ";
      console.log(query);
    //  $scope.loading = true;
  
      $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
            //   $scope.staff_details = result.data;
              $scope.Requi_details = result.data.tbldata;
             console.log(result.data);
            //   $scope.loading = false;
          }, function(result) {
            //   $scope.loading = false;
              //some error
              console.log(result);
          });
          
  };





function get_Requi_data(){
    
    if($scope.college_name == null || $scope.college_name == undefined || $scope.college_name == ""){
       clg_name="";
    }else{
         clg_name = $scope.college_name;
         alert(clg_name);
    } 
    
    if($scope.subject_name == null || $scope.subject_name == undefined || $scope.subject_name == ""){
       courseID="";
    }else{
         courseID = $scope.subject_name;
    }
    
    if($scope.course_type_name == null || $scope.course_type_name == undefined || $scope.course_type_name == ""){
       course_type_id="";
    }else{
         course_type_id = $scope.course_type_name;
    }
    
    if($scope.sub_type_name == null || $scope.sub_type_name == undefined || $scope.sub_type_name == ""){
      subType="";
    }else{
         subType = $scope.sub_type_name;
    }
  
    if($scope.payselect == null || $scope.payselect == undefined || $scope.payselect == ""){
      pay_select="";
    }else{
         pay_select = $scope.payselect;
    }
    
    if($scope.select_sem == null || $scope.select_sem == undefined || $scope.select_sem == ""){
      selectSem="";
    }else{
         selectSem = $scope.select_sem;
    }
    
    var method="select";
    var query="select college_fee.*, student_course_applied.*, (college_fee.total_fee - (select SUM(college_fee_instalment.amount) as amt from college_fee_instalment where college_fee.receipt_no = college_fee_instalment.receipt_no)) as reaminFee, (select mj_student.mobile from mj_student where college_fee.student_id = mj_student.emp_id) as mobile from  college_fee join student_course_applied on college_fee.student_id = student_course_applied.student_id where student_course_applied.fee_status != 'Full Paid' and student_course_applied.college_id like '%"+clg_name+"%' and student_course_applied.subject_id like '%"+courseID+"%' and student_course_applied.course_type_id like '%"+course_type_id+"%' and student_course_applied.course_id like '%"+subType+"%' and college_fee.sem_year_type like '%"+pay_select+"%' and college_fee.sem_year like '%"+selectSem+"%' order by college_fee.id DESC ";
    
    console.log(query);
    // $http.post("php/due_details_data.php?Query="+Query)
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {
    
       console.log(result.data);
       if(result.data.success == true) {
     
          $scope.Requi_details = result.data.tbldata;
          console.log(result.data)

           }
        
    }, function(result) {
        //some error
        console.log(result);
    });
}

$scope.show_lists=function(){
    get_Requi_data();
    
    // get_sessions();
   
}


$scope.show_respect_session=function(){
    get_sessions();
   
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


 $scope.fee_installation = function (index){
     
     student_id = $scope.Requi_details[index].student_id;
      
      var sts = $scope.Requi_details[index].fee_status;
      
        $('input[name="group1u"]').val([sts]);
      
    //   getpaidamount($scope.Requi_details[index].receipt_no);
            //  var method="select";
            //   var query="SELECT a.hostel, b.fee_status,a.extra_fee,a.created_date,a.cheque_dd_date,a.cheque_dd_no,a.total_fee,a.forwarding_fee,a.others,a.prospectus_fee,a.library_fee,a.sports_fee,a.university_fee,a.college_magazine_fee,a.caution_money, a.tuition_fee,a.sem_year_type,a.sem_year,a.time,a.date,a.college_id,a.student_id,a.student_name,a.receipt_no,a.id FROM `college_fee` as a join student_course_applied as b on a.student_id=b.student_id where a.student_id='"+Mailemp_ID+"' ORDER BY a.id DESC ";
            //   $http.post("php/API.php?query="+query+"&method="+method)
            //         .then(function (result) {
                        
              //console.log(result.data.tbldata);
                   $scope.receipt_nou=$scope.Requi_details[index].receipt_no;
                 //  $scope.fee_dateu=$scope.Requi_details[index].date;
                   $scope.student_nameu=$scope.Requi_details[index].student_name;
                   $scope.student_classu=$scope.Requi_details[index].sem_year;
                   $scope.sem_yearu=$scope.Requi_details[index].sem_year_type;
                   $scope.Tuitionu=parseFloat($scope.Requi_details[index].tuition_fee);
                   $scope.Cautionu=parseFloat($scope.Requi_details[index].caution_money);
                   $scope.Magazineu=parseFloat($scope.Requi_details[index].college_magazine_fee);
                   $scope.university_feeu=parseFloat($scope.Requi_details[index].university_fee);
                   $scope.Sportsu=parseFloat($scope.Requi_details[index].sports_fee);
                   $scope.Libraryu=parseFloat($scope.Requi_details[index].library_fee);
                   $scope.Prospectusu=parseFloat($scope.Requi_details[index].prospectus_fee);
                   $scope.hostelu=parseFloat($scope.Requi_details[index].hostel);
                   $scope.Othersu=parseFloat($scope.Requi_details[index].others);
                   $scope.Forwardingu=parseFloat($scope.Requi_details[index].forwarding_fee);
                 //  $scope.total_edit=parseFloat($scope.Requi_details[index].total_fee);
                   $scope.chequeu=$scope.Requi_details[index].cheque_dd_no;
                   document.getElementById("fee_dateu").value = $scope.Requi_details[index].date;
                   document.getElementById("cheque_dateu").value = $scope.Requi_details[index].cheque_dd_date;
        
        get_student_ledger_data($scope.Requi_details[index].receipt_no,$scope.Requi_details[index].student_id);
        
        get_Student_info();
        
      }
      
      
function get_Student_info(){  

  //console.log($location.absUrl().split('?')[1]);

  $http.post('php/get_Student_info.php?uid='+student_id)
  .then(function (result) {
    
   console.log(result);
 //   REQUEST(result.data);
   
if(result.data['0'].emp_id !=undefined){
console.log(result.data);

Mailemp_ID =result.data['0'].emp_id;
emp_name = result.data['0'].firstname+" "+result.data['0'].middlename+" "+result.data['0'].lastname;

$scope.pic=result.data['0'].photo;

contact = parseFloat(result.data['0'].mobile);

console.log(parseFloat(result.data['0'].mobile));

// alert( result.data['0'].mobile);

$scope.student_details= emp_name;
//REQUEST(result.data['0'].sem_year+" "+result.data['0'].batch_session);
$scope.student_class=result.data['0'].sem_year;
$scope.tc_student_class=result.data['0'].sem_year;
$scope.tc_student_class20=result.data['0'].sem_year;

$scope.sem_year=result.data['0'].batch_session;

$scope.student_name= emp_name;
$scope.tc_student_name= emp_name;
$scope.tc_student_name20= emp_name;

college_id = result.data['0'].college_id;
$scope.course_name= result.data['0'].course_type_name;
$scope.fee_date = new Date();
console.log(parseInt(result.data[0].course_type_id));
course_type_id= parseInt(result.data[0].course_type_id);

console.log(parseInt(result.data[0].subject_id));
course= parseInt(result.data[0].subject_id);

sem_year= result.data['0'].sem_year;
sem_year_type= result.data['0'].batch_session;

$scope.sem_yeari= result.data['0'].sem_year;
$scope.sem_year_typei= result.data['0'].batch_session;

$scope.course_name1= result.data['0'].course_type_name;
$scope.year_sem1= result.data['0'].sem_year;

$scope.college_name1  =  result.data['0'].college_name;

$scope.cheque_date = new Date();

  get_credit_note();

page_no=1;
//SomeFunction(page_no);
/*
  $scope.uid = {};
  $scope.uid.firstname   =result.data['0'].firstname;
  $scope.uid.lastname   =result.data['0'].lastname;
  $scope.uid.middlename   =result.data['0'].middlename;

  $scope.uid.gender   =result.data['0'].gender;


  //REQUEST("1) "+  new Date(result.data['0'].dob).toDateString());

  //var ddate = Date.parse(result.data['0'].dob);


  $scope.uid.dob   =new Date(result.data['0'].dob).toDateString();
  
  $scope.uid.contact1   =result.data['0'].mobile;
  $scope.uid.contact2   =result.data['0'].contact2;

  $scope.uid.email   =result.data['0'].email;

  email=result.data['0'].email;
 contact=result.data['0'].mobile;

  
  $scope.uid.address1   =result.data['0'].address;

  $scope.uid.address2   =result.data['0'].address2;
  $scope.uid.city   =result.data['0'].city;
  $scope.uid.pincode   =result.data['0'].pincode;
  $scope.uid.state   =result.data['0'].state;

  $scope.uid.country   =result.data['0'].country;
  $scope.uid.emp_id   =result.data['0'].emp_id;
  $scope.uid.password   =result.data['0'].password;

  $scope.uid.id  =result.data['0'].id;

  $scope.profile_active  =result.data['0'].profile_active;

  */

 get_fee_data();
 
//  get_student_course();

  }else{
    
    swal("Student details not found!");
  }
  

}, function(result) {
  //some error
  REQUEST(result);
});

};


function get_student_ledger_data(receipt_no, student_id){ 

  $scope.loading = true;

  $scope.ledger_details = [];

  $http.post("php/get_student_ledger_data.php?receipt_no="+receipt_no+"&student_id="+student_id)
      .then(function (result) {
        console.log(result.data);
if(result.data['0'].status != "0") {
          $scope.ledger_details = result.data;


        //  REQUEST(result.data);
}
          $scope.loading = false;
      }, function(result) {
           $scope.loading = false;
          //some error
           console.log(result);
      });
  };
  
  
   function get_credit_note(){
      
      var method = "select";
      var query = "select * from student_registeration where mobile = '"+contact+"' ";
      console.log(query);
      
      $http.post("php/API.php?query="+query+"&method="+method)
      .then(function (result) {
          
      console.log(result.data);
            
     if(result.data.success==true){
        console.log( result.data.tbldata);
        $scope.credit_note_amount_up = parseFloat(result.data.tbldata[0].registeramount);
        
        $scope.credit_note_bal =  parseFloat(result.data.tbldata[0].registeramount);
        
                 
          up_pay_amt=parseFloat(result.data.tbldata[0].registeramount);

          cn_receipt_no=result.data.tbldata[0].receipt_no; 
          
          credit_note_arr_data =result.data.tbldata[0];
        
     }
    
      }, function(result) {
                   
        //some error
        console.log(result);
    });

  }


function get_fee_data(){ 

//alert(page_no_new);


      swal("Loading...");


    var query=" SELECT a.hostel, (select sum(college_fee_instalment.amount) from college_fee_instalment where college_fee_instalment.student_id = a.student_id and college_fee_instalment.receipt_no = a.receipt_no) as pending_amount, b.fee_status,a.extra_fee,a.created_date,a.cheque_dd_date,a.cheque_dd_no,a.total_fee,a.forwarding_fee,a.others,a.prospectus_fee,a.library_fee,a.sports_fee,a.university_fee,a.college_magazine_fee,a.caution_money, a.tuition_fee,a.sem_year_type,a.sem_year,a.time,a.date,a.college_id,a.student_id,a.student_name,a.receipt_no,a.id FROM `college_fee` as a join student_course_applied as b on a.student_id=b.student_id where a.student_id='"+Mailemp_ID+"' group by a.id ORDER BY a.id DESC ";
    
  var Total_record_query="SELECT COUNT(*) As total_records FROM `college_fee` where student_id='"+Mailemp_ID+"' ";
  var records_per_page="10";
  
 console.log(query);
    $http.get("php/get_fee_data.php?records_per_page="+records_per_page+"&page_no="+page_no_new+"&query="+query+"&Total_record_query="+Total_record_query)
      .then(function (response) {
        console.log(response.data);
  if(response.data.datastatus != "0") {
  
 // $scope.Requi_details = result.data;
          
    $scope.total_no_of_pages_ = response.data.total_no_of_pages;
    $scope.Amount_details = response.data.tbldata;
    console.log(response.data.tbldata);
    $scope.page_no_= response.data.page_no;
    
    $scope.pending_amount = response.data.pending_amount;
  // console.log(response.data.DUEP);
  

  $scope.opts=response.data.DUEP;
//console.log(response.data.total_records);
    //    
        
}
  else{
    $scope.Amount_details = "";
  }

 swal.close();
         
      }, function(result) {
         
          //some error
          console.log(result);
      });
      
  }

     

});





