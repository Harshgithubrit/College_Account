var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http, $location,$filter) {

 
  var fdate=today_date();
  var tdate=today_date();
  // var fdate="";
  // var tdate="";
  
  $scope.onsearch=function(){
    get_complete_data();
  
  }
  $scope.onsearchF = function(){
  
   
    
    get_complete_data();
  }
  
  $scope.onsearchT = function(){
   
    get_complete_data();
  }
  
  function convert(str) {
    var date = new Date(str),
      mnth = ("0" + (date.getMonth() + 1)).slice(-2),
      day = ("0" + date.getDate()).slice(-2);
    return [date.getFullYear(), mnth, day].join("-");
  }
  
  
  function today_date(){
    var today = new Date();
  var dd = String(today.getDate()).padStart(2, '0');
  var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
  var yyyy = today.getFullYear();
  
  today = yyyy+ '-' + mm  + '-' +dd;
  return today;
  }


    var page_no = 1;

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
      
      
      
        //   get_Requi_data();
         // console.log(result.data.firstname);
          // window.location.href = "login.html";           
             }else{
               window.location.href = "login.html";
             }
      }, function(result) {
          //some error
          console.log(result);
      });
 
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

    $scope.find_out=function(){
        // mj_staff_type_all()
        get_mj_staff();
     }


  $scope.get_staff=function(){
    get_mj_staff();
  }

  function get_mj_staff(){
    $scope.staff_data="";
    $scope.page_no_new="";
    $scope.tot_records_new="";
    $scope.opts_new="";



    var clg_name = "";
    var staffTYPE="";
  
    if($scope.college_name == null || $scope.college_name == undefined || $scope.college_name == ""){
      clg_name="";
    }
    else{
        clg_name=$scope.college_name;
    }

    if($scope.staff_type == null || $scope.staff_type == undefined || $scope.staff_type == ""){
      staffTYPE="";
      }
    else{
        staffTYPE=$scope.staff_type;  
    }
  
    var ser = "";

    if($scope.search_live == "" || $scope.search_live == "null" || $scope.search_live == undefined){
      ser = "";
    }else{

    ser = $scope.search_live;

    }

   
    // var query =  "select * from employee where fullname LIKE'%"+ser+"%'  ";

    // var Total_record_query="SELECT COUNT(*) As total_records FROM `employee` where fullname LIKE'%"+ser+"%'  ";
    var records_per_page="10";

    $http.post("php/get_staff_detail.php?records_per_page="+records_per_page+"&page_no="+page_no+"&ser="+ser+"&clg_name="+clg_name+"&staffTYPE="+staffTYPE)
    .then(function (response) {
     console.log(response.data);
      if(response.data.datastatus != "0") {
              
        $scope.total_no_of_pages_new = response.data.total_no_of_pages;
        $scope.staff_data = response.data.tbldata;
        $scope.page_no_new= response.data.page_no;
        $scope.tot_records_new = response.data.total_records;
        $scope.opts_new=response.data.DUEP;    
      }
      else{
        $scope.disp_details = "";
      }

    //swal.close();


    // $("#progress").hide()
          
        }, function(result) {
          
            //some error
            console.log(result);
        });
    


  }

  $scope.submit = function() {
    get_mj_staff();
  }

  $scope.callList=function(index){
    if(index>0){
      page_no=index;
      get_complete_data();
  }else{}
  }



  $scope.callList_disp_new= function(index){
    if(index>0){
        page_no=index;
        get_mj_staff();
    }else{}
}


var usr_full;
var s_type;
var prsent_year;
var present_month;

$scope.view_salary=function(index){
// prsent_year=$filter('date')(new Date(), 'yyyy');
// present_month=$filter('date')(new Date(), 'mm');

present_month=$filter('date')(new Date(), 'MMM')

// present_month=new Date().getMonth();

prsent_year=new Date().getFullYear();

$scope.empid=$scope.staff_data[index].employee_id
$scope.emp_designation=$scope.staff_data[index].designation;
s_type=$scope.staff_data[index].staff_type;
usr_full=$scope.staff_data[index].employee_name;

$scope.emp_name=usr_full;
$scope.emp_monthly_salary=$scope.staff_data[index].monthly_salary;
$scope.emp_pf=$scope.staff_data[index].PF;
$scope.emp_esi=$scope.staff_data[index].ESI;


}




