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
String user = request.getParameter("t1");    
String pwd = request.getParameter("t2");
Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into COP(USERID,PASSWORD) VALUES ('"+user+"','"+pwd+"')");
    if (i > 0) {
        session.setAttribute("userid", user);
        session.setAttribute("password", pwd);
        out.print("Registration Successfull!");
    }
    else
    {
    	out.print("Registration not Successfull!");
    }
 %>       
</body>
</html>