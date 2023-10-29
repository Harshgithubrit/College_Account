<?php 
$DB_HOST = 'localhost';
$DB_USER = 'root';
$DB_PASS = '';
$DB_NAME = 'mjge_collage_erp';
$mysqli =  mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

// Check connection
if ($mysqli->connect_error) {
    die(" Database Connection failed: " . $mysqli->connect_error);
  }else{
 
  }
?>
