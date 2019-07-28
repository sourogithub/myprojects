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
 <%@ include file="Front.html" %>
 <div align="center">

 <%if(session.getAttribute("userid") == null) {%>
<h3>You are not logged in.</h3>
<%}
 else
 {
 %>
 <h3>You are successfully logged in.</h3>
<h2>welcome  <%=session.getAttribute("userid") %></h2>
<%} %>
<a href="user.jsp"><input type="button" name='b1' value="show profile" ></a>
<a href="Registered.jsp"><input type="button" name='b2' value="new complain" ></a>
<a href="complain.jsp"><input type="button" name='b3' value="your complains " ></a>
</div>
<%
String user=(String)session.getAttribute("userid");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from PUBLICUSER where USERID='"+user+"'");
while(rs.next())
{%>
<h2>userid:  <%out.println(""+rs.getString(1));%></h2>
<h2>Password:  <%out.println(""+rs.getString(2));%></h2>
<h2>firstname:  <%out.println(""+rs.getString(3));%></h2>
<h2>lastname:  <%out.println(""+rs.getString(4));%></h2>
<h2>age:  <%out.println(""+rs.getString(5));%></h2>
<h2>sex:  <%out.println(""+rs.getString(6));%></h2>
<h2>dob:  <%out.println(""+rs.getString(7));%></h2>
<h2>country:  <%out.println(""+rs.getString(8));%></h2>
<h2>state:  <%out.println(""+rs.getString(9));%></h2>
<h2>city:  <%out.println(""+rs.getString(10));%></h2>
<h2>profession:  <%out.println(""+rs.getString(11));%></h2>
<h2>email:  <%out.println(""+rs.getString(12));%></h2>
<h2>mobile-no:  <%out.println(""+rs.getString(13));%></h2>
<h2>pincode:  <%out.println(""+rs.getString(14));%></h2>
<%}
con.close();
}
catch(Exception e)
{
	out.print(e.toString());
}
%>
<a href="edit.jsp"><input type="button" name='b1' value="edit profile" ></a>
<%@ include file="bottom.html" %>
</body>
</html>