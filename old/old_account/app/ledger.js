var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http, $location) {

  $scope.Lstatus = '';
  $scope.loading = false;

//  Tuition,Caution,Magazine,Sports,Library,Prospectus,Others,Forwarding,Total

//alert("OK........");

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

$scope.Req_item = function() {
 // alert("test..");
  get_reci_data();
}

get_reci_data();

function get_reci_data(){ 

  $scope.receipt_no = "";

  $http.post("php/get_reci_fee_id.php")
      .then(function (result) {
      
if(result.data['0'].status != "0") {  
  console.log(result.data);
          $scope.receipt_no = parseFloat(result.data['0'].gen_emp_id);
        //  receipt_no_last= parseFloat(result.data['0'].gen_emp_id);
        //  console.log(result.data);
        
      //  alert(result.data['0'].gen_emp_id);
      //  console.log(result.data['0'].gen_emp_id);
}
        
}, function(result) {
  //some error
  console.log(result);
});

};

//$scope.Tota = $scope.Tuition+$scope.Caution+$scope.Magazine+$scope.Sports+$scope.Library+$scope.Prospectus+$scope.Others+$scope.Forwarding;

get_Student_info();

function get_Student_info(){  

  //console.log($location.absUrl().split('?')[1]);

  $http.post('php/get_Student_info.php?'+$location.absUrl().split('?')[1])
  .then(function (result) {
    
//    console.log(result);
 //   REQUEST(result.data);
   
if(result.data['0'].emp_id !=undefined){

Mailemp_ID =result.data['0'].emp_id;
emp_name = result.data['0'].firstname+" "+result.data['0'].middlename+" "+result.data['0'].lastname;
$scope.student_details= emp_name;
//REQUEST(result.data['0'].sem_year+" "+result.data['0'].batch_session);
$scope.student_class=result.data['0'].sem_year;
$scope.sem_year=result.data['0'].batch_session;
$scope.student_name= emp_name;
college_id = result.data['0'].college_id;
$scope.course_name= result.data['0'].course_type_name;
$scope.fee_date = new Date();

sem_year= result.data['0'].sem_year;
sem_year_type= result.data['0'].batch_session;

$scope.cheque_date = new Date();


page_no=1;
SomeFunction(page_no);
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


  }else{
    
    swal("Student details not found!");
  }
  

}, function(result) {
  //some error
  REQUEST(result);
});

};





get_student_data();

function get_student_data(){ 

  $scope.loading = true;

  $scope.ledger_details = [];

  $http.post("php/get_student_data.php?"+$location.absUrl().split('?')[1])
      .then(function (result) {
        
if(result.data['0'].status != "0") {
          $scope.ledger_details = result.data;


        //  REQUEST(result.data);
}
          $scope.loading = false;
      }, function(result) {
           $scope.loading = false;
          //some error
          REQUEST(result);
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
  
   // alert(totu.toFixed(3));
  
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

//alert(changedValu);

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
       +"&cheque="+ num_cheque
       +"&cheque_date="+ convert(cheque_dateu)
       +"&drawn_on="+ drawn_onu
       +"&total="+ totu
       +"&college_id="+ college_id
       +"&sem_year="+ student_classu
       +"&sem_year_type="+ sem_yearu
       +"&emp_id="+ EMP_id
       +"&university_fee="+ university_feeu
       +"&fee_date="+  convert(fee_date)
     +"&fee_status="+  rate_value
  
       
  
       
  
       
       )
       .then(function (result) {
           
  ///console.log(result.data);
  if(result.data['0'].status == "1") {
    SomeFunction(1);
    get_student_data();
  swal("Success!", result.data['0'].message, "success");
  }else if(result.data['0'].status == "0") {
  swal(result.data['0'].message);
   }
  
   $('#defaultModalUpdate').modal('hide');
   $('#defaultModal').modal('hide');
           
       }, function(result) {
           //some error
           console.log(result);
       });
       
   };
  


   

$(document).on('click', '.preview_delete', function(){  
  //alert($(this).data("id0"));
//  alert($(this).data("id3"));
//  alert($(this).data("id4"));
  //alert("tex");
 var student_id= $(this).data("id2");
 var sem_year  =  $(this).data("id4");
 var batch_session = $(this).data("id3");
  

  swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover thisj;lklkj imaginary file!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
      swal("Loading...");

  var query_delete="delete from college_fee where id ="+$(this).data("id0")+" and receipt_no = '"+$(this).data("id1")+"'  ";
   
  $http.post("php/DeleteItem.php?query="+ query_delete)
  .then(function (result) {
      
///console.log(result.data);
if(result.data['0'].status == "1") {

  
  
  
  SomeFunction(1);
swal("Success!", result.data['0'].message, "success");
  toastr.success("Deleted Successfully!");
  
get_student_data();




  $http.post("php/Course_Update.php?student_id="+student_id+"&sem_year="+sem_year+"&batch_session="+batch_session)
  .then(function (result) {
      
      console.log(result.data);
      
  }, function(result) {
      //some error
      console.log(result);
  }); 
  
  

}else if(result.data['0'].status == "0") {
swal(result.data['0'].message);
 toastr.error("Error!");
}

swal.close();

$('#defaultModalUpdate').modal('hide');
$('#defaultModal').modal('hide');
      
  }, function(result) {
      //some error
      console.log(result);
  });

} else {
  //  swal("Your imaginary file is safe!");
  }
});

  
});




