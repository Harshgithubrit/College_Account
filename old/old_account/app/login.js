var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope, $http) {
  $http.post('php/login_validation.php')
  .then(function (result) {
      
      console.log(result.data);  console.log(result.data.loggedIn);
      if(result.data.loggedIn == "true") {
       if(result.data.ctype =="Account" ) {
           window.location.href = "Account_index.html"; 
       }
       else{
        window.location.href = "index.html";
       }
         }
      
  }, function(result) {
      //some error
      console.log(result);
  });



  $scope.showModal = false;
  $scope.buttonClicked = "";
  $scope.toggleModal = function(btnClicked){
      $scope.buttonClicked = btnClicked;
      $scope.showModal = !$scope.showModal;
  };
  

  $scope.formSubmit = function() {

    
    if (navigator.onLine == true) {
   // swal("Hello world!");

      $http.post("php/login.php?user_id="+ $scope.user_id +"&password="+ $scope.password)
      .then(function (result) {
          
  //$scope.result = result.data.firstname;
         console.log(result.data);
if(result.data.ctype =="Account" ) {
 // alert("welcome");
window.location.href = "Account_index.html"; 


  swal("Welcome Accountent!");
}
else if( result.data.ctype =="Admin"){

  window.location.href = "index.html"; 
  swal("Welcome Admin! ");
}
else{
 // alert("error!");
 swal(result.data.message);

// $scope.result = "Please enter valid details!";
 // $scope.showModal = !$scope.showModal;
      
  }
          
          
      }, function(result) {
          //some error
          console.log(result);
      });


        // alert('Connection active!');
        console.log('Connection active!');
       }else{
       alert('Internet connection is lost');
       return;
       }
      
  };
  
  $scope.loginTask = function () {
    $http.post('php/login.php')
        .then(function (result) {
            $scope.lastName = result.data;
            console.log(result.data);
            
        }, function(result) {
            //some error
            console.log(result);
        });
  
  };

  
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