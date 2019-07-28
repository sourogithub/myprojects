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
         $sql = "CREATE TABLE Mytable ( 
                 Forename VARCHAR(30) NOT NULL, 
                 Surname VARCHAR(30) NOT NULL,
                 Username VARCHAR(30) NOT NULL,
                 PASSWORD VARCHAR(20) NOT NULL,
                 AGE INT(3) NOT NULL,
                 Email  VARCHAR(50) NOT NULL,
                 TYPE  VARCHAR(10) NOT NULL,
                 CARDS INT(1) DEFAULT 5 
                 )"; 
         
         if ($conn->query($sql) === TRUE)
                 
         {
             echo 'table Mytable created successfully'."<br/>";
         }
         else 
             {
             echo 'table Mytable not created'.$conn->error;
             }    
        
        ?>
    </body>
</html>
