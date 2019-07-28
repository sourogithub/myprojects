<?php
require_once 'connection.php';
// username and password sent from form
$username=$_POST['username'];
$password=$_POST['password'];
$sql="SELECT * FROM mytable WHERE username='$username' and password='$password'";
$result=$conn->query($sql);
$data = $result->fetch_array(MYSQLI_NUM);
return $data;
?>