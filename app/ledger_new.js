var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http, $location,$filter) {

  $scope.Lstatus = '';
  $scope.loading = false;

//  Tuition,Caution,Magazine,Sports,Library,Prospectus,Others,Forwarding,Total

//alert("OK........");
var session ="";
$scope.Tuition=0;
$scope.Caution=0;
$scope.Magazine=0;
$scope.Sports=0;
$scope.Library=0;
$scope.Prospectus=0;
$scope.Others=0;
$scope.Forwarding=0;
$scope.Total=0;
$scope.university_fee=0;
$scope.hostel=0;

$scope.tuition22=0;
$scope.caution22=0;
$scope.magazine22=0;
$scope.sports22=0;
$scope.library22=0;
$scope.prospectus22=0;
$scope.others22=0;
$scope.forwarding22=0;
$scope.university_fee22=0;
$scope.hostel22=0;

var tot_amt = 0;

var credit_note_arr_data="";

var course_type_id="";
var course="";

var all_vendor="";

var Mailemp_ID="";
var emp_name="";
var email="";
var contact="";
var address="";
var college_id="";
var address="";

var sem_year="";
var sem_year_type="";
var EMP_id="";
var profile_type="";

var page_no_new=1;

         
var up_pay_amt=0;

var cn_receipt_no=""; 
         
         
$scope.tc_date = new Date();         
         
document.getElementById('credit_note_amount_up').disabled = true;
  
  get_Student_info();
  get_reci_data();
  
  
  
    function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }

  
  function get_student_course(){
      
      var method ="select";
      var query = "select fee_structure.tution_fee, fee_structure.caution_fee, fee_structure.magazine_fee, fee_structure.university_fee, fee_structure.sports_fee, fee_structure.library_fee, fee_structure.prospectus, fee_structure.hostel_fee, fee_structure.others, fee_structure.forwarding_fee,  student_course_type.course_type_id as course_type_id, `student_course_type`.`course_type_name` as course_type_name from fee_structure join student_course_type on student_course_type.course_type_id = fee_structure.course where student_course_type.course_type_id = '"+course_type_id+"'  ";
      
      $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (response) {
          console.log(response.data);
        //  alert(result.data.length);
          
            $scope.loading = false;
            
            if(response.data.success == true) {
                
                $scope.fee_str_data = response.data.tbldata;
                all_vendor= response.data.tbldata;

                
                console.log(response.data.tbldata);
            }
              else{
                
             $scope.fee_str_data="";
            
              }
            
            // swal.close();
            
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    
  }
//   $scope.$watch('fill_data', function() {
//         alert('hey, myVar has changed!');
//     });
  
  $scope.EMPLOYEE_data = function(course_type_id){
  
 
      FILL_DATA(course_type_id);
  }
       function FILL_DATA(course_type_id){
    //   $scope.Tuition =0;
    // $scope.fee_str="";
    // alert(course_type_id);
    console.log($scope.fee_str);
      
  var aarrdata = $scope.fee_str;// $filter('filter')(all_vendor,{'course_type_id': $scope.fee_str});
    
    //console.log(parseFloat($scope.fee_str));
    
    $scope.Tuition = parseFloat(aarrdata.tution_fee);
    $scope.Caution = parseFloat(aarrdata.caution_fee);
    $scope.Magazine = parseFloat(aarrdata.magazine_fee);
    $scope.university_fee = parseFloat(aarrdata.university_fee);
    $scope.Sports = parseFloat(aarrdata.sports_fee);
    $scope.Library = parseFloat(aarrdata.library_fee);
    $scope.Prospectus = parseFloat(aarrdata.prospectus);
    $scope.hostel = parseFloat(aarrdata.hostel_fee);
    $scope.Others = parseFloat(aarrdata.others);
    $scope.Forwarding = parseFloat(aarrdata.forwarding_fee);

  }


// var activity = document.getElementById("fee_str");
// activity.addEventListener("click",function(){
//   FILL_DATA();  
// })

function get_Student_info(){  

  //console.log($location.absUrl().split('?')[1]);

  $http.post('php/get_Student_info.php?'+$location.absUrl().split('?')[1])
  .then(function (result) {
    
   console.log(result);
 //   REQUEST(result.data);
   
if(result.data['0'].emp_id !=undefined){
console.log(result.data);

Mailemp_ID =result.data['0'].emp_id;
//session_date =result.data['0'].session_date;
//alert(session_date);

emp_name = result.data['0'].firstname+" "+result.data['0'].middlename+" "+result.data['0'].lastname;

$scope.pic=result.data['0'].photo;

contact = parseFloat(result.data['0'].mobile);

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
$scope.fee_date = "";
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










$scope.tc_student_email= result.data['0'].email;

$scope.tc_student_mobile= result.data['0'].mobile;

$scope.tc_student_address= result.data['0'].address;

$scope.caste_category = result.data['0'].caste_category;
$scope.batch_session =  result.data['0'].batch_session;
$scope.roll_no =  result.data['0'].roll_no;

$scope.emp_id =  result.data['0'].emp_id;
$scope.subject_name =  result.data['0'].subject_name;
$scope.pursuing_passed =  result.data['0'].pursuing_passed;
$scope.college_name =  result.data['0'].college_name;
$scope.session =  result.data['0'].session;




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
 
 get_student_course();

  }else{
    
    swal("Student details not found!");
  }
  

}, function(result) {
  //some error
  REQUEST(result);
});

};


$scope.Req_item = function() {
 // alert("test..");
  get_reci_data();
}

$scope.Req_lib_due = function(){
    
   $http.post("php/API.php?query="+"select sum(book_due) as tot from book_due where issued_student_id = '"+Mailemp_ID+"'"+"&method="+"select")
        .then(function (response) {
          console.log(response.data);
        //  alert(result.data.length);
          
            $scope.loading = false;
            
            if(response.data.success == true) {
                
                $scope.lib_due = response.data.tbldata[0].tot;
                
                console.log(response.data.tbldata[0].tot);
            }
              else{
                
             $scope.lib_due="";
            
              }
            
            // swal.close();
            
        }, function(result) {
             $scope.loading = false;
            //some error
            console.log(result);
        });
    
}

 $scope.deleteInstallment = function(index){
     
     var id=$scope.Amount_details[index].id;
     
    
      swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this imaginary file!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
        
       swal("Loading...");
      
      
      var method="delete";
      var query="Delete from `college_fee_instalment` where id='"+id+"' ";
              
   $http.post("php/API.php?query="+query+"&method="+method)
  .then(function (result) {
   console.log(result.data);
  if(result.data.success==true) {

   toastr.success("Removed Successfully!");
   
  swal("Removed successfully!");
  
  
                
                get_student_ledger_data($scope.Amount_details[index].receipt_no, $scope.Amount_details[index].student_id);
  
  getpaidamount($scope.Amount_details[index].receipt_no);
 
 
}else{
  toastr.error("Error!");
}

swal.close();
     
  }, function(result) {
     
      //some error
      console.log(result);
  });

    } else {
    //  swal("Your imaginary file is safe!");
    }
  });        
          
     
 }
 
 


