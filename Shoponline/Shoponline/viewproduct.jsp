<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table,th,td{
border: 1px solid purple;
align: center;
text-align: centrer;
padding:15px;
background-color:#0bf;
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
  
<form method="post" action="Productdelete">
insert the PRODUCTID you want to delete:<input type="text" name="adminuser"/>
<input type="submit" value="delete"/>
<p>$(message)</p>
<% 

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from product");
out.println("<div id=r><h1>Products in the Store</h1></div>");
out.println("<h2>_________________________________________________________________________________________________________________________</h2>");
out.println("<table>");
out.println("<tr>");
out.println("<th><h6>product id</h6></th>");
out.println("<th><h6>productname</h6></th>");
out.println("<th><h6>price </h6></th>");
out.println("<th><h6>image </h6></th>");
out.println("<th><h6>details</h6></th>");
out.println("<th><h6>product type</h6></th>");
out.println("<th><h6>quantity</h6></th>");
out.println("<th><h6>brand</h6></th>");
out.println("<th><h6>discount</h6></th>");

while(rs.next())
{
out.println("<tr>");
out.println("<td><h6>"+rs.getString(1)+"</h6></td>");
out.println("<td><h6>"+rs.getString(2)+"</h6></td>");
out.println("<td><h6>"+rs.getInt(3)+"</h6></td>");
out.println("<td><h6><img src=images/"+rs.getString(4)+"></h6></td>");
out.println("<td><h6>"+rs.getString(5)+"</h6></td>");
out.println("<td><h6>"+rs.getString(6)+"</h6></td>");
out.println("<td><h6>"+rs.getInt(7)+"</h6></td>");
out.println("<td><h6>"+rs.getString(8)+"</h6></td>");
out.println("<td><h6>"+rs.getInt(10)+"</h6></td>");

%>
</form>
<%
out.println("</tr>");
}
 out.println("</table>");
}
 catch (SQLException ex) {
out.print(ex.toString());    
}
%>

 
       
</body>
</html>