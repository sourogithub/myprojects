<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String user = request.getParameter("copid");    
String pwd = request.getParameter("pass");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
int i=st.executeUpdate("select * from POLICE where COPID='"+user+"' and PASSWORD='"+pwd+"'");
if(i>0){ 
    session.setAttribute("copid", user);
    session.setAttribute("pass", pwd);
    response.sendRedirect("success2.jsp");
    
}
else {
	%>
	<%=session.getAttribute("copid")%>
	<%=request.getParameter("pass") %>
	<%@ include file="Front1.jsp" %> 
	<div align="center">
	<h2>Invalid copid and password.</h2>
	<h2>login Failed!<a href='policelogin1.jsp'>Go to login</a></h2>
	<h2>If you are not registered<a href='policereg.jsp'>Go to Registration.</a></h2>
	</div>
    <%@ include file="bottom.html" %>
<%}
}
catch(Exception e)
{
	out.print(e.toString());
}
%>
</body>
</html>