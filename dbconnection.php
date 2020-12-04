<?php
error_reporting(0);
// Create connection

$server = "localhost";
$username = "root";
$password = "varun";
$dbname = "agribuzz";


$con=mysqli_connect("$server","$username","$password","$dbname");

// Check connection
if (mysqli_connect_errno($con))
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>