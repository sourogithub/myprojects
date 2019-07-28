<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Register form</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
</head>


<body>
<%@ include file="Canvas.jsp" %>
<div class="container">

<img alt="#" src="images/login-button-png-18015.png">
    <form method="post" action="Login">
    <p> ${message}</p>
    <div class="form-id" align="center">
    
        <input type="text" name="userid" placeholder="Enter Username"/><br/>
        </div><div class="form-pass" align="center"><input type="password" name="pass" placeholder="Enter Password"/><br/>
        </div><input type="submit" class="btn-login" value="login" /><br>
        <a href="forgetpass.jsp">Forget Password?</a>
        <h4>if u are not already register. click <a href="registerpage.jsp">register</a></h4>
    </form>
    </div>
</body>
</html>