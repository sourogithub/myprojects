<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="Front.html" %>   
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
String date="<script >document.write(today);</script>";
%>


</head>
<body>
<%session.getAttribute("userid");%>
<%session.getAttribute("date"); %>
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
<div style="background-color:pink; color:red" align="center">
<h2>Give your Complain here.</h2>
<form action="reportdb.jsp" method="post" name="complain" onsubmit="return date();">
<table>
<tbody>
<tr>
<textarea rows="4" cols="100" name="complain" placeholder="Write Your Complain Here" required></textarea>
</tr>
<tr>
<td>
<p>Report_id:
<input type="text" name="reportid" placeholder=Reportid  required>
</p>
</td>
<tr>
<td>
<h3>Please give details of the Complain in a file, Browse it. </h3>
</td>
</tr>
<tr>
<td>
<input type="file" name="file">
</td>
</tr>
</tr>
<tr>
<td style="text-decoration:underline ; color:blue">
<h2>location of crime:</h2>
</td>
</tr>
<tr>
<td>
<p>location area:
<input type="text" name="location" placeholder=location required>
</p>
</td>
</tr>
<tr>
<td>
<p>Country:<label>
  <select name="country">
    <option value="Ind">India</option>
    <option value="ban">Bangladesh</option>
    <option value="pak">Pakistan</option>
    <option value="sri">Srilanka</option>
    <option value="aus">Australia</option>
    <option value="cin">China</option>
    <option value="afgan">Afganisthan</option>
    <option value="Uk">United Kingdom</option>
    <option value="Us">United States</option>
  </select>
</label></p>
</td>
<td>
<p>Pin Code:<input type="text"  style="font-size:15px" placeholder="Pin Code" name="pincode" required></p>
</td>
</tr>
 <tr>
<td>
<p>State:<input type="text" style="font-size:15px" placeholder=State name="state"required></p>
</td>
<td>
City:<input type="text" style="font-size:15px" placeholder=City name="city" required>
</td>
</tr>
<tr>
<td>
<input type="submit" name="submit" value="SUBMIT">
<input type="reset" name="reset" value="Clear">
</td>
</tr>
</tbody>
</table>
</div>
</form>
<%@ include file="bottom.html" %>
</body>
</html>