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

  var fdate="";
  
  var tdate="";
  
  var page_no=1;
  
//   get_Requi_data();
  
 // get_all_data();
 
 get_expenses_data();
  
  function get_expenses_data(){
      
     page_no=1;
      
     var records_per_page = 10;
      
     var Total_record_query="select count(*) as total_records from account_expenses";
     
     var query="select * from account_expenses order by id DESC";
   
     $http.post("php/all_pagination.php?query="+query+"&Total_record_query="+Total_record_query+"&records_per_page="+records_per_page+"&page_no="+page_no)
         .then(function (result) {
             
             console.log(result.data);
         
          if(result.data.datastatus != "0") {
  
            $scope.total_no_of_pages_ = result.data.total_no_of_pages;
            $scope.Requi_details = result.data.tbldata;
            $scope.page_no_= result.data.page_no;
            $scope.opts=result.data.DUEP;
          }
          else{
            $scope.Requi_details = "";
          }

         }, function(result) {
            
             //some error
             console.log(result);
         });
  }
  
  
  function convert(str) {
    var date = new Date(str),
      mnth = ("0" + (date.getMonth() + 1)).slice(-2),
      day = ("0" + date.getDate()).slice(-2);
    return [date.getFullYear(), mnth, day].join("-");
  }
  
  
  $scope.requisition_date = new Date();

  $scope.Req_Submit = function() {
  
    if($scope.receipt_no_fl == null || $scope.receipt_no_fl == undefined || $scope.receipt_no_fl == ""){
      swal("receipt no not loaded reload page and please try again!");
      return;
    }

    if($scope.to_vandor == null || $scope.to_vandor == undefined || $scope.to_vandor == ""){
      swal("Vendor is Empty!");
      return;
    }

    if($scope.requisition_date == null || $scope.requisition_date == undefined || $scope.requisition_date == ""){
      swal("Please select requisition date!");
      return;
    }

  
  
    if(user_full_name == null || user_full_name == undefined || user_full_name == "" ){
      swal("User Name not load please try again!");
      return;
    }

    console.log($scope.priority);
    console.log($scope.category);
    
    if( $scope.priority == null ||  $scope.priority == undefined ||  $scope.priority == "" ){
      swal("Please select priority!");
      return;
    }
    if( $scope.to_vandor == null ||  $scope.to_vandor == undefined ||  $scope.to_vandor == "" ){
      swal("Please Enter Vender!");
      return;
    }
if( $scope.category == null ||  $scope.category == undefined ||  $scope.category == "" ){
      swal("Please select category!");
      return;
    }

    if($scope.description == null || $scope.description == undefined || $scope.description == ""){
      swal("Please enter Purpose/Description!");
      return;
    }

    if($scope.item_name == null || $scope.item_name == undefined || $scope.item_name == ""){
      swal("Please enter item name!");
      return;
    }

    if($scope.item_description == null || $scope.item_description == undefined || $scope.item_description == ""){
      swal("Please enter item description!");
      return;
    }

    if($scope.quantity == null || $scope.quantity == undefined || $scope.quantity == ""){
      swal("Please enter item quantity!");
      return;
    }


    if($scope.price_amount == null || $scope.price_amount == undefined || $scope.price_amount == ""){
      swal("Please enter item price!");
      return;
    }

    var tot  = $scope.price_amount*$scope.quantity;



    if(tot == null || tot == undefined || tot == "" || tot == "0.0" || tot == 0 ){
      swal("Please enter quantity or price value!");
      return;
    }
  
    function convert(str) {
      var date = new Date(str),
        mnth = ("0" + (date.getMonth() + 1)).slice(-2),
        day = ("0" + date.getDate()).slice(-2);
      return [date.getFullYear(), mnth, day].join("-");
    }
    
   // var fee_date= convert($scope.requisition_date);
    swal("Loading.....");
   
       $http.post("php/expense.php?user_id="+ EMP_id 
       +"&user_full_name="+ user_full_name
       +"&category="+ $scope.category
       +"&receipt_no="+ $scope.receipt_no_fl
       +"&description="+ $scope.description
       +"&delivery_date="+ $scope.delivery_date
       +"&item_name="+ $scope.item_name
       +"&item_description="+ $scope.item_description
       +"&quantity="+ $scope.quantity
       +"&price_amount="+ $scope.price_amount
       +"&tot="+ tot
       +"&email="+ email
       +"&phone="+ phone
       +"&priority="+ $scope.priority
       +"&department="+ college
       +"&vendor_gen_id="+ vendor_gen_id
       +"&vendor_gen_name="+ vendor_gen_name
       +"&requisition_date="+  convert($scope.requisition_date)
       +"&debit="+ $scope.debit
       +"&credit="+ $scope.credit
       +"&paid_to="+ $scope.paid_to
       +"&against_bill="+ $scope.against_bill
       +"&on_account_of="+ $scope.on_account_of
       +"&bill_desk="+ $scope.bill_desk
       +"&total_amount="+ $scope.total_amount
       
  
       )
       .then(function (result) {
           
  console.log(result);
  if(result.data['0'].status == "1") {
   // SomeFunction(1);
   // get_student_data();
  swal("Success!", result.data['0'].message, "success");


    toastr.success("Successfully Added!");

  get_Requi_item_data();
  //get_Requi_data();
  
  $scope.item_name ="";
  $scope.item_description ="";
  $scope.quantity ="";
  $scope.price_amount ="";
 

  }else if(result.data['0'].status == "0") {
    toastr.error("Error!", "Category", {
      "timeOut": "0",
      "extendedTImeout": "0"
    });
  swal(result.data['0'].message);
   }else {
    swal("Data error please contact to the tecnical support!");
   // alert(result.data);
    console.log(result.data);
   }
  
  // $('#defaultModal').modal('hide');
           
       }, function(result) {
           //some error

           swal(result);

           console.log(result);
       });
       
   };



   get_item_data();

   function get_item_data(){ 
   
     var method="select";
     var query="select * from office_item_name";
   
   
     $http.post("php/API.php?query="+query+"&method="+method)
         .then(function (result) {
          
           console.log(result.data);
           $scope.data_list_names=result.data.tbldata;
            
         }, function(result) {
            
             //some error
             console.log(result);
         });
     }

     get_cate_data();
     function get_cate_data(){ 
   
      var method="select";
      var query="select * from office_item_category";
    
    
      $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
           
           // console.log(result.data);
            $scope.data_list_cnames=result.data.tbldata;
            $scope.data_list_cnamesi=result.data.tbldata;
             
          }, function(result) {
             
              //some error
              console.log(result);
          });
      }


     $scope.save_cate_name=  function(){ 

      if($scope.cate_name_add_new == null || $scope.cate_name_add_new == undefined || $scope.cate_name_add_new == ""){
        swal("Please Enter Category name!");
        return;
      }
     
        var method="insert";
        var query="INSERT INTO `office_item_category` (category_name, created_by) values ('"+$scope.cate_name_add_new+"', '"+EMP_id+"')";
      
      
        $http.post("php/API.php?query="+query+"&method="+method)
            .then(function (result) {
             
              console.log(result.data);
              if(result.data.success==true){
                toastr.success("Successfully Added!");
              }else{
                toastr.error("Error try again!");
              }
              
              get_cate_data();
               
            }, function(result) {
               
                //some error
                console.log(result);
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
   
   
     $scope.LoadSessionData = function(val) {
       //console log
               console.log(val);
           }
   

get_all_data();
// function get_Requi_data(){ 

// // alert(fdate);


//       swal("Loading...");

//     var query_item="select  sum(total) as total, sum(quantity) as quantity from account_expenses_item ";
    
//     var query="select  vendor_id, vendor_name, mobile, email, user_name, user_id, date, time, remarks, category, priority, receipt_no, admin_approved, admin_remarks,delivery_date from account_expenses where date between '"+fdate+"' and '"+tdate+"'  order by id DESC   ";
    
//       var Total_record_query="SELECT COUNT(*) As total_records FROM `account_expenses` where date between '"+fdate+"' and '"+tdate+"'  ";
    
//       console.log(query);
    
//       var records_per_page="10";
  

//     $http.get("php/get_po_data_all_pagination.php?records_per_page="+records_per_page+"&page_no="+page_no+"&query="+query+"&Total_record_query="+Total_record_query+"&uid="+EMP_id+"&query_item="+query_item)
//       .then(function (response) {
//         console.log(response.data.tbldata);
        
//         if(response.data.datastatus != "0") {
         
//             $scope.total_no_of_pages_ = response.data.total_no_of_pages;
//             $scope.Requi_details = response.data.tbldata;
//             $scope.page_no_= response.data.page_no;
//             $scope.opts=response.data.DUEP;
          
                
//         }
//           else{
//             $scope.Requi_details = "";
//           }

//         swal.close();
         
//       }, function(result) {
         
//           //some error
//           console.log(result);
//       });
//   };

function get_all_data(){
    var method="select";
        var query="select * from account_expenses";
      
      
        $http.post("php/API.php?query="+query+"&method="+method)
            .then(function (result) {
             
              console.log(result.data);
              $scope.Requi_details=result.data.tbldata;
              
               
            }, function(result) {
               
                //some error
                console.log(result);
            });
}


$scope.callList= function(index){

    console.log(index);
    if(index>0){
        page_no=index;
      get_expenses_data();
    }else{}


    
  }
 

  $scope.Requisition_data = function (index) {


    $scope.receipt_no_fl = parseFloat($scope.Requi_details[index].receipt_no);
    receipt_no_last= parseFloat($scope.Requi_details[index].receipt_no);

    $scope.description= $scope.Requi_details[index].remarks;
    $scope.category= $scope.Requi_details[index].category;
    $scope.priority= $scope.Requi_details[index].priority;
    $scope.delivery_date=$scope.Requi_details[index].delivery_date;
    $scope.user_id =$scope.Requi_details[index].user_id;

    
    $scope.middlename ="";
    
    $scope.lastname ="";
    
    $scope.firstname =$scope.Requi_details[index].user_name;
    
    $scope.courtesy =$scope.Requi_details[index].courtesy;
    
    $scope.email =$scope.Requi_details[index].email;
    
    $scope.mobile =$scope.Requi_details[index].mobile;

    $scope.to_vandor =$scope.Requi_details[index].vendor_name;



    vendor_gen_name =$scope.Requi_details[index].vendor_name;
    
    vendor_gen_id =$scope.Requi_details[index].vendor_id;
    
    
document.getElementById("delivery_date").value = $scope.Requi_details[index].delivery_date;
    
    //  $scope.requisition_date = new Date($scope.Requi_details[index].date).toDateString();
document.getElementById("requisition_date").value = $scope.Requi_details[index].date;
    //=new Date(result.data['0'].dob).toDateString();
   // console.log($scope.Requi_details[index].date);
    //console.log($scope.Requi_details[index].priority);

    get_Requi_item_data();
 };


$scope.preview_pdf = function(){ 

  //  alert(receipt_pdf_id);    
       window.open('export_pdf/examples/purchase_pdf.php?receipt_no='+receipt_no_last,'_blank');
  
  }
  
  
  $scope.preview_receipt = function(){ 

  //  alert(receipt_pdf_id);    
       window.open('template/staff_purchase_order_receipt.php?receipt_no='+receipt_no_last,'_blank');
  
  }
  
  
  
  
    $scope.Requisition_Print_All= function(index){ 
      //  window.open('export_pdf/examples/invoice.php?receipt_no='+$scope.Requi_details[index].receipt_no,'_blank');
      var url=  "export_pdf/examples/account_expenses_report.php?user_id="+EMP_id+"&receipt_no="+$scope.Requi_details[index].receipt_no;
  window.open(url,'_blank');
 window.open(url);
  }



$scope.Requisition_DeteAll = function (index) {

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

  var  query = "?user_id="+$scope.Requi_details[index].user_id+"&receipt_no="+$scope.Requi_details[index].receipt_no;
              
  $http.post("php/del_acc_exp.php"+query)
  .then(function (result) {
  //  console.log(result.data);
if(result.data['0'].status == "1") {

  toastr.success("Removed Successfully!");
  swal("Removed successfully!");
    
  get_Requi_item_data();
  //get_Requi_data();
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

 
 $scope.Requisition_Dete = function (index) {

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

    var  query = " delete from `account_purchase_order_item` where user_id='"+$scope.Requi_item_details[index].user_id+"' and receipt_no='"+$scope.Requi_item_details[index].receipt_no+"' and  id="+$scope.Requi_item_details[index].id+" ";
              
          //    console.log(query);
            var  method = "delete";
  $http.post("php/API.php?query="+query+"&method="+method)
  .then(function (result) {
 //   console.log(result.data);
if(result.data.status == true) {

  toastr.success("Removed Successfully!");
  swal("Removed successfully!");
    
  get_Requi_item_data();
  //get_Requi_data();
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


var uid = "";
var ureceipt_no = "";


$scope.approve_data= function(){

  
  if($scope.approve_remarks == null || $scope.approve_remarks == undefined || $scope.approve_remarks == ""){
    swal("Please enter remarks!");
    return;
  }
  
  swal({
    title: "Are you sure?",
    text: "you want to update!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {

      swal("Loading...");

  var query="update account_purchase_order set admin_remarks='"+$scope.approve_remarks+"', admin_approved='"+remarks_status+"' where receipt_no='"+receipt_no_last+"' ";

    
   console.log(query);
     
 $http.post("php/DeleteItem.php?query="+query)
 .then(function (result) {
   console.log(result.data);
if(result.data['0'].status == "1") {
  toastr.success("Successfully Update!");
 swal("Updated successfully!");
 $('#defaultModal').modal('hide');
 get_Requi_item_data();
 //get_Requi_data();
 
 dialog_for_create_quotation(receipt_no_last);
 
}else{
  toastr.error("Error!");
}

//swal.close();
    
 }, function(result) {
    
     //some error
     console.log(result);
 });

} else {
  //   swal("Your imaginary file is safe!");
   }
 });

}


function dialog_for_create_quotation(receipt_no_last){
    
    
       
 $http.post("php/Approve_create_quotation.php?receipt_no="+receipt_no_last)
 .then(function (result) {
   console.log(result.data);
if(result.data['0'].status == "1") {
  toastr.success(result.data['0'].message);
 swal(result.data['0'].message);
 
}else{
  toastr.error(result.data['0'].message);
}

//swal.close();
    
 }, function(result) {
    
     //some error
     console.log(result);
 });
   
    
}


$scope.Requisition_Edit = function (index) {
  $scope.item_nameE= $scope.Requi_item_details[index].item;
  $scope.item_descriptionE= $scope.Requi_item_details[index].item_description;
  $scope.quantityE= parseFloat($scope.Requi_item_details[index].quantity);
  $scope.price_amountE= parseFloat($scope.Requi_item_details[index].price);

  
 uid = $scope.Requi_item_details[index].id;
 ureceipt_no = $scope.Requi_item_details[index].receipt_no;

 console.log(uid);
 console.log(ureceipt_no);

};


$scope.Approved_remarks_sts= function(){
  remarks_status = "Approved";
}

$scope.Reject_remarks_sts= function(){
  remarks_status = "Rejected";
}


$scope.Req_Update = function () {


  swal({
    title: "Are you sure?",
    text: "you want to update!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {


      if($scope.receipt_no_fl == null || $scope.receipt_no_fl == undefined || $scope.receipt_no_fl == ""){
        swal("receipt no not load please try again!");
        return;
      }
  
      if($scope.requisition_date == null || $scope.requisition_date == undefined || $scope.requisition_date == ""){
        swal("Please select requisition date!");
        return;
      }
  
    
    
      if(user_full_name == null || user_full_name == undefined || user_full_name == "" ){
        swal("User Name not load please try again!");
        return;
      }
      
      if( $scope.priority == null ||  $scope.priority == undefined ||  $scope.priority == "" ){
        swal("Please select priority!");
        return;
      }
  if( $scope.category == null ||  $scope.category == undefined ||  $scope.category == "" ){
        swal("Please select category!");
        return;
      }
  
      if($scope.description == null || $scope.description == undefined || $scope.description == ""){
        swal("Please enter Purpose/Description!");
        return;
      }
    
    if($scope.item_nameE == null || $scope.item_nameE == undefined || $scope.item_nameE == ""){
      swal("Please enter item name!");
      return;
    }

    if($scope.item_descriptionE== null || $scope.item_descriptionE == undefined || $scope.item_descriptionE == ""){
      swal("Please enter item description!");
      return;
    }

    if($scope.quantityE == null || $scope.quantityE == undefined || $scope.quantityE == ""){
      swal("Please enter item quantity!");
      return;
    }


    if($scope.price_amountE == null || $scope.price_amountE == undefined || $scope.price_amountE == ""){
      swal("Please enter item price!");
      return;
    }

    swal("Loading...");


     

    var tot  = $scope.price_amountE*$scope.quantityE;


    var query="update account_purchase_order_item set item='"+$scope.item_nameE+"', item_description='"+$scope.item_descriptionE+"', quantity='"+$scope.quantityE+"',price='"+$scope.price_amountE+"',total='"+tot+"' where id="+uid+" and receipt_no='"+ureceipt_no+"' ";

    
   // console.log(query);
      
  $http.post("php/DeleteItem.php?query="+query)
  .then(function (result) {
  //  console.log(result.data);
if(result.data['0'].status == "1") {

  swal("Updated successfully!");
  toastr.success("Successfully Update!");
  
  get_Requi_item_data();
  //get_Requi_data();
}

swal.close();
     
  }, function(result) {
     
      //some error
      console.log(result);
  });

    } else {
   //   swal("Your imaginary file is safe!");
    }
  });

};


  $scope.Req_item = function(){
    get_reci_data();
    get_Requi_item_data();
  }

  
function get_Requi_item_data(){ 

  swal("Loading...");


  $http.post("php/get_exp_item.php?uid="+receipt_no_last)
      .then(function (result) {
        console.log(result.data);
if(result.data.status != "0") {

  var total = 0;
 // console.log(result.data.length);
//  console.log(result.data[0].total);
  for (var i = 0; i < result.data.length; i++) {
         total = parseFloat(total) + parseFloat(result.data[i].total);   
       }

     //  console.log(total);
    
       $scope.total_data = parseFloat(total);

          $scope.Requi_item_details = result.data;
        //  console.log(result.data);
}else{
  $scope.Requi_item_details = "";
}

swal.close();
         
      }, function(result) {
         
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



    //get_Requi_data();
   // console.log(result.data.firstname);
    // window.location.href = "login.html";           
       }else{
         window.location.href = "login.html";
       }
}, function(result) {
    //some error
    console.log(result);
});



   
get_reci_data();

function get_reci_data(){ 
    
        
    $scope.college =college;
    
    $scope.email =email;
    
    $scope.mobile =phone;

  //  console.log(result.data.mobile);
     $scope.lastname ="";
     $scope.firstname ="";
        
        $scope.middlename ="";
    
    
    $scope.firstname =user_full_name;
    

     
     document.getElementById("requisition_date").valueAsDate = new Date();

  $scope.receipt_no_fl = "";

  swal("Loading...");

  $http.post("php/get_exp_id.php")
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

};



// var delivery_date= $scope.delivery_date;
$scope.submit_Rq= function(){
 // var delivery_date=$scope.delivery_date;


 


  function convert(str) {
    var date = new Date(str),
      mnth = ("0" + (date.getMonth() + 1)).slice(-2),
      day = ("0" + date.getDate()).slice(-2);
    return [date.getFullYear(), mnth, day].join("-");
  }

  var delivery_date=convert($scope.delivery_date);

  if($scope.delivery_date == null || $scope.delivery_date == undefined || $scope.delivery_date == ""){
    swal("Please select delivery date!");
    return;
  }

  //alert(delivery_date);
  swal({
    title: "Are you sure?",
    text: "you want to submit!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
      swal("Loading...");

      var method = 'update';

    var  query = " update `account_purchase_order` set submitted ='YES',account_approved='Approved',delivery_date='"+delivery_date+"' where receipt_no='"+receipt_no_last+"'  ";
    
   console.log(query);

  $http.post("php/API.php?query="+query+"&method="+method)
  .then(function (result) {
    console.log(result.data);

   if(result.data.success==true){
       
       
       
//       $http.post("php/Send_Mail_Purch_Submit.php?receipt_no="+receipt_no_last)
//   .then(function (result) {
//     console.log(result);
//   }, function(result) {
//       console.log(result);
//   });
       
       
       

  toastr.success("Submited Successfully!");
  swal("Submited successfully!");
  
    notification_send(receipt_no_last);
    
 $('#defaultModal').modal('hide');
  get_Requi_item_data();
  //get_Requi_data();

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




// toastr.error("Noooo oo oo ooooo!!!", "Title", {
//     "timeOut": "0",
//     "extendedTImeout": "0"
//   });
//   toastr.success("YYEESSSSSSS");
//  toastr.info("Info Message", "Title");
//   toastr.warning("Warning");
// $scope.vendorLoadSessionData = function(index) {
//   //console log
//  //  console.log(index);
//          // console.log(index);
         
//          $scope.to_vandorid=$scope.data_vendor_names[index].vendor_id;

//          vendor_gen_id = $scope.data_vendor_names[index].vendor_id;
//          vendor_gen_name = $scope.data_vendor_names[index].company;

//            $scope.to_vandor=$scope.data_vendor_names[index].company;
//           //  $scope.to_address=$scope.data_vendor_names[index].address;
//           //   $scope.to_contact=$scope.data_vendor_names[index].vendor_contact;
            
//       }

$scope.vendorLoadSessionData = function(index) {
  //console log
//    console.log(index);
         // console.log(index);
         vendor_gen_id = $scope.data_vendor_names[index].vendor_id;
         vendor_gen_name = $scope.data_vendor_names[index].company;
            $scope.to_vandor=$scope.data_vendor_names[index].company;
           // $scope.to_address=$scope.data_vendor_names[index].address;
           //  $scope.to_contact=$scope.data_vendor_names[index].vendor_contact;
            
      }


      get_vendor_data();
     function notification_send(rid){ 
   var table="account_purchase_order";
   var type="PO";
   
   console.log("notification_send ", rid);
    console.log("http://mjge.in/account/App_API/notification.php?recipet_id="+rid+"&table="+table+"&type="+type);
      $http.post("http://mjge.in/account/App_API/notification.php?recipet_id="+rid+"&table="+table+"&type="+type)
          .then(function (result) {
           
            console.log(result.data);
              
          }, function(result) {
             
              //some error
              console.log(result);
          });
      }
      function get_vendor_data(){ 
      
        var method="select";
        var query="select * from account_vendor";
      
      
        $http.post("php/API.php?query="+query+"&method="+method)
            .then(function (result) {
             
              console.log(result.data);
              $scope.data_vendor_names=result.data.tbldata;
               
            }, function(result) {
               
                //some error
                console.log(result);
            });
        }
        

       
        function today_date(){
          var today = new Date();
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        var yyyy = today.getFullYear();
        
        today = yyyy+ '-' + mm  + '-' +dd;
        return today;
        }

$scope.onsearchF= function(){
  curentdate();
}
curentdate();
function curentdate(){
  console.log($scope.searchF);
if($scope.searchF == null || $scope.searchF == undefined || $scope.searchF == "" || $scope.searchF == "NaN-aN-aN" ){
  fdate = today_date();
  // alert(fdate);
  }else{
    fdate =  convert($scope.searchF);
    // alert(fdate);
  }
  //get_Requi_data();
}
$scope.onsearchT= function(){
seconddate();
}
seconddate();
function seconddate(){
 if($scope.searchT == null || $scope.searchT == undefined || $scope.searchT == "" || $scope.searchT == "NaN-aN-aN" ){
  tdate = today_date();
}else{
  // alert(tdate);
  tdate= convert($scope.searchT);
  }
  //get_Requi_data();
}


$scope.save_item_name1 = function(){

        
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
    

      swal("Loading...");
          
        var method="insert";
        var query=" INSERT INTO `account_vendor`(`first_name`, `last_name`, `company`, `vendor_email`, `person_contact`, `vendor_contact`, `vendor_category`, `provide`, `website`, `address`, `date_time` , `created_by`, `vendor_id`) VALUES ('"+$scope.first_name+"',      '"+$scope.last_name+"',      '"+$scope.vendor+"',      '"+$scope.email+"',      '"+$scope.contact+"',      '"+$scope.vcontact+"',      '"+$scope.categoryi+"',      '"+$scope.changedValu+"',      '"+$scope.website+"',      '"+$scope.address+"',  now() , '"+EMP_id+"' , '"+vendor_gen_emp_id+"'  ) ";
          
         console.log(query);
          
          $http.post("php/API.php?query="+query+"&method="+method)
          .then(function (result) {
            console.log(result);
  
               if(result.data.success==true){ 
                   
                      swal("Inserted Successfully!");
            
                      toastr.success("Inserted Successfully!");
  
                      var gen_incremented = parseInt(vendor_gen_emp_id)+1;
                      
                      console.log(gen_incremented);
                      
                       var method="update";
                        var query=" update `master_data` set gen_emp_id ='"+gen_incremented+"' where id=8 ";
                       $http.post("php/API.php?query="+query+"&method="+method)
                         .then(function (result) {
                      
                          load_VendorID();
                    
                     get_vendor_data();

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
      

});
