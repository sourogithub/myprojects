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
<%

String user= (String)session.getAttribute("uid");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from shop where user_id='"+user+"'");
while(rs.next())
{
	out.println("<div><h4>product id:"+rs.getString("productid")+"</h4>");
	out.println("<h4>product name:"+rs.getString("productname")+"</h4>");
	out.println("<h4>price:"+rs.getString("price")+"</h4>");
	out.println("<h4>photo:<img src=images/"+rs.getString("image")+"onclick=return click()'></h4>");
	out.println("<h4>product details:"+rs.getString("details")+"</h4>");
out.println("<tr><a href=purchase.jsp><input type=button value=buy></a></tr></div>");
session.setAttribute("pid",rs.getString("productid"));
session.setAttribute("pname",rs.getString("productname"));
session.setAttribute("price",rs.getInt("price"));
session.setAttribute("image",rs.getString("image"));
session.setAttribute("details",rs.getString("details"));
session.setAttribute("uid",rs.getString("user_id"));
out.println("<tr><a href=purchase.jsp><input type=button value=buy></a></tr></div>");
out.println("<tr><a href=deletecart.jsp><input type=button value=delete from cart></a></tr></div>");
}
out.println("<tr><a href=purchase.jsp><input type=button value=buyall></a></tr></div>");
} catch (SQLException ex) {
out.print(ex.toString());    
}
%>
<form method="post" action="Comment">
        comments:<input type="text" name="comment" /><br/>
        <a href="View"><input type="button" value="view comment"/></a> 
        <input type="submit" value="add comment" />
        </form>
<% 
          
        if(user!=null)
	     {%>
        	<form method="post" action="Logout">
        	<input type="submit" value="logout" />
        	</form>

	    <%}%>
 
       
</body>
</html>