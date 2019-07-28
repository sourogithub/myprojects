<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table,th,td{
border: 1px solid red;
align: center;
text-align: centrer;
padding:15px;
background-color:#CF0;
}
#r
{
text-align:center;
}
</style>
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
<a href="copcomplain.jsp"><input type="button" name='b2' value="Complains Registered" ></a>
<a href="progress1.jsp"><input type="button" name='b3' value="Your Progress" ></a>
</div>
<% 
String user=(String)session.getAttribute("copid");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from REPORTS where COPID='"+user+"'");

if(rs.next())
{%>
<h1>Complains </h1>	
<%}
else
{
out.println("There is no complain submitted.");	
}
out.println("<div id=r><h1>Reports Submitted</h1></div>");
out.println("<h2>_________________________________________________________________________________________________________________________</h2>");
out.println("<table>");
out.println("<tr>");
out.println("<th><h6>REPORTId </h6></th>");
out.println("<th><h6>USERID</h6></th>");
out.println("<th><h6>LOCATION </h6></th>");
out.println("<th><h6>COMPLAIN </h6></th>");
out.println("<th><h6>COUNTRY</h6></th>");
out.println("<th><h6>STATE</h6></th>");
out.println("<th><h6>CITY</h6></th>");
out.println("<th><h6>PINCODE</h6></th>");
out.println("<th><h6>FIRNAME</h6></th>");
out.println("<th><h6>REPORT DATE</h6></th>");
out.println("</tr>");
while(rs.next())
{
out.println("<tr>");
out.println("<td><h6>"+rs.getString(1)+"</h6></td>");
out.println("<td><h6>"+rs.getString(2)+"</h6></td>");
out.println("<td><h6>"+rs.getString(3)+"</h6></td>");
out.println("<td><h6>"+rs.getString(4)+"</h6></td>");
out.println("<td><h6>"+rs.getString(5)+"</h6></td>");
out.println("<td><h6>"+rs.getString(6)+"</h6></td>");
out.println("<td><h6>"+rs.getString(7)+"</h6></td>");
out.println("<td><h6>"+rs.getString(8)+"</h6></td>");
out.println("<td><h6>"+rs.getString(10)+"</h6></td>");
out.println("<td><h6>"+rs.getString(11)+"</h6></td>");%>
<%session.setAttribute("reportid",rs.getString(1));%>
<td><a href="progress.jsp"><input type="submit" value="Submit Progress"></a></td>
<%
out.println("</tr>");
}
 out.println("</table>");
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