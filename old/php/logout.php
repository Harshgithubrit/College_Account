<?php

session_start();
unset($_SESSION['loggedIn']);
unset($_SESSION['user_id']);
unset($_SESSION['_id']);
$_SESSION['loggedIn']="false";
session_unset();
session_destroy();	

echo "true";

 ?>