function get_reci_data(){ 

     $scope.receipt_no = "";
     
    var method="select";
    var query="SELECT * FROM fee_structure where course_type='"+course_type_id+"' and course = '"+course+"' " ;
    console.log(query);
    
    $http.post("php/API.php?query="+query+"&method="+method)
    .then(function (result) {  
        
        console.log(result.data);

  //  $scope.Tuition= parseInt(result.data.tbldata[0].tution_fee);

    $scope.Caution=parseInt(result.data.tbldata[0].caution_fee);
    $scope.Magazine=parseInt(result.data.tbldata[0].magazine_fee);
    $scope.university_fee=parseInt(result.data.tbldata[0].university_fee);
    $scope.Sports=parseInt(result.data.tbldata[0].sports_fee);
    $scope.Library=parseInt(result.data.tbldata[0].library_fee);
    $scope.Prospectus=parseInt(result.data.tbldata[0].prospectus);
    $scope.hostel=parseInt(result.data.tbldata[0].hostel_fee);
    $scope.Others=parseInt(result.data.tbldata[0].others);
    $scope.Forwarding=parseInt(result.data.tbldata[0].forwarding_fee);
       
    }, function(result) {
       
        //some error
        console.log(result);
    });
    
    
  $http.post("php/get_reci_fee_id.php")
      .then(function (result) {
      
if(result.data['0'].status != "0") {  
 // console.log(result.data);
          $scope.receipt_no = parseFloat(result.data['0'].gen_emp_id);
        //  receipt_no_last= parseFloat(result.data['0'].gen_emp_id);
        //  console.log(result.data);
        
      //  alert(result.data['0'].gen_emp_id);
      //  console.log(result.data['0'].gen_emp_id);
}
        
}, function(result) {
  //some error
  //console.log(result);
});

};

//$scope.Tota = $scope.Tuition+$scope.Caution+$scope.Magazine+$scope.Sports+$scope.Library+$scope.Prospectus+$scope.Others+$scope.Forwarding;


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



  $scope.FeeSubmitU = function() {
      
    if(Mailemp_ID == null || Mailemp_ID == undefined || Mailemp_ID == ""){
      swal("Student id not load please try again!");
      return;
    }
  
    var totu = parseFloat(document.getElementById("Tuitionu").value)
    +parseFloat(document.getElementById("Cautionu").value)
    +parseFloat(document.getElementById("Magazineu").value)
    +parseFloat(document.getElementById("Sportsu").value)
    +parseFloat(document.getElementById("hostelu").value)
    +parseFloat(document.getElementById("Libraryu").value)
    +parseFloat(document.getElementById("Prospectusu").value)
    +parseFloat(document.getElementById("Othersu").value)
    +parseFloat(document.getElementById("Forwardingu").value)
    +parseFloat(document.getElementById("university_feeu").value);
 
  
    if(totu == null || totu == undefined || totu == "" || totu == "0.0" || totu == 0 ){
      swal("Please add fee value!");
      return;
    }
  
    function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }
    
    var fee_date= convert(document.getElementById("fee_dateu").value);
    if(fee_date == null || fee_date == undefined || fee_date == "" || fee_date == "0.0" || fee_date == 0 ){
      swal("Please select fee date!");
      return;
    }

    var student_classu= document.getElementById("student_classu").value;


    if(student_classu == null || student_classu == undefined || student_classu == "" || student_classu == "0.0" || student_classu == 0 ){
      swal("Please enter class!");
      return;
    }

     var items = [];
    $('#sem_yearu option:selected').each(function(){ items.push($(this).val()); });
    var sem_yearu = items.join(', ');
    
    if(sem_yearu == null || sem_yearu == undefined || sem_yearu == "" ){
      swal("Please select semester/year!");
      return;
    }

    var rates = document.getElementsByName('group1u');
    var rate_value;
    for(var i = 0; i < rates.length; i++){
        if(rates[i].checked){
            rate_value = rates[i].value;
        }
    }

    if(rate_value == null || rate_value == undefined || rate_value == ""){
     swal("Please select Full/Half Payment");
    return;
    } 

    var cheque_dateu= document.getElementById("cheque_dateu").value;
    var Forwardingu =  document.getElementById("Forwardingu").value;
    var Othersu = document.getElementById("Othersu").value;
    var Prospectusu =  document.getElementById("Prospectusu").value;
    var Libraryu =  document.getElementById("Libraryu").value;
    var Sportsu =  document.getElementById("Sportsu").value;
    var university_feeu =  document.getElementById("university_feeu").value;
    var Magazineu =  document.getElementById("Magazineu").value;
    var Cautionu =  document.getElementById("Cautionu").value;
    var Tuitionu = document.getElementById("Tuitionu").value; 
    var receipt_nou = document.getElementById("receipt_nou").value; 
    var hostel = document.getElementById("hostelu").value; 


    var num_cheque="";
    if(document.getElementById("chequeu").value == null ||document.getElementById("chequeu").value == undefined || document.getElementById("chequeu").value == ""){
      num_cheque="";
    }else{
      num_cheque=document.getElementById("chequeu").value;
    }
    
    var drawn_on="";
    if($scope.drawn_on == null || $scope.drawn_on == undefined || $scope.drawn_on == ""){
      drawn_on="";
    }else{
      drawn_on=$scope.drawn_on;
    }
    
    if(Forwardingu==""){
        Forwardingu =0;
    }
    if(Othersu==""){
        Othersu =0;
    }
    if(Prospectusu==""){
        Prospectusu =0;
    }
    if(Libraryu==""){
        Libraryu =0;
    }
    if(Sportsu==""){
        Sportsu =0;
    }
    if(university_feeu==""){
        university_feeu =0;
    }
    if(Magazineu==""){
        Magazineu =0;
    }
    if(Cautionu==""){
        Cautionu =0;
    }
    if(Tuitionu==""){
        Tuitionu =0;
    }
    
    if(hostel==""){
        hostel =0;
    }

    swal("Loading.....");
   
      $http.post("php/Fee_Update.php?user_id="+ Mailemp_ID 
      +"&student_name="+ emp_name
      +"&Tuition="+ Tuitionu
      +"&Caution="+ Cautionu
      +"&Magazine="+ Magazineu
      +"&Sports="+ Sportsu
      +"&Library="+ Libraryu
      +"&Prospectus="+ Prospectusu
      +"&hostel="+ hostel
      +"&Others="+ Othersu
      +"&Forwarding="+ Forwardingu
      +"&receipt_no="+ receipt_nou
      +"&cheque="+$scope.chequeu
      +"&cheque_date="+ convert(cheque_dateu)
      +"&drawn_on="+ $scope.drawn_onu
      +"&total="+ totu
      +"&college_id="+ college_id
      +"&sem_year="+ student_classu
      +"&sem_year_type="+ sem_yearu
      +"&emp_id="+ EMP_id
      +"&university_fee="+ university_feeu
      +"&fee_date="+  convert(fee_date)
     +"&fee_status="+  rate_value
     +"&session_data="+session
  
      )
      .then(function (result) {
           
      console.log(result.data);
      if(result.data['0'].status == "1") {
       //SomeFunction(1);
       get_fee_data();
      swal("Success!", result.data['0'].message, "success");
      }else if(result.data['0'].status == "0") {
            
      swal(result.data['0'].message);
      }
      swal.close();
      location.reload();
      // $('#defaultModalUpdate').modal('hide');
      // $('#defaultModal').modal('hide');
               
          }, function(result) {
              //some error
              console.log(result);
          });
           
  };
  


   

