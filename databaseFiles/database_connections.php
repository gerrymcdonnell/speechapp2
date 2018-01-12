<?php
$server='localhost';
$username='root';
$password='password';
$db_name='cake3restapi';



// Connecting to database as mysqli_connect("hostname", "username", "password", "database name");
//$con = mysqli_connect("localhost", "root", "", "employee");
$con = mysqli_connect($server, $username, $password, $db_name);

mysqli_set_charset($con,"utf8");
// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>