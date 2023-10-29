var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http, $location) {

  $scope.Lstatus = '';
  $scope.loading = false;

  var user_full_name ="";
  var EMP_id ="";
  var email ="";
  var phone ="";
  var college="";
  var id="";
  var receipt_no_last=0;
  var remarks_status="";

  var OBJ_Subject="";
  var OBJ_course="";
  var OBJ_course_type = "";


  var subject_data;
  var course_type_data;
  var course_data;

  var college_data="";
  var college_data_name="";
  var OBJ_college_data="";
  
  var page_no=1;

  call_college();
  
  call_subject_all();
  
  call_student_course_type_all();
  
  call_student_course_all();
  
  get_all_data();
  
//   get_department();

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
  
  
// function get_department(){
//     var method="select";
//     var query="SELECT * FROM student_course_applied group by course_type_id" ;
//     $http.post("php/API.php?query="+query+"&method="+method)
//     .then(function (result) {
     
//     //   console.log(result.data);
//       $scope.department=result.data.tbldata;
       
//     }, function(result) {
       
//         //some error
//         console.log(result);
//     });

//   }

$scope.Requisition_data = function(index){
    id= $scope.Requi_details[index].id;
    $scope.departments1= $scope.Requi_details[index].department;
    $scope.tution_fee1= parseInt($scope.Requi_details[index].tution_fee);
    $scope.caution_fee1=parseInt($scope.Requi_details[index].caution_fee);
    $scope.magazine_fee1=parseInt($scope.Requi_details[index].magazine_fee);
    $scope.university_fee1=parseInt($scope.Requi_details[index].university_fee);
    $scope.sport_fee1=parseInt($scope.Requi_details[index].sports_fee);
    $scope.library_fee1=parseInt($scope.Requi_details[index].library_fee);
    $scope.prospectus1=parseInt($scope.Requi_details[index].prospectus);
    $scope.hostel_fee1=parseInt($scope.Requi_details[index].hostel_fee);
    $scope.other1=parseInt($scope.Requi_details[index].others);
    $scope.forwarding_charge_fee1=parseInt($scope.Requi_details[index].forwarding_fee);
    
    $scope.college_name1 = $scope.Requi_details[index].college_id;
    $scope.subject_name1 = $scope.Requi_details[index].course_type;
    $scope.course_type_name1 = $scope.Requi_details[index].course;
    $scope.course_name1 = $scope.Requi_details[index].subjects;
    $scope.current_class1 = $scope.Requi_details[index].sem_year;
    
    
  }

$scope.Update = function(){
  
      if($scope.tution_fee1 == null || $scope.tution_fee1 == undefined || $scope.tution_fee1 == ""|| $scope.tution_fee1 == "undefined"){
        swal("Please Enert Tution Feee!");
        return;
      }

    //   if($scope.caution_fee1 == null || $scope.caution_fee1 == undefined || $scope.caution_fee1 == ""|| $scope.caution_fee1 == "undefined"){
    //     swal("Please Enter Caution Feee!");
    //     return;
    //   }

    //   if($scope.magazine_fee1 == null || $scope.magazine_fee1 == undefined || $scope.magazine_fee1 == ""|| $scope.magazine_fee1 == "undefined"){
    //     swal("Please Enter Magazine Feee!");
    //     return;
    //   }

      
    //   if($scope.university_fee1 == null || $scope.university_fee1 == undefined || $scope.university_fee1 == ""|| $scope.university_fee1 == "undefined"){
    //     swal("Please Enter University Feee!");
    //     return;
    //   } 
     
        
    //   if($scope.sport_fee1 == null || $scope.sport_fee1 == undefined || $scope.sport_fee1 == "" || $scope.sport_fee1 == "undefined"){
    //     swal("Please Enter Sport Feee!");
    //     return;
    //   }

    //   if($scope.library_fee1 == null || $scope.library_fee1 == undefined || $scope.library_fee1 == "" || $scope.library_fee1 == "undefined"){
    //     swal("Please Enter Library Feee!");
    //     return;
    //   }

    //   if($scope.prospectus1 == null || $scope.prospectus1 == undefined || $scope.prospectus1 == "" || $scope.prospectus1 == "undefined"){
    //     swal("Please Enter prospectus Feee!");
    //     return;
    //   }
    //   if($scope.hostel_fee1 == null || $scope.hostel_fee1 == undefined || $scope.hostel_fee1 == ""|| $scope.hostel_fee1 == "undefined" ){
    //     swal("Please Enter Hostel Feee!");
    //     return;
    //   }
    //   if($scope.other1 == null || $scope.other1 == undefined || $scope.other1 == ""|| $scope.other1 == "undefined"){
    //     swal("Please Enter Other Feee!");
    //     return;
    //   }
    //   if($scope.forwarding_charge_fee1 == null || $scope.forwarding_charge_fee1 == undefined || $scope.forwarding_charge_fee1 == ""){
    //     swal("Please Enter Forwarding Feee!");
    //     return;
    //   }
        var method="update ";
        var query="UPDATE `fee_structure` SET `tution_fee`='"+$scope.tution_fee1 +"',`caution_fee`='"+$scope.caution_fee1+"' ,`magazine_fee`='"+$scope.magazine_fee1 +"',`university_fee`='"+$scope.university_fee1 +"',`sports_fee`='"+$scope.sport_fee1+"',`library_fee`='"+$scope.library_fee1 +"',`prospectus`='"+$scope.prospectus1 +"',`hostel_fee`='"+$scope.hostel_fee1 +"',`others`='"+$scope.other1 +"',`forwarding_fee`='"+$scope.forwarding_charge_fee1+"', `updated_by` = '"+EMP_id+"' WHERE id='"+id+"'";
        
        console.log(query);
        // return;
   
        $http.post("php/API.php?query="+query+"&method="+method)
            .then(function (result) {
             
              console.log(result.data);
              if(result.data.success==true){
                toastr.success("Successfully Added!");
                get_all_data();
              }else{
                toastr.error("Error!", "Category", {
                      "timeOut": "0",
                      "extendedTImeout": "0"
                    });
              }
            //   get_item_data();
               
            }, function(result) {
               
                //some error
                console.log(result);
            });

  }
 
 page_no = 1;
 
function get_all_data(){
    
        var query="SELECT fee_structure.*, (`tution_fee`%2B `caution_fee`%2B `magazine_fee`%2B `university_fee`%2B `sports_fee`%2B `library_fee`%2B `prospectus`%2B `hostel_fee`%2B `others`%2B `forwarding_fee`)as tot, (select college_name from college where college.college_id = fee_structure.college_id) as college_name,(select subject_name from student_subjects where student_subjects.subject_id = fee_structure.course_type) as subject_name, (select course_type_name from student_course_type where student_course_type.course_type_id = fee_structure.course) as course_type_name, (select course_name from student_course where student_course.course_id = fee_structure.subjects) as course_name FROM `fee_structure` order by id DESC" ;
        
        var Total_record_query="SELECT COUNT(*) As total_records FROM `fee_structure` ";
        
        var records_per_page="10";
        
        console.log(query);
        
        $http.post("php/all_pagination.php?query="+query+"&records_per_page="+records_per_page+"&page_no="+page_no+"&Total_record_query="+Total_record_query)
        
        .then(function (result) {
         
          console.log(result.data);
         $scope.Requi_details=result.data.tbldata;
         $scope.total_no_of_pages_ = result.data.total_no_of_pages;
         $scope.page_no_= result.data.page_no;
         $scope.opts=result.data.DUEP;
         $scope.tot_records = result.data.total_records;

           
        }, function(result) {
           
            //some error
            console.log(result);
        });
    
      }

$scope.Submit  = function(){


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
  
      if($scope.tution_fee == null || $scope.tution_fee == undefined || $scope.tution_fee == ""){
        swal("Please Enter Tution Fees!");
        return;
      }

      if($scope.caution_fee == null || $scope.caution_fee == undefined || $scope.caution_fee == ""){
        // swal("Please Enter Caution Fees!");
        // return;
        $scope.caution_fee = "0";
      }

      if($scope.magazine_fee == null || $scope.magazine_fee == undefined || $scope.magazine_fee == ""){
        // swal("Please Enter Magazine Fees!");
        // return;
        $scope.magazine_fee = "0";
      }

      
      if($scope.university_fee == null || $scope.magazine_fee == undefined || $scope.university_fee == ""){
        // swal("Please Enter University Fees!");
        // return;
        $scope.university_fee = "0";
      } 
     
        
      if($scope.sport_fee == null || $scope.magazine_fee == undefined || $scope.university_fee == ""){
        // swal("Please Enter Sports Fee!");
        // return;
        $scope.sport_fee = "0";
      }

      if($scope.library_fee == null || $scope.magazine_fee == undefined || $scope.university_fee == ""){
        // swal("Please Enter Library Fee!");
        // return;
        $scope.library_fee = "0";
      }

      if($scope.prospectus == null || $scope.prospectus == undefined || $scope.prospectus == ""){
        // swal("Please Enter Prospectus Fee!");
        // return;
        $scope.prospectus = "0";
      }
      if($scope.hostel_fee == null || $scope.hostel_fee == undefined || $scope.hostel_fee == ""){
        // swal("Please Enter Hostel Fee!");
        // return;
        $scope.hostel_fee = "0";
      }
      if($scope.other == null || $scope.other == undefined || $scope.other == ""){
        //swal("Please Enter Other Fee");
        $scope.other = "0";
      }
      if($scope.forwarding_charge_fee == null || $scope.forwarding_charge_fee == undefined || $scope.forwarding_charge_fee == ""){
        // swal("Please Enter Forwarding Fee; If Any. Otherwise Enter 0!");
        $scope.forwarding_charge_fee = "0";
      }
        var method="insert";
        var query="INSERT INTO `fee_structure`(`college_id`, `course_type`, `course`, `subjects`, `sem_year`, `create_date`, `create_time`, `create_by`, `tution_fee`, `caution_fee`, `magazine_fee`, `university_fee`, `sports_fee`, `library_fee`, `prospectus`, `hostel_fee`, `others`, `forwarding_fee`) VALUES ( '"+$scope.college_name+"', '"+$scope.subject_name+"', '"+$scope.course_type_name+"', '"+$scope.course_name+"', '"+$scope.current_class+"',  now(), now(), '"+EMP_id+"', '"+$scope.tution_fee+"', '"+$scope.caution_fee+"','"+$scope.magazine_fee+"','"+$scope.university_fee+"','"+$scope.sport_fee+"','"+$scope.library_fee+"','"+$scope.prospectus+"','"+$scope.hostel_fee+"','"+$scope.other+"','"+$scope.forwarding_charge_fee+"' )";
        
        
           console.log(query);
   
//   return;

        $http.post("php/API.php?query="+query+"&method="+method)
            .then(function (result) {
             
            //   console.log(result.data);
              if(result.data.success==true){
                toastr.success("Successfully Added!");
                
              $scope.college_name ="";
              $scope.subject_name ="";
              $scope.course_type_name ="";
              $scope.course_name ="";
              $scope.current_class ="";
              $scope.tution_fee ="";
              $scope.caution_fee ="";
              $scope.magazine_fee ="";
              $scope.university_fee ="";
              $scope.sport_fee ="";
              $scope.library_fee ="";
              $scope.prospectus = "";
              $scope.hostel_fee = "";
              $scope.other = "";
              $scope.forwarding_charge_fee = "";
      
                $('#defaultModal').modal('hide');
                get_all_data();
              }else{
                toastr.error("Error!", "Category", {
                      "timeOut": "0",
                      "extendedTImeout": "0"
                    });
              }
            //   get_item_data();
               
            }, function(result) {
               
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


    // get_all_data();
   // console.log(result.data.firstname);
    // window.location.href = "login.html";           
       }else{
         window.location.href = "login.html";
       }
}, function(result) {
    //some error
    console.log(result);
});

$scope.fee_DeteAll = function(index){
    
  swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this Fee Structure!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
      swal("Loading...");
    
    var method="delete";
        var query="delete from fee_structure where id='"+$scope.Requi_details[index].id+"'" ;
        
        console.log(query);
        // return;
        $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) {
         
          console.log(result.data);
         if(result.data.success == true){
             
             toastr.success("Successfully Deleted!");
             swal("Deleted successfully!");
             
             get_all_data();

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
      
    $scope.callList= function(index){
 
     console.log(index);
     if(index>0){
         page_no=index;
       get_all_data();
     }else{}
 
 
     
   }

});