// $(document).on('click', '.preview_delete', function(){  
//   //alert($(this).data("id0"));
// //  alert($(this).data("id3"));
// //  alert($(this).data("id4"));
//   //alert("tex");
//  var student_id= $(this).data("id2");
//  var sem_year  =  $(this).data("id4");
//  var batch_session = $(this).data("id3");
  

//   swal({
//     title: "Are you sure?",
//     text: "Once deleted, you will not be able to recover this imaginary file!",
//     icon: "warning",
//     buttons: true,
//     dangerMode: true,
//   })
//   .then((willDelete) => {
//     if (willDelete) {
//       swal("Loading...");

//   var query_delete="delete from college_fee where id ="+$(this).data("id0")+" and receipt_no = '"+$(this).data("id1")+"' ";
   
//   $http.post("php/DeleteItem.php?query="+ query_delete)
//   .then(function (result) {
      
// ///console.log(result.data);
// if(result.data['0'].status == "1") {

  
  
  
//  // SomeFunction(1);
// swal("Success!", result.data['0'].message, "success");
//   toastr.success("Deleted Successfully!");
  
// get_student_data();




//   $http.post("php/Course_Update.php?student_id="+student_id+"&sem_year="+sem_year+"&batch_session="+batch_session)
//   .then(function (result) {
      
//       console.log(result.data);
      
//   }, function(result) {
//       //some error
//       console.log(result);
//   }); 
  
  

// }else if(result.data['0'].status == "0") {
// swal(result.data['0'].message);
//  toastr.error("Error!");
// }

// swal.close();

// $('#defaultModalUpdate').modal('hide');
// $('#defaultModal').modal('hide');
      
//   }, function(result) {
//       //some error
//       console.log(result);
//   });

// } else {
//   //  swal("Your imaginary file is safe!");
//   }
// });

  
// });




$scope.FeeSubmit = function() {
  
  if(Mailemp_ID == null || Mailemp_ID == undefined || Mailemp_ID == "" || Mailemp_ID == "0"){
    swal("Student id not load please try again!");
    return;
  }
  if($scope.sem_year == null || $scope.sem_year == undefined || $scope.sem_year == "" || $scope.sem_year == "0.0" || $scope.sem_year == 0 ){
    swal("Please select Semester/Year");
    return;
  }

  if($scope.student_class == null || $scope.student_class == undefined || $scope.student_class == "" || $scope.student_class == "0.0" || $scope.student_class == 0 ){
    swal("Please enter class!");
    return;
  }
  var tot = $scope.Tuition+$scope.Caution+$scope.Magazine+$scope.Sports+$scope.Library+$scope.Prospectus+$scope.Others+$scope.hostel+$scope.Forwarding+$scope.university_fee;
// alert(tot);

  if(tot == null || tot == undefined || tot == "" || tot == "0.0" || tot == 0 ){
    swal("Please add fee value!");
    return;
  }

  var num_cheque="";
  if($scope.cheque == null || $scope.cheque == undefined || $scope.cheque == ""){
     num_cheque="";
  }else{
     num_cheque=$scope.cheque;
  }

  var drawn_on="";
  if($scope.drawn_on == null || $scope.drawn_on == undefined || $scope.drawn_on == ""){
     drawn_on="";
  }else{
     drawn_on=$scope.drawn_on;
  }

  function convert(str) {
    var date = new Date(str),
      mnth = ("0" + (date.getMonth() + 1)).slice(-2),
      day = ("0" + date.getDate()).slice(-2);
    return [date.getFullYear(), mnth, day].join("-");
  }
  
  
    if(Mailemp_ID == null || Mailemp_ID == undefined || Mailemp_ID == "" || Mailemp_ID == "0"){
    swal("Student id not load please try again!");
    return;
  }
  
    if($scope.sem_year == null || $scope.sem_year == undefined || $scope.sem_year == "" || $scope.sem_year == "0.0" || $scope.sem_year == 0 ){
    swal("Please select Semester/Year");
    return;
  }
  
   if($scope.session_data == null || $scope.session_data == undefined || $scope.session_data == "")
   {    swal("Please select session_data");
    return;
 }

  var changedVal = "Half Paid";
  
  var fee_date= convert($scope.fee_date);
//   swal("Loading.....");
     $http.post("php/insertAPI.php?user_id="+ Mailemp_ID 
     +"&student_name="+ emp_name
     +"&Tuition="+ $scope.Tuition
     +"&Caution="+ $scope.Caution
     +"&Magazine="+ $scope.Magazine
     +"&Sports="+ $scope.Sports
     +"&Library="+ $scope.Library
     +"&Prospectus="+ $scope.Prospectus
     +"&hostel="+ $scope.hostel
     +"&Others="+ $scope.Others
     +"&Forwarding="+ $scope.Forwarding
     +"&receipt_no="+ $scope.receipt_no
     +"&cheque="+ num_cheque
     +"&cheque_date="+ convert($scope.cheque_date)
     +"&drawn_on="+ drawn_on
     +"&total="+ tot
     +"&college_id="+ college_id
     +"&sem_year="+ $scope.student_class
     +"&sem_year_type="+ $scope.sem_year
     +"&emp_id="+ EMP_id
     +"&university_fee="+ $scope.university_fee
     +"&fee_date="+  convert($scope.fee_date)
     +"&fee_status="+ changedVal
     +"&session_data="+$scope.session_data

    
     )
     .then(function (result) {
         
console.log(result.data);

if(result.data['0'].status == "1") {
  
 // SomeFunction(1);
 // get_student_data();
 

 get_fee_data();


//get_reci_data();
$scope.Tuition=0;
$scope.Caution=0;
$scope.Magazine=0;
$scope.Sports=0;
$scope.Library=0;
$scope.Prospectus=0;
$scope.Others=0;
$scope.Forwarding=0;
$scope.hostel=0;
$scope.cheque="";
$scope.cheque_date;
$scope.drawn_on="";
$scope.university_fee=0;

// swal("Submited Successfully!");
  //  toastr.success("Submited Successfully!");
swal("Success!", result.data['0'].message, "success");
//  $('#defaultModal').modal('hide'); 

location.reload();



//  get_fee_data();
  //window.location.href = "Ledger.html?uid="+Mailemp_ID;


}else if(result.data['0'].status == "0") {
swal(result.data['0'].message);

  toastr.error("try after some time!");
 }else if(result.data['0'].status == "2") {
swal(result.data['0'].message);

  toastr.error("try after some time!");
 }

// swal.close();

//  $('#defaultModal').modal('hide');
         
     }, function(result) {
         
  toastr.error("Error!");
         //some error
         console.log(result);
     });
     
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
  
}


  
  
  
  $scope.GOBACK = function(){
    
   // console.log(profile_type);
    
        if(profile_type =="Account" ) {
           window.location.href = "Account_index.html"; 
       }
        else if(profile_type =="Admin" ) {
        window.location.href = "index.html";
       } else if(profile_type =="Staff" ) {
            window.opener = self;
    window.close();
       
    }
}





