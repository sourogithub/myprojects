<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
<?php
require_once 'connection.php';
$query = "SELECT * FROM student";
$result = $conn->query($query);
while($row = $result->fetch_array(MYSQLI_ASSOC))
{
$libid=$row['libid'] ;
$name= $row['stuname'] ;
$branch= $row['branch'] ;
$semester= $row['semester'] ;
$yearofadm= $row['yearofadm'];
$email=$row['email'];
$username= $row['username'];
$password= $row['password'];
}  


$admin="admin@soelibrary.com";
$sql="INSERT INTO student(Libid,regno,stuname,branch,semester,section,yearofadm)
VALUES('$libid','$regno','$name','$branch','$semester','$section','$yearofadm')";
$result="INSERT INTO studentlogin(logid,username,password,numbooks)
VALUES('$libid','$username','$password','')";
if (!mysqli_query($connection,$sql))
{
die('Error1: ' . mysqli_error($connection));
}
else if (!mysqli_query($connection
,$result))
{
die('Error2: ' . mysqli_error($connection));
}
else 
mail($email,"registrationdetails","you are registered pls login with ur email id and 
password","From: $admin");
echo"added 1 record";
mysqli_close($connection);

$result = mysqli_query($con,"SELECT * FROM student");
while($row = mysqli_fetch_array($result))
{
$libid=$row['libid'] ;
$name= $row['stuname'] ;
$branch= $row['branch'] ;
$semester= $row['semester'] ;
$yearofadm= $row['yearofadm'];
$email=$row['email'];
$username= $row['username'];
$password=$row['password'];
}
$sql=mysqli_query($con,"DELETE FROM student WHERE libid='$libid'");
mysqli_close($con); 
?>
    </body>
</html>
