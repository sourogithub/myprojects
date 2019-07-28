<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user = request.getParameter("copid");    
String pwd = request.getParameter("pwd");
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
 if ((session.getAttribute("copid") == null) || (session.getAttribute("pass") == "")) {
%>
<%@ include file="Front1.jsp" %> 
<div align="center">
You are not logged in<br/>
<a href="policelogin1.jsp">Please Login</a>
<h2>If you are not registered<a href='policereg.jsp'>Go to Registration.</a></h2>
	</div>
    <%@ include file="bottom.html" %>
<%
} 
else 
{
response.sendRedirect("police.jsp");
}
%>
</body>
</html>