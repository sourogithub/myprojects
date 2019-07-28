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
background-color:#0FF;
}
#r
{
text-align:center;
}
</style>
<script type="text/javascript">
function click()
{
	String user=rs.getString(4);
	session.setAttribute("userid", user);
	
}
</script>
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
ResultSet rs= st.executeQuery("select * from member where status=0");


out.println("<div id=r><h1>Registered member</h1></div>");
out.println("<h2>_________________________________________________________________________________________________________________________</h2>");
out.println("<table>");
out.println("<tr>");
out.println("<th><h6>Firstname </h6></th>");
out.println("<th><h6>Secondname</h6></th>");
out.println("<th><h6>Email </h6></th>");
out.println("<th><h6>Userid </h6></th>");
out.println("<th><h6>Password</h6></th>");


out.println("</tr>");
 while(rs.next())
{
out.println("<tr>");
out.println("<td><h6>"+rs.getString(1)+"</h6></td>");
out.println("<td><h6>"+rs.getString(2)+"</h6></td>");
out.println("<td><h6>"+rs.getString(3)+"</h6></td>");
out.println("<td><h6>"+rs.getString(4)+"</h6></td>");
out.println("<td><h6>"+rs.getString(5)+"</h6></td>");

%>

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
</body>
</html>