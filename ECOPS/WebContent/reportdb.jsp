<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String report=request.getParameter("reportid");
String complain=request.getParameter("complain");
String file=request.getParameter("file");
String location=request.getParameter("location");
String country = request.getParameter("country");
String state = request.getParameter("state");
String city = request.getParameter("city");
String pincode = request.getParameter("pincode");
String user=(String)session.getAttribute("userid");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs=st.executeQuery("select COPID from POLICE where CITY='"+city+"'");
if(rs.next())
{
String copid=rs.getString(1);

Random ran = new Random(); 
int x = ran.nextInt();
int i=st.executeUpdate("insert into REPORTS(REPORT_ID,USERID,LOCATION,COMPLAIN,COUNTRY,STATE,CITY,PINCODE,COPID,FIR_NAME) VALUES ('" + report + "','" +user + "','" +location + "','" +complain + "','" + country + "','" + state + "','" + city + "','" + pincode + "','" + copid + "','" + report + "')");

if(i>0){
	out.print("Submission succeeded!");%>
<a href="user.jsp">go to view page. </a>
<%
	}
else {
	out.print("Submission Failed!");
    response.sendRedirect("Registered.jsp");
}
}
else
{
	out.println("No police is available in the city to solve your complain,we are extremely sorry!");%>
	<a href="Front.jsp">home</a>
	<%
}
}
catch(Exception e)
{
	out.print(e.toString());
}
%>

</body>
</html>