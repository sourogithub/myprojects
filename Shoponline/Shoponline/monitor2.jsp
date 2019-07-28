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
response.setContentType("text/html");
try
{
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();

ResultSet rs= st.executeQuery("select image from product where image='monitor2.jpg' ");

while(rs.next())
{

String s=rs.getString(1);
session.setAttribute("name", s);
}
request.getRequestDispatcher("/newjsp.jsp").forward(request, response);
}
catch(Exception e)
{}
%>
</body>
</html>