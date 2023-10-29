var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http) {


  var vendor_gen_emp_id="";
   var profile_type="";

var user_id_session="";
 // alert("Test....");

 checkInternet();

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


    get_item();
    
    
    function get_item(){  

    checkInternet();

    $scope.loading = true;

      var method="select";
      var query="select * from account_vendor order by id DESC LIMIT 50 ";
    
    
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
        
        
    
          
         
            $scope.categoryiu =$scope.itemdetails[index].vendor_category;
       
       $scope.changedValuu =$scope.itemdetails[index].provide;
      
    
       $scope.first_nameu =$scope.itemdetails[index].first_name;
      
     $scope.last_nameu =$scope.itemdetails[index].last_name;
      
   $scope.vendoru =$scope.itemdetails[index].company;
  
        
   $scope.addressu =$scope.itemdetails[index].address;
  
   $scope.emailu =$scope.itemdetails[index].vendor_email;
  
  
   $scope.websiteu =$scope.itemdetails[index].website;
  
  
  $scope.contactu =$scope.itemdetails[index].person_contact;
  
  
   $scope.vcontactu =$scope.itemdetails[index].vendor_contact;
          
      
          
        
       itemid  = $scope.itemdetails[index].id;
       
      // alert(itemid);
    }
    
     $scope.itemupdate =  function(){
         
        
        
             if($scope.categoryiu == null || $scope.categoryiu == undefined || $scope.categoryiu == ""){
     swal("Please Vendor Category");
    return;
  }
       
       if($scope.changedValuu == null || $scope.changedValuu == undefined || $scope.changedValuu == ""){
     swal("Please select Provide");
    return;
  }
  
      
    
       if($scope.first_nameu == null || $scope.first_nameu == undefined || $scope.first_nameu == ""){
              swal("Please enter Person First Name");
  return;
      }
      
      if($scope.last_nameu == null || $scope.last_nameu == undefined || $scope.last_nameu == ""){
              swal("Please enter Person Last Name");
  return;
      }
      
      
   if($scope.vendoru == null || $scope.vendoru == undefined || $scope.vendoru == ""){
     swal("Please enter vendor name");
    return;
  }
  
  
        
   if($scope.addressu == null || $scope.addressu == undefined || $scope.addressu == ""){
     swal("Please enter address");
    return;
  }
  
    if($scope.emailu == null || $scope.emailu == undefined || $scope.emailu == ""){
     swal("Please enter email");
    return;
  }
  
  
    if($scope.websiteu == null || $scope.websiteu == undefined || $scope.websiteu == ""){
     swal("Please enter website");
    return;
  }
  
  
   if($scope.contactu == null || $scope.contactu == undefined || $scope.contactu == ""){
     swal("Please enter mobile number");
    return;
  }
  
  
   if($scope.vcontactu == null || $scope.vcontactu == undefined || $scope.vcontactu == ""){
     swal("Please enter vendor contact");
    return;
  }
  
  
       $scope.loading = true;

      var method="update";
     
       var query=" UPDATE `account_vendor` SET         `first_name`='"+$scope.first_nameu+"',        `last_name`='"+$scope.last_nameu+"',        `company`='"+$scope.vendoru+"',        `vendor_email`='"+$scope.emailu+"',        `person_contact`='"+$scope.contactu+"',        `vendor_contact`='"+$scope.vcontactu+"',        `vendor_category`='"+$scope.categoryiu+"',        `provide`='"+$scope.changedValuu+"',        `website`='"+$scope.websiteu+"',        `address`='"+$scope.addressu+"',        `created_by`='"+user_id_session+"',        `date_time`=now() WHERE id = "+itemid+" ";
      
          
    
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
    
    var Query="select * from account_vendor where   first_name LIKE '"+ser+"%' or person_contact LIKE '"+ser+"%' or company LIKE '"+ser+"%'  order by id DESC LIMIT 50 ";
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

      

        
          if($scope.categoryi == null || $scope.categoryi == undefined || $scope.categoryi == ""){
     swal("Please Vendor Category");
    return;
  }
       
       if($scope.changedValu == null || $scope.changedValu == undefined || $scope.changedValu == ""){
     swal("Please select Provide");
    return;
  }
  
      
    
       if($scope.first_name == null || $scope.first_name == undefined || $scope.first_name == ""){
              swal("Please enter Person First Name");
  return;
      }
      
      if($scope.last_name == null || $scope.last_name == undefined || $scope.last_name == ""){
              swal("Please enter Person Last Name");
  return;
      }
      
      
   if($scope.vendor == null || $scope.vendor == undefined || $scope.vendor == ""){
     swal("Please enter vendor name");
    return;
  }
  
  
        
   if($scope.address == null || $scope.address == undefined || $scope.address == ""){
     swal("Please enter address");
    return;
  }
  
    if($scope.email == null || $scope.email == undefined || $scope.email == ""){
     swal("Please enter email");
    return;
  }
  
  
    if($scope.website == null || $scope.website == undefined || $scope.website == ""){
     swal("Please enter website");
    return;
  }
  
  
   if($scope.contact == null || $scope.contact == undefined || $scope.contact == ""){
     swal("Please enter mobile number");
    return;
  }
  
  
   if($scope.vcontact == null || $scope.vcontact == undefined || $scope.vcontact == ""){
     swal("Please enter vendor contact");
    return;
  }
  
  
      
        
      var method="insert";
      var query=" INSERT INTO `account_vendor`(`first_name`, `last_name`, `company`, `vendor_email`, `person_contact`, `vendor_contact`, `vendor_category`, `provide`, `website`, `address`, `created_by`, `date_time`, `vendor_id`) VALUES ('"+$scope.first_name+"',      '"+$scope.last_name+"',      '"+$scope.vendor+"',      '"+$scope.email+"',      '"+$scope.contact+"',      '"+$scope.vcontact+"',      '"+$scope.categoryi+"',      '"+$scope.changedValu+"',      '"+$scope.website+"',      '"+$scope.address+"',      '"+user_id_session+"', now(), '"+vendor_gen_emp_id+"' ) ";
        
       // console.log(query);
        
        $http.post("php/API.php?query="+query+"&method="+method)
        .then(function (result) {
          console.log(result);

             if(result.data.success==true){  get_item();
                    toastr.success("Inserted Successfully!");

var gen_incremented = parseInt(vendor_gen_emp_id)+1;

console.log(gen_incremented);

 var method="update";
  var query=" update `master_data` set gen_emp_id ='"+gen_incremented+"' where id=8 ";
 $http.post("php/API.php?query="+query+"&method="+method)
   .then(function (result) {

    load_VendorID();
    
       $scope.loading = false;
   }, function(result) {
        $scope.loading = false;
       //some error
       console.log(result);
   });

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




  
  $http.post('php/login_validation.php')
  .then(function (result) {
    console.log(result.data); 
   //  console.log(result.data.loggedIn);
   
       console.log(profile_type);
   
    if(result.data.loggedIn == "true") {
  
      profile_type =result.data.ctype;

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
  

  
  load_VendorID();
  
  function load_VendorID(){
  
  var method="select";
     
  var query=" SELECT * FROM `master_data` where id=8 ";

 $http.post("php/API.php?query="+query+"&method="+method)
   .then(function (result) {
      
    vendor_gen_emp_id = result.data.tbldata[0].gen_emp_id;
    console.log(result.data.tbldata[0].gen_emp_id);
       $scope.loading = false;
   }, function(result) {
        $scope.loading = false;
       //some error
       console.log(result);
   });

  }
  
  
  
  
  $scope.GOBACK = function(){
    
    console.log(profile_type);
    
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


    
  
});


