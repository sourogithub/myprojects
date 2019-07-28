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
 <%if(session.getAttribute("copid") == null) {%>
<h3>You are not logged in.</h3>
<%}
 else
 {
 %>
 <h3>You are successfully logged in.</h3>
<h2>welcome  <%=session.getAttribute("copid") %></h2>
<%} %>
<a href="police.jsp"><input type="button" name='b1' value="show profile" ></a>
<a href="copcomplain.jsp"><input type="button" name='b2' value="Complains Registerd" ></a>
<a href="progress1.jsp"><input type="button" name='b3' value="Your Progress" ></a>
</div>
<%
String copid=(String)session.getAttribute("copid");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from PROGRESS where COP_ID='"+copid+"'");
if(rs.next())
{%>
<h1>Progresses :--> </h1>
<h1>_______________________</h1>
<h2>PROGRESS Id:  <%out.println(""+rs.getString(1));%></h2>
<h2>REPORT ID:  <%out.println(""+rs.getString(2));%></h2>
<h2>COPID:  <%out.println(""+rs.getString(3));%></h2>
<h2>PROGRESS:  <%out.println(""+rs.getString(4));%></h2>
<h2>PROGRESS NAME:  <%out.println(""+rs.getString(5));%></h2>
<h1>------------------------------------------------------------</h1>
<h2>____________________________________________________________</h2>
	
<%}
else
{
%><h1><% out.println("You have  submitted no progress.");%></h1>
<%}
con.close();
}
catch(Exception e)
{
	out.print(e.toString());
}
%>
<%@ include file="bottom.html" %>
</body>
</html>