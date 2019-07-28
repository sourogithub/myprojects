<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="Front1.jsp" %> 
 <%@ page import ="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<script type="text/javascript">

function validate()
{
var number = /^[0-9]+$/;
var letter= /^[a-zA-Z]+$/;  
var x=document.form1.e-mail.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf("."); if(document.form1.pwd.value.length > 5)
{
	return true;
	}
	else{
		document.form1.pwd.focus();
	alert("password must be atleast 6 characters long");
	return false;
	}
	} 
</script>
</head>
<body>
<div style="background-color:white" align="center">
<form  action="otpdb.jsp" method="post" style="font-size:25px" name="form1"  align="center" onsubmit="return validate();" >
<table align="center">
<tbody>
<tr>
<td>
 Enter new Password:<input type="text" style="font-size:15px"  placeholder=password name="pwd" required>
</td>
</tr>
<tr>
<td>
<input type="submit" value=submit>
</td>
</tr>
</tbody>
</table>
</form>
</div>
</body>
</html>