$scope.FeeSubmit = function() {
    
   //alert($scope.changedVal);
  
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
  var tot = $scope.Tuition+$scope.Caution+$scope.Magazine+$scope.Sports+$scope.Library+$scope.Prospectus+$scope.Others+$scope.Forwarding+$scope.university_fee;


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
  
    if($scope.changedVal == null || $scope.changedVal == undefined || $scope.changedVal == ""){
     swal("Please select Full/Half Payment");
    return;
  }

  
  var fee_date= convert($scope.fee_date);
  swal("Loading.....");
 
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
     +"&fee_status="+  $scope.changedVal

    
     )
     .then(function (result) {
         
//console.log(result.data);
if(result.data['0'].status == "1") {
  SomeFunction(1);
  get_student_data();
swal("Success!", result.data['0'].message, "success");
get_reci_data();
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

    toastr.success("Submited Successfully!");

}else if(result.data['0'].status == "0") {
swal(result.data['0'].message);

  toastr.error("try after some time!");
 }else if(result.data['0'].status == "2") {
swal(result.data['0'].message);

  toastr.error("try after some time!");
 }

swal.close();

 $('#defaultModal').modal('hide');
         
     }, function(result) {
         
  toastr.error("Error!");
         //some error
         console.log(result);
     });
     
 };




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
    
  console.log(result.data);  
  console.log(result.data.ctype);
  
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





  
  
  function SomeFunction(page_no){
      $('#live_p_data').html("Loading..."); 

     
  if(Mailemp_ID == null || Mailemp_ID == undefined || Mailemp_ID == ""){
    swal("Student id not load please try again!");
    return;
  }

    // swal("Loading...", {
   //   buttons: false,
  //    timer: 500,
  //  });
               $.ajax({  
                       url:"php/Ledger_list_ajex.php", 
                       method:"POST",  
                       data:{page_no:page_no,Mailemp_ID:Mailemp_ID},  
                       dataType:"text",  
                       success:function(data){  
                            //alert(data);  
                            //fetch_data();  
                            
  $('#live_p_data').html(data);   

                       }  
                  }); 
  }
  
  
    
        $(document).on('click', '.cbtn_view', function(){  
              page_no=$(this).data("id3");
             // alert(page_no);
            SomeFunction(page_no);
        //   window.location.href = "Gallery.php?page_no="+page_no;   
  //           $('html, body').animate({scrollTop:$('#topupdates').position().top}, 'smooth');
  //$('#topupdates').focus();
                   });
        


        $scope.SaveAmount = function (){
            
            // var student_id= $(this).data("id2");
            var payamount = document.getElementById("payamount").value;
            var remark = document.getElementById("remarkstext").value;
            
            $scope.payamount
            
              var method="insert";
              var query="INSERT INTO `college_fee_instalment`(`student_id`, `amount`, `remarks`, `date`, `time`, `status`) VALUES ('"+Mailemp_ID+"', '"+payamount+"', '"+remark+"', now(), now(),'Paid' ) ";
              
              $http.post("php/API.php?query="+query+"&method="+method)
                    .then(function (result) {
             console.log(result.data);
            
             if(result.data.success==true){
            
                toastr.success("Inserted Successfully!");
                swal("Inserted successfully!");
                
                getpaidamount();
                
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
  }

        
        function getpaidamount(){
            
            // var student_id= $(this).data("id2");
            // var payamount = document.getElementById("payamount").value;
            // var remark = document.getElementById("remarkstext").value;
            
              var method="select";
              var query="SELECT * FROM `college_fee_instalment` WHERE student_id='"+Mailemp_ID+"' ";
              
              $http.post("php/API.php?query="+query+"&method="+method)
                    .then(function (result) {
             console.log(result.data);
            
             if(result.data.success==true){
            
               $scope.Amount_details = result.data.tbldata;
                // get_Requi_data();
                
                }else{
                toastr.error("Error Inserting Data. Please Try After Some Time!");
                }
                
                swal.close();
                   
                }, function(result) {
                   
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