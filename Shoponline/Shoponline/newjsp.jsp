<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>

<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%String image=(String)session.getAttribute("name");%>
    <body>
    <% 
          String user = (String) session.getAttribute("uid");%>
        
        <form method="post" action="Details">
       
        <%@ page import ="java.sql.*" %>
<%

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from product where image='"+image+"'");
while(rs.next())
{
out.println("<div><h4>product id:"+rs.getString("productid")+"</h4>");
out.println("<h4>product name:"+rs.getString("productname")+"</h4>");
out.println("<h4>price:"+rs.getString("price")+"</h4>");
out.println("<td><h6><img src='images/"+rs.getString("image")+"'></h6></td>");
out.println("<h4>product details:"+rs.getString("details")+"</h4>");
session.setAttribute("pid",rs.getString("productid"));
session.setAttribute("pname",rs.getString("productname"));
session.setAttribute("price",rs.getInt("price"));
session.setAttribute("image",rs.getString("image"));
session.setAttribute("details",rs.getString("details"));
}
} catch (SQLException ex) {
out.print(ex.toString());    
}
%>
   
T
  <a href="purchase.jsp"> <input type="button" value="buy"/></a>
  </form>
   <form method="post" action="Comment">
   <% session.getAttribute("pid");%>
        comments:<input type="text" name="comment" /><br/> 
        <input type="submit" value="add comment" />
        </form> 
         <form method="post" action="View">
         <% session.getAttribute("pid");%>
         <input type="submit" value="view comment" />  
         </form>
   <% if(user!=null)
	     {%>
        	<form method="post" action="Logout">
        	<input type="submit" value="logout" />
        	</form>

	    <%}%>     
        
    </body>
</html>
