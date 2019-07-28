<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>Register form</title>
        <link rel="stylesheet" type="text/css" href="./css/registration.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    </head>
 
 
    <body>
    <%@ include file="Canvas.jsp" %>
    <div class="container">
   
    <img src="./images/reg.png">
        <form method="post" action="Register">
        <div class="form-input">
         <p> ${message}</p>
            <input type="text" placeholder="First Name" name="fname" /><br/>
            </div>
            <div class="form-input"><input type="text" placeholder="Last Name" name="lname"/><br/>
            </div>
           <div class="form-input"> <input type="email" placeholder="Email" name="email"/><br/>
           </div>
           <div class="form-input"> <input type="text" placeholder="User Id" name="userid"/><br/>
           </div>
           <div class="form-input"> <input type="password" Placeholder="Password" name="pass"/><br/>
            </div>
            <input type="submit" class="btn-reg" value="Register"/>
            <h4>if u are already registered.click <a href="login.jsp">login</a></h4>
        </form></div>
    </body>
</html>