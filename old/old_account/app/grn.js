var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http) {

var user_id_session="";
var EMP_id ="";
var receipt_no_last="";
 // alert("Test....");
 var profile_type="";
 
 
 
								// 		generateBarcode("BARCODE1234");

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



  
  $http.post('php/login_validation.php')
  .then(function (result) {
    console.log(result.data); 
     console.log(result.data.ctype);
    if(result.data.loggedIn == "true") {
        
              profile_type =result.data.ctype;
  
      $scope.user_name1 =result.data.firstname;
      $scope.user_name =result.data.firstname;
      $scope.user_id =result.data.user_id;
      $scope.admin_role =result.data.admin_role;
  
      EMP_id =result.data.user_id;

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


  
 var page_no=1;

 function get_Requi_data(){ 
 
 //alert("oo");
 
 
 //      swal("Loading...");
 
 var query_item="select sum(delivered_quantity) as delivered_quantity, sum(total) as total, sum(quantity) as quantity from account_purchase_order_item  ";
  console.log(query_item);
  
 var query="select verify_status, vendor_id, vendor_name, mobile, email, user_name, user_id, date, time, remarks, category, priority, receipt_no, admin_approved, admin_remarks,vendor_receipt_file,vendor_receipt_no from account_purchase_order  as a where admin_approved='Approved'  group by a.receipt_no order by a.id DESC ";
   var Total_record_query="SELECT COUNT(*) As total_records FROM `account_purchase_order` ";
   var records_per_page="10";
   
    console.log(query);
    console.log(Total_record_query);
   
     $http.get("php/get_grn_data_all_pagination.php?records_per_page="+records_per_page+"&page_no="+page_no+"&query="+query+"&Total_record_query="+Total_record_query+"&uid="+EMP_id+"&query_item="+query_item)
       .then(function (response) {
         console.log(response.data.tbldata);
 if(response.data.datastatus != "0") {
   
          // $scope.Requi_details = result.data;
           
              $scope.total_no_of_pages_ = response.data.total_no_of_pages;
     $scope.Requi_details = response.data.tbldata;
     $scope.page_no_= response.data.page_no;
   //  console.log(response.data.DUEP);
   
 
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
 
     console.log(index);
     if(index>0){
         page_no=index;
       get_Requi_data();
     }else{}
 
 
     
   }
  

  
  
   get_Requi_data();
  

  
   $scope.Requisition_data = function (index) {


    $scope.receipt_no_fl = parseFloat($scope.Requi_details[index].receipt_no);
    receipt_no_last= parseFloat($scope.Requi_details[index].receipt_no);

    $scope.description= $scope.Requi_details[index].remarks;
    $scope.category= $scope.Requi_details[index].category;
    $scope.priority= $scope.Requi_details[index].priority;
    




   // $scope.user_id =$scope.Requi_details[index].user_id;

    
    $scope.middlename ="";
    
    $scope.lastname ="";
    
    $scope.firstname =$scope.Requi_details[index].user_name;
    
    $scope.courtesy =$scope.Requi_details[index].courtesy;
    
    $scope.email =$scope.Requi_details[index].email;
    
    $scope.mobile =$scope.Requi_details[index].mobile;
    
    $scope.to_vandor =$scope.Requi_details[index].vendor_name;

    $scope.payble_name=$scope.Requi_details[index].vendor_name;




    vendor_gen_name =$scope.Requi_details[index].vendor_name;
    
    vendor_gen_id =$scope.Requi_details[index].vendor_id;




   $scope.vserialno =$scope.Requi_details[index].vendor_receipt_no;


var str = $scope.Requi_details[index].vendor_receipt_file;
var str_array = str.split(',');

 $('#photo_data').html("");

for(var i = 0; i < str_array.length; i++) {
   // Trim the excess whitespace.
   str_array[i] = str_array[i].replace(/^\s*/, "").replace(/\s*$/, "");
   // Add additional code here, such as:
   console.log(str_array[i]);
   
   var datac = "<a href='php/upload/"+str_array[i]+"' target='_blank'>"+str_array[i]+"</a><a href='php/upload/"+str_array[i]+"' target='_blank'> <button type='button' class='btn btn-default btn-circle waves-effect waves-circle waves-float'> <i class='material-icons'>remove_red_eye</i></button></a><br> ";
 //document.getElementById('photo_data').innerHTML += data;
 
 
   console.log(datac);
 
// $('#photo_data').data(data);
   
   
  // document.getElementById("photo_data").insertAdjacentHTML("afterend", datac); 
  
 // $("#photo_data").html("");
 
 $('#photo_data').append(datac);
 
}

  //  $scope.vendor_receipt_file_data=$scope.Requi_details[index].vendor_receipt_file;
 

   


    $scope.brcode='barcode/barcode.php?text=GRN'+receipt_no_last+'&codetype=code128&orientation=horizontal&size=20&print=true';



    $scope.grn_status  =$scope.Requi_details[index].verify_status;
  

    //  $scope.requisition_date = new Date($scope.Requi_details[index].date).toDateString();
document.getElementById("requisition_date").value = $scope.Requi_details[index].date;
    //=new Date(result.data['0'].dob).toDateString();
   // console.log($scope.Requi_details[index].date);
    //console.log($scope.Requi_details[index].priority);

    get_Requi_item_data();
 }

 function get_Requi_item_data(){ 

  swal("Loading...");


  $http.post("php/get_po_item_data.php?uid="+receipt_no_last)
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

       $scope.paid_amount=parseFloat(total);

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

  

  $scope.Requisition_Edit = function(index){

 var   Dquantity = document.getElementById("Dquantity"+index).value;

 var   Dcomments= document.getElementById("Dcomments"+index).value;


 var item_quantity= $scope.Requi_item_details[index].quantity;

if(Dquantity == "0" || Dquantity=="" || Dquantity == undefined ){
  swal("Quantity not allowed!");
  return;
}
 

 if(item_quantity >= Dquantity){
 }else{
  swal("Quantity not allowed!");
return;
 }

  var item_id= $scope.Requi_item_details[index].id;
 item_rep_id=$scope.Requi_item_details[index].receipt_no;

 var item_name= $scope.Requi_item_details[index].item;


 swal("Are you sure to", {
  buttons: {
    Update: "Update",
    catch: {
      text: "Add To Store",
      value: "catch",
    },
    Cancel: true,
  },
})
.then((value) => {
  switch (value) {
 
    case "Cancel":
      swal("Your imaginary file is safe!");
      break;
 
    case "catch":
     swal({
  title: "Are you sure ?",
  text: "Once update, you will not be able to recover this imaginary file!",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    swal("Loading...");

//alert(item_name);
   // var method="update";
    //var query="update account_purchase_order_item set delivered_quantity ='"+Dquantity+"',confirm_store='Yes', comments='"+Dcomments+"' where id="+item_id+" and  receipt_no='"+item_rep_id+"' ";
  
    $http.post("php/Add_to_stock.php?Dquantity="+Dquantity+"&Dcomments="+Dcomments+"&item_id="+item_id+"&item_rep_id="+item_rep_id+"&item_name="+item_name)
        .then(function (result) {
 //console.log(result.data);
 //console.log(result.data[0].message);
 if(result.data[0].status=='1'){

toastr.success(result.data[0].message);
swal("Updated successfully!");

get_Requi_item_data();
get_Requi_data();

}else{
toastr.error(result.data[0].message);
}

swal.close();
   
}, function(result) {
   
    //some error
    console.log(result);
});

  } else {
    swal("Your imaginary file is safe!");
  }
});
      break;
      case "Update":
      swal({
        title: "Are you sure?",
        text: "Once update, you will not be able to recover this imaginary file!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
          swal("Loading...");
      
          var method="update";
          var query="update account_purchase_order_item set delivered_quantity ='"+Dquantity+"',comments='"+Dcomments+"' where id="+item_id+" and  receipt_no='"+item_rep_id+"' ";
        
          $http.post("php/API.php?query="+query+"&method="+method)
              .then(function (result) {
       console.log(result.data);
      
       if(result.data.success==true){
      
      toastr.success("Updated Successfully!");
      swal("Updated successfully!");
      
      get_Requi_item_data();
      get_Requi_data();
      
      }else{
      toastr.error("Error!");
      }
      
      swal.close();
         
      }, function(result) {
         
          //some error
          console.log(result);
      });
      
        } else {
         swal("Your imaginary file is safe!");
        }
      });
  }
});







// swal({
//   title: "Are you sure?",
//   text: "Once update, you will not be able to recover this imaginary file!",
//   icon: "warning",
//   buttons: true,
//   dangerMode: true,
// })
// .then((willDelete) => {
//   if (willDelete) {
//     swal("Loading...");

//     var method="update";
//     var query="update account_purchase_order_item set delivered_quantity ='"+Dquantity+"', comments='"+Dcomments+"' where id="+item_id+" and  receipt_no='"+item_rep_id+"' ";
  
//     $http.post("php/API.php?query="+query+"&method="+method)
//         .then(function (result) {
//  console.log(result.data);

//  if(result.data.success==true){

// toastr.success("Updated Successfully!");
// swal("Updated successfully!");

// get_Requi_item_data();
// get_Requi_data();

// }else{
// toastr.error("Error!");
// }

// swal.close();
   
// }, function(result) {
   
//     //some error
//     console.log(result);
// });

//   } else {
//   //  swal("Your imaginary file is safe!");
//   }
// });


  }

 

  
  $scope.GRN_Submit = function(){
    
     if($scope.grn_status == null || $scope.grn_status == undefined || $scope.grn_status == ""){
      swal("Please select status!");
      return;
    }
    if($scope.grn_paymode == null || $scope.grn_paymode == undefined || $scope.grn_paymode == ""){
      swal("Please select Paymode!");
      return;
    }
   
    var Deliveredstatus=$scope.grn_status;
    var vserialno=$scope.vserialno;
 

   
   swal({
     title: "Are you sure?",
     text: "Once update, you will not be able to recover this imaginary file!",
     icon: "warning",
     buttons: true,
     dangerMode: true,
   })
   .then((willDelete) => {
     if (willDelete) {
       swal("Loading...");
   
       var method="update";
       var query="update account_purchase_order set delivered_status='Yes',vendor_receipt_no='"+vserialno+"',verify_status='"+Deliveredstatus+"',Paymode='"+$scope.grn_paymode+"' where receipt_no='"+receipt_no_last+"' ";
    console.log(query);
    
     
      
       $http.post("php/API.php?query="+query+"&method="+method)
           .then(function (result) {
    console.log(result.data);
   
    if(result.data.success==true){
   
   toastr.success("Updated Successfully!");
   swal("Updated successfully!");
   
   get_Requi_data();
    notification_send(receipt_no_last);
   }else{
   toastr.error("Error!");
   }
   
    function notification_send(rid){ 
   var table="account_purchase_order";
   var type="GRN";
   
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
   
 $('#defaultModal').modal('hide');

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
   
   


  
$scope.preview_pdf = function(){ 

  //  alert(receipt_pdf_id);    
       window.open('export_pdf/examples/grn_pdf.php?receipt_no='+receipt_no_last,'_blank');
  
  }
  
  
    $scope.preview_receipt = function(){ 

  //  alert(receipt_pdf_id);    
       window.open('template/grn_receipt.php?receipt_no='+receipt_no_last,'_blank');
  
  }
  
  
    $scope.Requisition_Print_All= function(index){ 
       window.open('export_pdf/examples/grn_pdf.php?receipt_no='+$scope.Requi_details[index].receipt_no,'_blank');
  }





  $scope.form = [];

  $scope.files = [];


  $scope.submit = function() {

    $scope.form.image = $scope.files[0];


//     $http({

//   method  : 'POST',

//   url     : 'php/save_form.php',

//   processData: false,

//   transformRequest: function (data) {

//       var formData = new FormData();

//       formData.append("image", $scope.form.image);  

//       return formData;  

//   },  

//   data : $scope.form,

//   headers: {

//          'Content-Type': undefined

//   }

//  }).success(function(data){

//       alert(data);

//  });


 $http.post("php/save_form.php?image="+$scope.form.image)
    .then(function (result) {
    
     console.log(result.data);
      
        
    }, function(result) {
        //some error
        console.log(result);
    });


  }
  

  $scope.upload = function(){

 
 
    var fd = new FormData();
    var files = document.getElementById('file').files[0];
    fd.append('file',files);
    fd.append('receipt_no', receipt_no_last);
  swal("Loading..");
    // AJAX request
    $http({
     method: 'post',
     url: 'php/upload.php',
     data: fd,
     headers: {'Content-Type': undefined},
    }).then(function successCallback(response) { 
      // Store response data
      console.log(response.data.name);

  swal.close();
  
window.reload();

      $scope.vendor_receipt_file_data=response.data.name;
   
      toastr.success("Receipt uploaded Successfully!");
      //$scope.response = response.data;
    });



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
   $scope.sampleCall = function(){
      
    if($scope.searchF == null || $scope.searchF == undefined || $scope.searchF == "" || $scope.searchF == "NaN-aN-aN" ){
    var searchF = today_date();
    }else{
     var searchF =  convert($scope.searchF);
    }
  
   if($scope.searchT == null || $scope.searchT == undefined || $scope.searchT == "" || $scope.searchT == "NaN-aN-aN" ){
    var searchT = today_date();
  }else{
     var  searchT= convert($scope.searchT);
    }
    
  var url="php/DailyGRNInvoiceReport.php?fdate="+searchF+"&tdate="+searchT;
  window.open(url,'_blank');
 window.open(url);
}

$scope.print_cheque=function()
{

  var paisa=  RsPaise(Math.round(document.getElementById('paid_amount').value*100)/100);

  var url="php/axis_print.php?name="+$scope.payble_name+"&amtw="+paisa+"&amt="+$scope.paid_amount+"&date="+convert($scope.cheque_date);
  window.open(url,'_blank');
  window.open(url);

  //  window.open("export/client_po_report.php?purchase_id="+$scope.Requi_details[index].PurID,'_blank');
}


function Rs(amount){
  var words = new Array();
  words[0] = 'Zero';words[1] = 'One';words[2] = 'Two';words[3] = 'Three';words[4] = 'Four';words[5] = 'Five';words[6] = 'Six';words[7] = 'Seven';words[8] = 'Eight';words[9] = 'Nine';words[10] = 'Ten';words[11] = 'Eleven';words[12] = 'Twelve';words[13] = 'Thirteen';words[14] = 'Fourteen';words[15] = 'Fifteen';words[16] = 'Sixteen';words[17] = 'Seventeen';words[18] = 'Eighteen';words[19] = 'Nineteen';words[20] = 'Twenty';words[30] = 'Thirty';words[40] = 'Forty';words[50] = 'Fifty';words[60] = 'Sixty';words[70] = 'Seventy';words[80] = 'Eighty';words[90] = 'Ninety';var op;
  amount = amount.toString();
  var atemp = amount.split('.');
  var number = atemp[0].split(',').join('');
  var n_length = number.length;
  var words_string = '';
  if(n_length <= 9){
  var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);
  var received_n_array = new Array();
  for (var i = 0; i < n_length; i++){
  received_n_array[i] = number.substr(i, 1);}
  for (var i = 9 - n_length, j = 0; i < 9; i++, j++){
  n_array[i] = received_n_array[j];}
  for (var i = 0, j = 1; i < 9; i++, j++){
  if(i == 0 || i == 2 || i == 4 || i == 7){
  if(n_array[i] == 1){
  n_array[j] = 10 + parseInt(n_array[j]);
  n_array[i] = 0;}}}
  value = '';
  for (var i = 0; i < 9; i++){
  if(i == 0 || i == 2 || i == 4 || i == 7){
  value = n_array[i] * 10;} else {
  value = n_array[i];}
  if(value != 0){
  words_string += words[value] + ' ';}
  if((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)){
  words_string += 'Crores ';}
  if((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)){
  words_string += 'Lakhs ';}
  if((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)){
  words_string += 'Thousand ';}
  if(i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)){
  words_string += 'Hundred and ';} else if(i == 6 && value != 0){
  words_string += 'Hundred ';}}
  words_string = words_string.split(' ').join(' ');}
  return words_string;}

  function RsPaise(n){
  nums = n.toString().split('.')
  var whole = Rs(nums[0])
  if(nums[1]==null)nums[1]=0;
  if(nums[1].length == 1 )nums[1]=nums[1]+'0';
  if(nums[1].length> 2){nums[1]=nums[1].substring(2,length - 1)}
  if(nums.length == 2){
  if(nums[0]<=9){nums[0]=nums[0]*10} else {nums[0]=nums[0]};
  var fraction = Rs(nums[1])
  if(whole=='' && fraction==''){op= 'Zero only';}
  if(whole=='' && fraction!=''){op= 'paise ' + fraction + ' only';}
  if(whole!='' && fraction==''){op='Rupees ' + whole + ' only';} 
  if(whole!='' && fraction!=''){op='Rupees ' + whole + 'and paise ' + fraction + ' only';}
  amt=document.getElementById('paid_amount').value;
  if(amt > 999999999.99){op='Oops!!! The amount is too big to convert';}
  if(isNaN(amt) == true ){op='Error : Amount in number appears to be incorrect. Please Check.';}
  return op;}}
  //RsPaise(Math.round(document.getElementById('amt').value*100)/100);
  

});