$scope.submit_salary=function(){
 
    var method="insert";
    var query="INSERT INTO `employee_salary`(`pay_slip_id`,`employee_id`, `employee_name`, `designation`, `pay_month`, `staff_type`, `monthly_salary`, `PF`, `ESI`, `other_deduction`, `working_days`, `absent_days`, `date`, `time`, `status`, `generated_year`, `generated_month`,`pay_mode`,`pay_status`,`net_income`) VALUES ((select CONCAT('PID-00',gen_emp_id%2B1) as p_id from `master_data` where id = 13),'"+$scope.empid+"','"+usr_full+"','"+$scope.emp_designation+"','"+$scope.pay_month+"','"+s_type+"','"+$scope.emp_monthly_salary+"','"+$scope.emp_pf+"','"+$scope.emp_esi+"','"+$scope.other_deduction_amt+"','"+$scope.emp_working_days+"','"+$scope.absent_days+"',now(),now(),'1','"+prsent_year+"','"+present_month+"','"+$scope.pay_mode+"','"+$scope.pay_sts+"','"+$scope.net_income+"');update `master_data` set gen_emp_id = gen_emp_id%2B1 where id =13   ";
    console.log(query);

    $scope.loading = true;
  
    $http.post("php/API_2.php?method="+method+"&query="+query)
      .then(function (result) {
          
     console.log(result);
     if(result.data.success == true) {
     
    //  swal("Inserted successfully!!");
    toastr.success('inserted successfully'); 
    $scope.absent_days="";
    $scope.emp_working_days="";
    get_complete_data();
     }
  
        }, function(result) {
          //some error
          toastr.error("Error try again!");
          // swal(result);
        
          console.log(result);
      });

      
      swal.close();
}

$scope.search_emp = function(){

  get_complete_data();
}


$scope.search_emp1 = function(){

  get_mj_staff();
}

// get_complete_data();


get_complete_data();

function get_complete_data(){
   fdate=today_date();
  tdate =today_date();


 console.log($scope.searchF);
  fdate= convert($scope.searchF);
   
  if(fdate=="" ||fdate==undefined || fdate== null || fdate=="NaN-aN-aN"){
  
    fdate = today_date();
    
  }

  
    
  tdate= convert($scope.searchT);
   
  if(tdate=="" || tdate==undefined || tdate== null || tdate=="NaN-aN-aN"){
    
    tdate = today_date();
  }

  
  
    var ser = "";    
    if($scope.search == "" || $scope.search == "null" || $scope.search == undefined){
      ser = "";
    }else{

    ser = $scope.search;

    }
    var records_per_page="10";

    $http.post("php/get_salary_data.php?records_per_page="+records_per_page+"&page_no="+page_no+"&ser="+ser+"&fdate="+fdate+"&tdate="+tdate)
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
        $scope.disp_details = "";
      }

    //swal.close();


    // $("#progress").hide()
          
        }, function(result) {
          
            //some error
            console.log(result);
        });
   
}


$scope.get_emp_pay=function(index){

  window.open("php/payslip_report _new.php?employee_id="+$scope.Requi_details[index].employee_id+"&pay_slip_id="+$scope.Requi_details[index].pay_slip_id,'_blank');

  // year_data=$scope.Requi_details[index].generated_year;
  
}


var pf_amt;
var esi_amt;
var other_amt;

$scope.calculate_net_income=function(index){
//  if($scope.other_deduction_amt==""|| $scope.other_deduction_amt==undefined|| $scope.other_deduction_amt==null ){
// swal("Please Enter  Deduction Amount ");
//  }
var present_days= parseFloat($scope.emp_working_days)- parseFloat($scope.absent_days);
  var per_day_salry_amt= parseFloat($scope.emp_monthly_salary/parseFloat($scope.emp_working_days));
  
 var  total_salry= parseFloat(per_day_salry_amt*present_days)
 console.log(total_salry);
 var net_income =total_salry-total_salry*(parseFloat($scope.emp_pf)+parseFloat($scope.emp_esi))/100 -$scope.other_deduction_amt;
   $scope.net_income= Math.round(net_income);
  // console.log($scope.net_income);
}


$scope.salary_report=function(){

  

  window.open("php/salary_report.php?fdate="+fdate+"&tdate="+tdate,'_blank');
}

$scope.chng_sts = function(id,sts)
{
  
 

 if(sts=='Unpaid'){

  var method ="update" ;
 var query = "update employee_salary set pay_status = 'Paid' where id='"+id+"'";

 swal({
  title: "Are you sure?",
  text: "You want to update!",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    swal("Loading...");
  
 
 $http.post("php/API.php?method="+method+"&query="+query)
 .then(function (result) {
     
console.log(result);
if(result.data.success == true) {

toastr.success('Updated successfully'); 
swal.close();
get_complete_data();

}

   }, function(result) {
     //some error
     toastr.error("Error try again!");
     // swal(result);
   
     console.log(result);
 });
}else {
  swal("Updation Aborted!");
 }
 });

}
}

$scope.getMonthDays = function(){
  
  var months = [
    'January', 'February', 'March', 'April', 'May',
    'June', 'July', 'August', 'September',
    'October', 'November', 'December'
    ];
  var month = months.indexOf($scope.pay_month);
  var monthNumber = month ? month + 1 : 1;
  var today = new Date();
  var year = today.getFullYear();
  var days = new Date(year, monthNumber, 0).getDate();
  $scope.emp_working_days = days;
  
  var present_days= parseFloat($scope.emp_working_days)- parseFloat($scope.absent_days);
  var per_day_salry_amt= parseFloat($scope.emp_monthly_salary/parseFloat($scope.emp_working_days));
  
 var  total_salry= parseFloat(per_day_salry_amt*present_days)
 console.log(total_salry);
 var net_income =total_salry-total_salry*(parseFloat($scope.emp_pf)+parseFloat($scope.emp_esi))/100 -$scope.other_deduction_amt;
   $scope.net_income= Math.round(net_income);

}
});