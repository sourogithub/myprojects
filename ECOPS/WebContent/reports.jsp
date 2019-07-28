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
  <%@ include file="adminview.jsp" %>
<% 
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from REPORTS");


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
out.println("<th><h6>COPID</h6></th>");
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
out.println("<td><h6>"+rs.getString(9)+"</h6></td>");
out.println("<td><h6>"+rs.getString(10)+"</h6></td>");
out.println("<td><h6>"+rs.getString(11)+"</h6></td>");
String report=rs.getString(1);
session.setAttribute("reportid", report);%>
<td><a href='.jsp'><input type="submit" value="Approve"></a></td>
<td><a href='repdb.jsp'><input type="submit" value="DELETE"></a></td>
<td><a href='adminprogressdb.jsp'><input type="submit" value="CHECK PROGRESS"></a></td>
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