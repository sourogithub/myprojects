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
String user = (String)session.getAttribute("userid");    
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
int i=st.executeUpdate("update member set status=0 where USER_ID='"+user+"'");
if(i>0){ 
    
    response.sendRedirect("member.jsp");
    
}
else {
	%>
	<%@ include file="adminview.jsp" %> 
	<div align="center">
	</div>
<%}
}
catch(Exception e)
{
	out.print(e.toString());
}
%>
</body>
</html>