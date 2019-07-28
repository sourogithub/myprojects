<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="Front1.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1 = (String)session.getAttribute("userid");
String s2 = (String)session.getAttribute("password");
%>
<div class="" align="center">
<h3><p style="color:#F00; text-decoration:underline"><i>You Are Successfully REGISTERED.</p>
<P style="text-decoration:underline">LOGIN HERE!</i></P></h3>
</div>
<form action="Success1.jsp" method="post" class="form" name="login" onsubmit="return validate();">
<table style="background-color:#99C; font-size:24px; position:relative; left:450px; top:50px; height:200px" width="400px">
<thead>
</thead>
<tbody>
<tr>
<td>User_id:</td>
<td><input type="text" name="t1" required value="<%=session.getAttribute("userid")%>" />
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="t2" required value= "<%=session.getAttribute("password") %>" />
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="b1" value="LOGIN"/>
<input type="reset" name="b2" value="RESET"/></td>
</tr>
<tr>
<td colspan="2" align="right"><a href="login_help.jsp">Login Help>></a></td>
</tr>
</tbody>
<tfoot>
</tfoot>
</table>
</form>
<%@ include file="bottom.html" %>
</body>
</html>