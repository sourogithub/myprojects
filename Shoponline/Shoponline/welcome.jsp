<%-- 
    Document   : welcome
    Created on : Apr 22, 2017, 1:29:51 PM
    Author     : radha_krishna
--%>


<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        
    </head>

<body>
  <%@ include file="Tops.jsp" %>

<%

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from product");
while(rs.next())
{
String img= rs.getString("pageurl");
out.println("<div><h4><a href='"+img+"'><img src='images/"+rs.getString("image")+"'></a></h4></div>");


}
} catch (SQLException ex) {
out.print(ex.toString());    
}
%>

        
 <%@ include file="bottom.jsp" %>  
    </body>
</html>
