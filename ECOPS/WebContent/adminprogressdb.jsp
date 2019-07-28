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
 <%@ include file="adminview.jsp" %>
<%
String reportid=(String)session.getAttribute("reportid");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from PROGRESS where REPORT_ID='"+reportid+"'");
if(rs.next())
{%>
<h1>Progresses :--> </h1>
<h1>__________________</h1>
<h2>PROGRESS Id:  <%out.println(""+rs.getString(1));%></h2>
<h2>REPORT ID:  <%out.println(""+rs.getString(2));%></h2>
<h2>COPID:  <%out.println(""+rs.getString(3));%></h2>
<h2>PROGRESS:  <%out.println(""+rs.getString(4));%></h2>
<h2>PROGRESS NAME:  <%out.println(""+rs.getString(5));%></h2>
<td><a href='.jsp'><input type="submit" value="Verify PROGRESS"></a></td>
<td><a href='.jsp'><input type="submit" value="Delete PROGRESS"></a></td>
<h1>------------------------------------------------------------</h1>
<h2>____________________________________________________________</h2>	
<%}
else
{
%><h1><% out.println(" Still No Progress !");%></h1>
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