$http.post('php/login_validation.php')
.then(function (result) {
    
  //onsole.log(result.data);  
  //console.log(result.data.ctype);
  
  if(result.data.loggedIn == "true") {
    $scope.user_name1 =result.data.firstname;
    $scope.user_name =result.data.firstname;
    
      profile_type =result.data.ctype;
      
    $scope.user_id =result.data.user_id;
    EMP_id =result.data.user_id;
    $scope.admin_role =result.data.admin_role;
   // console.log(result.data.firstname);
    // window.location.href = "login.html";           
       }else{
         window.location.href = "login.html";
       }
}, function(result) {
    //some error
    console.log(result);
});


/*

  $http.post('php/login_validation.php')
  .then(function (result) {
      
      console.log(result.data);  console.log(result.data.loggedIn);
      if(result.data.loggedIn == "true") {
       
        window.location.href = "index.html";
             
         }
      
  }, function(result) {
      //some error
      console.log(result);
  });

*/



  $scope.showModal = false;
  $scope.buttonClicked = "";
  $scope.toggleModal = function(btnClicked){
      $scope.buttonClicked = btnClicked;
      $scope.showModal = !$scope.showModal;
  };
  

  $scope.formSubmit = function() {
   // swal("Hello world!");

      $http.post("php/login.php?user_id="+ $scope.user_id +"&password="+ $scope.password)
      .then(function (result) {
          
  //$scope.result = result.data.firstname;
     //   console.log(result.data.firstname);

        
                     
if(result.data.firstname!= "error") {
 // alert("welcome");
 swal("Wrong details!");
  //redirect here
  window.location.href = "index.html";
}
else{
 // alert("error!");
 swal("Please Try again!");

// $scope.result = "Please enter valid details!";
 $scope.showModal = !$scope.showModal;
      
  }
          
          
      }, function(result) {
          //some error
          console.log(result);
      });
      
  };
  
  $scope.fee_installation = function (index){
      
      
      var sts = $scope.Requi_details[index].fee_status;
       session =$scope.Requi_details[index].session_date;
       ;
        $('input[name="group1u"]').val([sts]);
      
      
      
       getpaidamount($scope.Requi_details[index].receipt_no);
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
                   
        //             }, function(result) {
             
        //       //some error
        //       console.log(result);
        //   });
        
        get_student_ledger_data($scope.Requi_details[index].receipt_no,$scope.Requi_details[index].student_id);
        
      }
     
     
  
  $scope.loginTask = function () {
    $http.post('php/login.php')
        .then(function (result) {
            $scope.lastName = result.data;
          //  console.log(result.data);
            
        }, function(result) {
            //some error
            console.log(result);
        });
  
  };





  
  
//   function SomeFunction(page_no){
//       $('#live_p_data').html("Loading..."); 

     
//   if(Mailemp_ID == null || Mailemp_ID == undefined || Mailemp_ID == ""){
//     swal("Student id not load please try again!");
//     return;
//   }

//     // swal("Loading...", {
//   //   buttons: false,
//   //    timer: 500,
//   //  });
//               $.ajax({  
//                       url:"php/Ledger_list_ajex.php", 
//                       method:"POST",  
//                       data:{page_no:page_no,Mailemp_ID:Mailemp_ID},  
//                       dataType:"text",  
//                       success:function(data){  
//                             //alert(data);  
//                             //fetch_data();  
                            
//   $('#live_p_data').html(data);   

//                       }  
//                   }); 
//   }
  
  
    
