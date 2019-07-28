<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="Front1.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="FRONT.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
function validate()
{
	if (document.login.text1.value=="")
	{
		alert("PLEASE ENTER YOUR Cop ID!");
		document.login.t1.focus();
		return false;
	}
	if (document.login.text2.value=="")
	{
		alert("PLEASE ENTER YOUR PASSWORD!");
		document.login.t2.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<%
String s1 = (String)session.getAttribute("copid");
String s2 = (String)session.getAttribute("pass");
%>
<div style="background-color:orange" align="center">
<h3><p style="text-decoration:underline; color:blue"><a href="policereg.jsp">For Registration click on Employees Registration</a></p>
<P style="text-decoration:underline"> IF YOU ARE ALREADY REGISTERED, LOGIN HERE!</i> </P></h3>
</div>
<form action="coploogindb.jsp" method="post" class="form" name="login" onsubmit="return validate();">
<h2 align="center" style="text-decoration:underline;color:red">Employees login</h2>
<table style="background-color:#99C; font-size:24px; position:relative; left:450px; top:50px; height:200px" width="400px">
<thead>
</thead>
<tbody>
<tr>
<td>Cop_id:</td>
<td><input type="text" name="copid"/>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="pass"/>
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="button1" value="LOGIN"/>
<input type="reset" name="button2" value="RESET"/></td>
</tr>
<tr>
<td colspan="2" align="right"><a href="login_help.jsp">Login Help>></a></td>
</tr>
</tbody>
<tfoot>
</tfoot>
</table>
</form>
<div align="center" style="background-color:#F00">
 All rights reserved. | Site best viewed with a resolution of 1024x768 (or higher) <a class="shl" href="http://cbi.nic.in/disclaimer.php">|Disclaimer</a> | 
</div>
</body>
</html>