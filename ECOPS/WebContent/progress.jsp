<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();

if(dd<10) {
    dd='0'+dd
} 

if(mm<10) {
    mm='0'+mm
} 

today = mm+'/'+dd+'/'+yyyy;
//document.write("Today's date is :" +today);
</script>
<%
String date="<script>document.write(today)</script>";
%>
</head>
<body>
<%
session.setAttribute("date",date); 
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>
<%session.getAttribute("date"); %>
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
<div align="justify" style="background-color:seagreen">
<form action="progressdb.jsp" name="progress" method="post">
<h3>progress_id:<input type="text" name="id" required></h3>
<h2>Write Progress:</h2><textarea rows="6" cols="100" name="progress" placeholder="progress" required></textarea> 
<h2>Please submit progress report in a file,browse it.</h2>
<input type="file" name="report" >
<input type="submit" value="submit">
<input type="reset" value="clear">
</form> 
</div>
<%@ include file="bottom.html" %>
</body>
</html>