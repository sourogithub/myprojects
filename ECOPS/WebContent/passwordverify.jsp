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
var dotposition=x.lastIndexOf("."); 
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
{
	document.form1.e-mail.focus();
alert("please give valid e-mail number");
return false;
}
else
{
return true;
}
}
</script>
</head>
<body>
<div style="background-color:white" align="center">
<form  action="verifydb.jsp" method="post" style="font-size:25px" name="form1"  align="center" onsubmit="return validate();" >
<table align="center">
<tbody>
<tr>
<td>
 User_id:<input type="text" style="font-size:15px"  placeholder=userid name="userid" required>
</td>
</tr>
<tr>
<td>
 Email no:<input type="text" style="font-size:15px"  placeholder=Email name="email" required>
</td>
</tr>
<tr>
<td>
<input type="submit" value="Verify"></a>
</td>  
</tr>
</tbody>
</table>
</form>
</div>
</body>
</html>