//         $(document).on('click', '.cbtn_view', function(){  
//               page_no=$(this).data("id3");
//              // alert(page_no);
//             SomeFunction(page_no);
//         //   window.location.href = "Gallery.php?page_no="+page_no;   
//   //           $('html, body').animate({scrollTop:$('#topupdates').position().top}, 'smooth');
//   //$('#topupdates').focus();
//                   });


        $scope.SaveAmount = function (){
            
            
        
        if($scope.tuition22 == null || $scope.tuition22 == undefined || $scope.tuition22 == ""){
            $scope.tuition22 = 0;
        }
        
        if($scope.caution22 == null || $scope.caution22 == undefined || $scope.caution22 == ""){
            $scope.caution22 = 0;
        }
        
        if($scope.magazine22 == null || $scope.magazine22 == undefined || $scope.magazine22 == ""){
            $scope.magazine22 = 0;
        }
        
        if($scope.university_fee22 == null || $scope.university_fee22 == undefined || $scope.university_fee22 == ""){
            $scope.university_fee22 = 0;
        }
        
        if($scope.sports22 == null || $scope.sports22 == undefined || $scope.sports22 == ""){
            $scope.sports22 = 0;
        }
           
        if($scope.library22 == null || $scope.library22 == undefined || $scope.library22 == ""){
            $scope.library22 = 0;
        }
        
        if($scope.prospectus22 == null || $scope.prospectus22 == undefined || $scope.prospectus22 == ""){
            $scope.prospectus22 = 0;
        }
        
        if($scope.hostel22 == null || $scope.hostel22 == undefined || $scope.hostel22 == ""){
            $scope.hostel22 = 0;
        }
        
        if($scope.others22 == null || $scope.others22 == undefined || $scope.others22 == ""){
            $scope.others22 = 0;
        }
        
        if($scope.forwarding22 == null || $scope.forwarding22 == undefined || $scope.forwarding22 == ""){
            $scope.forwarding22 = 0;
        }
        
            
        // if($scope.payamount == null || $scope.payamount == undefined || $scope.payamount == ""){
        // swal("Please Enter Amont!");
        // return;
        // }
        //  if($scope.remark == null || $scope.remark == undefined || $scope.remark == ""){
        // swal("Please Enter Remark!");
        // return;
        // }
        
       // swal($scope.payment_type);
        
          if($scope.payment_type == null || $scope.payment_type == undefined || $scope.payment_type == ""){
        swal("Please Choose payment type!");
        return;
        }
        
        
        if($scope.payment_type== "cash" ){
            
            if(!$scope.transaction_id == null || !$scope.transaction_id == undefined || !$scope.transaction_id == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            }
            if(!$scope.cheque_no == null || !$scope.cheque_no == undefined || !$scope.cheque_no == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            }
            if(!$scope.chq_date == null || !$scope.chq_date == undefined || !$scope.chq_date == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            }
            
        }
        
        else if($scope.payment_type== "cheque" ){
            
                 if(!$scope.transaction_id == null || !$scope.transaction_id == undefined || !$scope.transaction_id == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            }
            if($scope.cheque_no == null || $scope.cheque_no == undefined || $scope.cheque_no == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            }
            if($scope.chq_date == null || $scope.chq_date == undefined || $scope.chq_date == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            } 
        }
            
        else{
            
            if($scope.transaction_id == null || $scope.transaction_id == undefined || $scope.transaction_id == ""){
            swal("you cant Enter when choose  Cash!");
            return;
            }
            if(!$scope.cheque_no == null || !$scope.cheque_no == undefined || !$scope.cheque_no == ""){
            swal("you cant Enter when choose  Online!");
            return;
            }
            if(!$scope.chq_date == null || !$scope.chq_date == undefined || !$scope.chq_date == ""){
            swal("you cant Enter when choose  Online!");
            return;
            } 
            
        }
        
        
        // var TotalAmount =($scope.tuition22+$scope.caution22+$scope.magazine22+$scope.university_fee22+$scope.sports22+$scope.library22+$scope.prospectus22+$scope.hostel22+$scope.others22+$scope.forwarding22);
         
           if($('input[name="credit_mode"]').is(':checked')){
               
            up_pay_amt = $scope.credit_note_amount_up;
            
            if($scope.searched_cn == null || $scope.searched_cn == "" || $scope.searched_cn == undefined || $scope.searched_cn == "undefined"){
                $scope.searched_cn= "";
            }
            else{
                var filtdata = $filter('filter')(credit_note_arr_data,{'receipt_no': $scope.searched_cn});
            console.log(filtdata);
            cn_receipt_no = filtdata[0].receipt_no;
            }
              
            
          
         
           }else{
               up_pay_amt=0;
               
               cn_receipt_no="";
               
           }
         
       if($scope.pay_date == null || $scope.pay_date == undefined || $scope.pay_date == ""){
        swal("Please Choose Payment Date!");
        return;
        }
            
    function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }
    
//var student_id= $(this).data("id2");
            // var payamount = document.getElementById("payamount").value;
            var remark = document.getElementById("remarkstext").value;
             var receipt_no = document.getElementById("receipt_nou").value;
             var payment_type = $scope.payment_type;
             var cheque_no = $scope.cheque_no;
             var chq_date = convert($scope.chq_date);
             var transaction_id = $scope.transaction_id;
         
          
            var currentdate = new Date(); 
          var datetime = "Last Sync: " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + " @ "  
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
                
                var hdate= currentdate.getFullYear()+"-"+ (currentdate.getMonth()+1)  + "-"+  currentdate.getDate()  ;
                var time=  currentdate.getHours() + ":"  + currentdate.getMinutes() + ":" + currentdate.getSeconds();
          
        
            $scope.payamount
            
              var method="insert";
              var query="INSERT INTO `college_fee_instalment`(`student_id`,`receipt_no`,`payment_type`,`cheque_no`,`cheque_date`,`transaction_id`, `remarks`, `date`, `time`, `status`, `fee_type`, `tuition_fee`, `caution_money`, `college_magazine_fee`, `university_fee`, `sports_fee`, `library_fee`, `prospectus_fee`, `hostel`, `others`, `forwarding_fee`,`amount`, `credit_note_amount`, `credit_note_receipt_no`, `payment_date`) VALUES ('"+Mailemp_ID+"','"+receipt_no+"','"+payment_type+"','"+cheque_no+"','"+chq_date+"','"+transaction_id+"','"+remark+"','"+hdate+"', '"+time+"','Paid', '"+$scope.fee_type+"', '"+$scope.tuition22+"', '"+$scope.caution22+"', '"+$scope.magazine22+"', '"+$scope.university_fee22+"', '"+$scope.sports22+"', '"+$scope.library22+"', '"+$scope.prospectus22+"', '"+$scope.hostel22+"', '"+$scope.others22+"', '"+$scope.forwarding22+"','"+$scope.payable_amt+"', '"+up_pay_amt+"', '"+cn_receipt_no+"', '"+convert($scope.pay_date)+"') ";
             
             console.log(query);
            //  return;
            //  var query="INSERT INTO `college_fee_instalment`(`student_id`, `amount`, `remarks`, `date`, `time`, `status`, `fee_type`) VALUES ('"+Mailemp_ID+"', '"+payamount+"', '"+remark+"', now(), now(),'Paid', '"+$scope.fee_type+"' ) ";

             
              $http.post("php/API.php?query="+query+"&method="+method)
                    .then(function (result) {
             console.log(result.data);
            
             if(result.data.success==true){
                 
                 var query = "INSERT INTO `student_registeration_transaction`( `cn_receipt_no`, `student_fee_receipt_no`, `mobile`, `registeramount`, `date`, `time`) VALUES ('"+cn_receipt_no+"','"+receipt_no+"','"+contact+"','"+up_pay_amt+"',now(), now()); update student_registeration set registeramount =(registeramount %2D '"+up_pay_amt+"') where receipt_no = '"+cn_receipt_no+"' ";
                 
                 console.log(query);
                //  return;
                
                  
              $http.post("php/multi_insert.php?query="+query)
                    .then(function (result) {
             console.log(result.data);
            
             if(result.data[0].status=="0"){
                 
                    toastr.success("Inserted Successfully!");
                    swal("Inserted successfully!");
                    
                //   document.getElementById("payamount").value="";
                     document.getElementById("remarkstext").value="";
                
                    getpaidamount(receipt_no);
                    get_student_ledger_data(receipt_no, Mailemp_ID)
                 //   alert(receipt_no);
                    
                     
                    
                    // get_Requi_item_data();
                    // get_Requi_data();
                        get_fee_data();
                  }
                   $('#defaultModalINS').modal('hide');
                     
                     
                     //   $('#defaultModalUpdate').modal('hide');
                }, function(result) {
                   
                    //some error
                    console.log(result);
                });
            
                
                }else{
                toastr.error("Error Inserting Data. Please Try After Some Time!");
                }
                
                swal.close();
                   
                }, function(result) {
                   
                    //some error
                    console.log(result);
                });
  }
  
  
  
  
