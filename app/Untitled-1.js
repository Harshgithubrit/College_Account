//var fetchedObject = localStorage.getItem('firstname');
console.log('fetchedObject for local storage: ', JSON.parse(localStorage.getItem('firstname') ));

$scope.user_name1 =  JSON.parse(localStorage.getItem('firstname'));
$scope.user_name = JSON.parse(localStorage.getItem('firstname'));
$scope.user_id =  JSON.parse(localStorage.getItem('user_id'));
EMP_id =JSON.parse(localStorage.getItem('user_id'));
$scope.admin_role = JSON.parse(localStorage.getItem('admin_role'));

user_full_name= JSON.parse(localStorage.getItem('firstname'))+" "+JSON.parse(localStorage.getItem('middlename'))+" "+JSON.parse(localStorage.getItem('lastname'));

$scope.college = JSON.parse(localStorage.getItem('college'));

$scope.email =JSON.parse( localStorage.getItem('email'));
email = JSON.parse(localStorage.getItem('email'));

$scope.mobile = JSON.parse(localStorage.getItem('mobile'));
phone = JSON.parse(localStorage.getItem('mobile'));

//  console.log(result.data.mobile);

$scope.middlename = JSON.parse(localStorage.getItem('middlename'));

$scope.lastname = JSON.parse(localStorage.getItem('lastname'));

$scope.middlename =JSON.parse(localStorage.getItem('middlename'));

$scope.lastname =JSON.parse(localStorage.getItem('lastname'));
$scope.courtesy =JSON.parse(localStorage.getItem('courtesy'));