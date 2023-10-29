<?php 
$DB_HOST = 'localhost';
$DB_USER = 'root';
$DB_PASS = '';
$DB_NAME = 'MJGE_Collage_ERP';
$mysqli =  mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

// Check connection
if ($mysqli->connect_error) {
    die(" Database Connection failed: " . $mysqli->connect_error);
  }else{
 
  }
?>