//  $scope.FeeSubmitU = function (){
     
     
//       var totu = parseFloat(document.getElementById("Tuitionu").value)
//     +parseFloat(document.getElementById("Cautionu").value)
//     +parseFloat(document.getElementById("Magazineu").value)
//     +parseFloat(document.getElementById("Sportsu").value)
//     +parseFloat(document.getElementById("hostelu").value)
//     +parseFloat(document.getElementById("Libraryu").value)
//     +parseFloat(document.getElementById("Prospectusu").value)
//     +parseFloat(document.getElementById("Othersu").value)
//     +parseFloat(document.getElementById("Forwardingu").value)
//     +parseFloat(document.getElementById("university_feeu").value);

// alert(totu);
//  var rates = document.getElementsByName('group1u');
// var rate_value;
// for(var i = 0; i < rates.length; i++){
//     if(rates[i].checked){
//         rate_value = rates[i].value;
//     }
// }

//   var student_id=$scope.Amount_details[0].student_id;
  
 
// //       var method="update";
// //         var query="UPDATE college_fee  INNER JOIN student_course_applied ON college_fee.student_id = student_course_applied.student_id SET student_course_applied.fee_status='"+rate_value+"', where college_fee.student_id='"+student_id+"';
              
      
//         }

//  $scope.fee_installation = function(){
//          getpaidamount();
//   }


        
        function getpaidamount(receipt_no){
            
            // var student_id= $(this).data("id2");
            // var payamount = document.getElementById("payamount").value;
            // var remark = document.getElementById("remarkstext").value;
            
              var method="select";
              var query="SELECT *, (tuition_fee %2B caution_money %2B college_magazine_fee %2B university_fee %2B sports_fee %2B library_fee %2B prospectus_fee %2B hostel %2B others %2B forwarding_fee) as fee_tot FROM `college_fee_instalment` WHERE receipt_no='"+receipt_no+"' and student_id='"+Mailemp_ID+"' order by id DESC ";
              
               console.log(query);
               
               swal("Loading...");
               
              $http.post("php/API.php?query="+query+"&method="+method)
                    .then(function (result) {
                        
             console.log(result.data);
            
             if(result.data.success==true){
            
               $scope.Amount_details = result.data.tbldata;
                // get_Requi_data();
                
                $scope.getTotal = function(){
                var total = 0;
                for(var i = 0; i < result.data.tbldata.length; i++){
                    var product = result.data.tbldata[i].amount;
                    total = parseFloat(product)+parseFloat(total);
                }
                return total;
            }
                
                }else{
                toastr.error("Error Inserting Data. Please Try After Some Time!");
                }
                
                swal.close();
                   
                }, function(result) {
                   
                    //some error
                    console.log(result);
                });
  }

        

   

function get_fee_data(){ 

//alert(page_no_new);

    //   swal("Loading...");

    // var query=" SELECT a.hostel,a.session_date, (select sum(college_fee_instalment.amount) from college_fee_instalment where college_fee_instalment.student_id = a.student_id and college_fee_instalment.receipt_no = a.receipt_no) as pending_amount, b.fee_status,a.extra_fee,a.created_date,a.cheque_dd_date,a.cheque_dd_no,a.total_fee,a.forwarding_fee,a.others,a.prospectus_fee,a.library_fee,a.sports_fee,a.university_fee,a.college_magazine_fee,a.caution_money, a.tuition_fee,a.sem_year_type,a.sem_year,a.time,a.date,a.college_id,a.student_id,a.student_name,a.receipt_no,a.id FROM `college_fee` as a join student_course_applied as b on a.student_id=b.student_id where a.student_id='"+Mailemp_ID+"'  group by a.id ORDER BY a.id DESC ";

    var query="SELECT *,(select sum(college_fee_instalment.amount) from college_fee_instalment where college_fee_instalment.student_id = college_fee.student_id and college_fee_instalment.receipt_no =college_fee.receipt_no) as pending_amount FROM `college_fee` join  student_course_applied  on college_fee.receipt_no=student_course_applied.receipt_no where college_fee.student_id='"+Mailemp_ID+"' ORDER BY college_fee.id DESC";
    
  var Total_record_query="SELECT COUNT(*) As total_records FROM `college_fee` where student_id='"+Mailemp_ID+"' ";
  
  var records_per_page="10";
  
 console.log(query);
    $http.get("php/get_fee_data.php?records_per_page="+records_per_page+"&page_no="+page_no_new+"&query="+query+"&Total_record_query="+Total_record_query)
      .then(function (response) {
         console.log(response.data);
  if(response.data.datastatus != "0") {
  
 // $scope.Requi_details = result.data;
          
    $scope.total_no_of_pages_ = response.data.total_no_of_pages;
    $scope.Requi_details = response.data.tbldata;
    console.log(response.data.tbldata);
    $scope.page_no_= response.data.page_no;
    
    $scope.pending_amount = response.data.pending_amount;
  // console.log(response.data.DUEP);
  

  $scope.opts=response.data.DUEP;
//console.log(response.data.total_records);
    //    
        
}
  else{
    $scope.Requi_details = "";
  }

//  swal.close();
         
      }, function(result) {
         
          //some error
          console.log(result);
      });
      
  }


