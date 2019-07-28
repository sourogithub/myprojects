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
background-color:white;
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
ResultSet rs= st.executeQuery("select * from PUBLICUSER");


out.println("<div id=r><h1>Registered Person </h1></div>");
out.println("<h2>_________________________________________________________________________________________________________________________</h2>");
out.println("<table>");
out.println("<tr>");
out.println("<th><h6>USERId </h6></th>");
out.println("<th><h6>PASSWORD </h6></th>");
out.println("<th><h6>FIRSTNAME </h6></th>");
out.println("<th><h6>LASTNAME </h6></th>");
out.println("<th><h6>AGE </h6></th>");
out.println("<th><h6>SEX</h6></th>");
out.println("<th><h6>DATE_OF_BIRTH</h6></th>");
out.println("<th><h6>COUNTRY</h6></th>");
out.println("<th><h6>STATE</h6></th>");
out.println("<th><h6>CITY</h6></th>");
out.println("<th><h6>PROFESSION</h6></th>");
out.println("<th><h6>EMAIL</h6></th>");
out.println("<th><h6>MOBILE_NO</h6></th>");
out.println("<th><h6>PINCODE</h6></th>");
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
out.println("<td><h6>"+rs.getString(12)+"</h6></td>");
out.println("<td><h6>"+rs.getString(13)+"</h6></td>");
out.println("<td><h6>"+rs.getString(14)+"</h6></td>");
String user=rs.getString(1);
session.setAttribute("userid", user);
String pass=rs.getString(2);
session.setAttribute("pass", pass);
String fname=rs.getString(3);
session.setAttribute("fn", fname);
String lname=rs.getString(4);
session.setAttribute("ln", lname);
String age=rs.getString(5);
session.setAttribute("age", age);
String sex=rs.getString(6);
session.setAttribute("sex", sex);
String dob=rs.getString(7);
session.setAttribute("dob", dob);
String country=rs.getString(8);
session.setAttribute("coun", country);
String state=rs.getString(9);
session.setAttribute("st", state);
String city=rs.getString(10);
session.setAttribute("city", city);
String prof=rs.getString(11);
session.setAttribute("prof", prof);
String email=rs.getString(12);
session.setAttribute("email", email);
String mobileno=rs.getString(13);
session.setAttribute("mno", mobileno);
String pin=rs.getString(14);
session.setAttribute("pin", pin);
%>
 <td><a href='ecopsdbms2.jsp'><input type="submit" value="Approve"></a></td>
<td><a href='publicdb.jsp'><input type="submit" value="DELETE"></a></td>
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