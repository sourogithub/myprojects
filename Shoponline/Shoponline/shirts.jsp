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
 <%@ include file="Tops.jsp" %>
<% 

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from product where ptype='men wears' and brand='shirts'");
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