$scope.callList= function(index){

    console.log(index);
    if(index>0){
        page_no_new=index;
      get_fee_data();
    }else{}


    
  }
  
  
  $scope.Requisition_Print_All= function(index){
    // alert("This is "+$scope.Requi_details[index].student_id+"receipt No. "+$scope.Requi_details[index].receipt_no+"This is id "+$scope.Requi_details[index].id);
    // return;
  window.open('export_pdf/examples/feereceipt.php?student_id='+$scope.Requi_details[index].student_id+"&receipt_id="+$scope.Requi_details[index].receipt_no+"&rid="+$scope.Requi_details[index].id,'_blank');
  }
  
 
    $scope.fee_install_Print= function(index){
  window.open('export_pdf/examples/feereceipt2.php?student_id='+$scope.Amount_details[index].student_id+"&receipt_id="+$scope.Amount_details[index].receipt_no+"&id="+$scope.Amount_details[index].id+"&rid="+$scope.Amount_details[index].id,'_blank');
  }
  
  
   $scope.deletefee = function(index){
     console.log($scope.Requi_details[index].id);
     var student_id=$scope.Requi_details[index].student_id;
     var receipt_no=$scope.Requi_details[index].receipt_no;
     
 swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this imaginary file!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
        
       swal("Loading...");
    
    var method="delete";
              var query="DELETE From `college_fee_instalment`  where  receipt_no='"+receipt_no+"' and student_id='"+student_id+"'; DELETE From `college_fee`  where receipt_no='"+receipt_no+"' and student_id='"+student_id+"'; UPDATE `student_course_applied` SET `fee_status` = 'Not Paid' , receipt_no=''  WHERE `student_course_applied`.`student_id` = '"+student_id+"' and receipt_no='"+receipt_no+"'";
              
              console.log(query);
            //   
              // return;
              
              $http.post("php/API.php?query="+query+"&method="+method)
                    .then(function (result) {
             console.log(result.data);
            
             if(result.data.success==true){
            
                toastr.success("Removed Successfully!");
                swal("Removed successfully!");
                
        //   document.getElementById("payamount").value="";
        //   document.getElementById("remarkstext").value="";
                get_fee_data();
              //  alert(receipt_no);
                
                //   $('#defaultModal').modal('hide');
                
                // get_Requi_item_data();
                // get_Requi_data();
                
                }else{
                toastr.error("Error Inserting Data. Please Try After Some Time!");
                }
                
                swal.close();
                   
                }, function(result) {
                   
                    //some error
                    console.log(result);
                });
 
    } else {
    //  swal("Your imaginary file is safe!");
    }
  });  
     
 }
 
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
  
    // var credit_up_amount = "";
    $scope.change_amt_cn = function(){
        
        check_amt();
    }
    
    function check_amt(){
  
     
    tot_amt = parseFloat(($scope.tuition22+$scope.caution22+$scope.magazine22+$scope.university_fee22+$scope.sports22+$scope.library22+$scope.prospectus22+$scope.hostel22+$scope.others22+$scope.forwarding22) - ($scope.credit_note_amount_up));
    
    console.log(tot_amt);
        
        if(tot_amt < 0){
            
            $scope.payable_amt = parseFloat(tot_amt*(-1));
            console.log($scope.payable_amt);
        }else{
          $scope.payable_amt = parseFloat(tot_amt);
        }
    }

    $scope.check_box = function(){
   
    if($('input[name="credit_mode"]').is(':checked'))
    {
    //   credit_up_amount = $scope.credit_note_amount_up;
    //  alert($scope.credit_note_amount_up);
     document.getElementById("credit_note_amount_up").disabled = false; 
    // if(credit_up_amount > credit_tot_amount){
    //   swal("Invalid Credit Amount!");
    //   return;
    // }
    check_amt();
    
    }else
    {
      document.getElementById('credit_note_amount_up').disabled = true;
      
      credit_up_amount = 0;
      
      $scope.payable_amt = parseFloat($scope.tuition22+$scope.caution22+$scope.magazine22+$scope.university_fee22+$scope.sports22+$scope.library22+$scope.prospectus22+$scope.hostel22+$scope.others22+$scope.forwarding22);
    }
    }
    
    $scope.ser_st_ph = function(){
        
        if($scope.ser_ph_no == "" || $scope.ser_ph_no == null || $scope.ser_ph_no == null){
            swal("Please Enter A Search Value");
            return;
        }
        
        // console.log(query);
        
        $http.post("php/ser_credit_note.php?ser_ph_no="+$scope.ser_ph_no)
          .then(function (result) {
              
          console.log(result.data);
                
         if(result.data.success==true){
            $scope.credit_note_data = result.data.tbldata;    
            credit_note_arr_data = result.data.tbldata;
          //  console.log(credit_note_data);

         }
        
          }, function(result) {
                       
            //some error
            console.log(result);
        });
    }
    
    $scope.change_note_amount = function(){
        
        var new_data = $filter('filter')(credit_note_arr_data,{'id': $scope.searched_cn});
        
        console.log(new_data[0].registeramount);
        
        $scope.credit_note_amount_up = parseFloat(new_data[0].registeramount);
        
        check_amt();
    }
    
    $scope.fill_pay_amt = function(){
        
        $scope.payable_amt = parseFloat($scope.tuition22+$scope.caution22+$scope.magazine22+$scope.university_fee22+$scope.sports22+$scope.library22+$scope.prospectus22+$scope.hostel22+$scope.others22+$scope.forwarding22);
    }
    
    
     $scope.onsearch = function () {
  // alert($scope.search);
    //console.log($scope.search);
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
  
  
  $scope.view_profile =  function (index) {
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
  
  $scope.tcsubmit = function(){
      
       if($scope.tc_student_name == "" || $scope.tc_student_name == null || $scope.student_name == null){
            swal("Please check Student Name!");
            return;
        }
        
        if($scope.tc_student_class == "" || $scope.tc_student_class == null || $scope.student_name == null){
            swal("Please check Student Class!");
            return;
        }
        
         if($scope.tc_date == "" || $scope.tc_date == null || $scope.tc_date == null){
            swal("Please enter a TC Date!");
            return;
        }
        
         if($scope.tc_student_class == "" || $scope.tc_student_class == null || $scope.student_name == null){
            swal("Please check Student Class!");
            return;
        }
        
         if($scope.tc_form_fee == "" || $scope.tc_form_fee == null || $scope.tc_form_fee == null){
            swal("Please Enter A TC Form Fee!");
            return;
        }
        
        var up_cat_mon = "";
        
        if($scope.caution_money == "" || $scope.caution_money == null || $scope.caution_money == null){
            up_cat_mon = "";
        }else{
            up_cat_mon = $scope.caution_money;
        }
        
        var up_cat_date="";
        
        if($scope.caution_date == "" || $scope.caution_date == null || $scope.caution_date == null){
            up_cat_date = "";
        }else{
           up_cat_date = $scope.caution_date;
        }
        
        var up_acc_duess = "";
        
        if($scope.acc_due == "" || $scope.acc_due == null || $scope.acc_due == null){
            up_acc_duess = "";
        }else{
           up_acc_duess = $scope.acc_due;
        }
        
      swal("Loading...");
    
      var method="insert";
      var query = "INSERT INTO `student_tc`( `emp_id`, `date`, `time`, `tc_form_fees`, `tc_date`, `caution_money`, `caution_money_date`, `account_dues`, `library_dues`, `status`) VALUES ( '"+Mailemp_ID+"',now(), now(), '"+$scope.tc_form_fee+"', '"+$scope.tc_date+"', '"+up_cat_mon+"', '"+up_cat_date+"', '"+up_acc_duess+"', '0','0') ";
      
      $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
              
              console.log(result.data);
              
             if(result.data.success == true){
            
                 swal("Successfully Added!");
                 
             }
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
          
  }
  
   $scope.get_datasss = function(){
     
     get_tc_data();
 }
  
  
  function get_tc_data(){
      
      var method="select";
      var query = "select * from student_tc where emp_id = '"+Mailemp_ID+"' ";
      
      console.log(query);
      
      $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
              
              console.log(result.data);
              
             if(result.data.success == true){
            
              $scope.TC_details = result.data.tbldata;
                 
             }else{
                 $scope.TC_details = "";
             }
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
          
  }

  $scope.get_data_tc = function(index){
        
        var date85= $scope.TC_details[index].tc_date;
       
        var datearray85 = date85.split("-");
          
        var newdate85= datearray85[2] + '-' + datearray85[1] + '-' + datearray85[0];
        
        $scope.tc_date20 = newdate85;
        
        console.log(newdate85);
        
        $scope.tc_form_fee20 = $scope.TC_details[index].tc_form_fees;
        
        $scope.caution_money20 = $scope.TC_details[index].caution_money;
        
        var datearray01 = $scope.TC_details[index].caution_money_date;
        
        var date01 = datearray01.split("-");
        
        var newdat01= date01[2] + '-' + date01[1] + '-' + date01[0];
        
        $scope.caution_date20 = newdat01;
        
        console.log(newdat01);
        
        $scope.acc_due20 = $scope.TC_details[index].account_dues;

}

 var up_tc_date = "";

$scope.tcupdate = function(index){
    
        if($scope.tc_date20 == "" || $scope.tc_date20 == null || $scope.tc_date20 == null){
            swal("Please enter a TC Date!");
            return;
        }
        
        console.log($scope.tc_date20);
        var date04 = $scope.tc_date20;    
            
        var datearray04 = date04.split("-");
    
        var newdate04 = datearray04[0] + '-' + datearray04[1] + '-' + datearray04[2];
        
        console.log(newdate04);
            
        up_tc_date = newdate04;
        
        console.log(up_tc_date);
        
         if($scope.tc_form_fee20 == "" || $scope.tc_form_fee20 == null || $scope.tc_form_fee20 == null){
            swal("Please Enter A TC Form Fee!");
            return;
        }
        
        var up_cat_mon20 = "";
        
        if($scope.caution_money20 == "" || $scope.caution_money20 == null || $scope.caution_money20 == null){
            up_cat_mon20 = "";
        }else{
            up_cat_mon20 = $scope.caution_money20;
        }
        
        var up_cat_date20="";
        
        if($scope.caution_date20 == "" || $scope.caution_date20 == null || $scope.caution_date20 == null){
            up_cat_date20 = "";
        }else{
            
        var date03 = $scope.caution_date20;    
            
        var datearray03 = date03.split("-");
    
        var newdate03= datearray03[0] + '-' + datearray03[1] + '-' + datearray03[2];
            
           up_cat_date20 = newdate03;
        }
        
        var up_acc_duess20 = "";
        
        if($scope.acc_due20 == "" || $scope.acc_due20 == null || $scope.acc_due20 == null){
            up_acc_duess20 = "";
        }else{
           up_acc_duess20 = $scope.acc_due20;
        }
        
      swal("Loading...");
    
    var method = "update";
    var query = "update student_tc set tc_form_fees = '"+$scope.tc_form_fee20+"', tc_date = '"+up_tc_date+"', caution_money = '"+up_cat_mon20+"', caution_money_date = '"+up_cat_date20+"', account_dues = '"+up_acc_duess20+"' where emp_id = '"+Mailemp_ID+"' ";
    
    console.log(query);
    // return;
    
     $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
              
              console.log(result.data);
              
             if(result.data.success == true){
            
              swal("Successfully Updated!");
              $('#defaultModalTC1Edit').hide();
              
              get_tc_data();
                 
             }else{
              swal("Error!");
             }
          }, function(result) {
               $scope.loading = false;
              //some error
              console.log(result);
          });
}

  
});



app.directive('modal', function () {
    return {
      template: '<div class="modal fade">' + 
          '<div class="modal-dialog">' + 
            '<div class="modal-content">' + 
              '<div class="modal-header">' + 
              '<h4 class="modal-title">{{ buttonClicked }} Invalid credentials!</h4>' + 
                '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' + 
              
              '</div>' + 
              
              '<div class="body">' + 
              '<h5 class="modal-body">Please try again.</h5>' + 
              '</div>' + 
              '<div class="modal-body" ng-transclude></div>' + 
            '</div>' + 
          '</div>' + 
        '</div>',
      restrict: 'E',
      transclude: true,
      replace:true,
      scope:true,
      link: function postLink(scope, element, attrs) {
        scope.title = attrs.title;

        scope.$watch(attrs.visible, function(value){
          if(value == true)
            $(element).modal('show');
          else
            $(element).modal('hide');
        });

        $(element).on('shown.bs.modal', function(){
          scope.$apply(function(){
            scope.$parent[attrs.visible] = true;
          });
        });

        $(element).on('hidden.bs.modal', function(){
          scope.$apply(function(){
            scope.$parent[attrs.visible] = false;
          });
        });
      }
    };


  });