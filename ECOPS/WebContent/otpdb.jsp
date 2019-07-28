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
String user=(String)session.getAttribute("userid");
String email=(String)session.getAttribute("email");
String pwd = request.getParameter("pwd");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
Statement st = con.createStatement();
int i=st.executeUpdate("UPDATE PUBLICUSER SET PASSWORD="+pwd+" WHERE USERID='"+user+"'");
		 if(i>0){ 
        session.setAttribute("userid", user);
        session.setAttribute("password", pwd);
        response.sendRedirect("publiclogin.jsp");
        out.print("Registration Successfull!"+"<a href='publiclogin.jsp'>Go to Login</a>");
    }
    else {
    	out.print("Registration Failed!");
        response.sendRedirect("Register.jsp");
    }
    }
    catch(Exception e)
    {
    	out.print(e.toString());
    }
%>
</body>
</html>