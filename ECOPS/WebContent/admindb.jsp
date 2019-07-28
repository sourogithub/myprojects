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
String user = request.getParameter("login");    
String pwd = request.getParameter("pass");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
int i=st.executeUpdate("select * from ADMIN where LOGIN='"+user+"' and PASSWORD='"+pwd+"'");
if(i>0){ 
    session.setAttribute("login", user);
    session.setAttribute("pass", pwd);
    response.sendRedirect("adminview.jsp");
    
}
else {response.sendRedirect("admin.jsp");
	}
}
catch(Exception e)
{
	out.print(e.toString());
}
%>
</body>
</html>