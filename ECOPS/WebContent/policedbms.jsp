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
    String user = request.getParameter("copid");    
    String pwd = request.getParameter("pwd");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String age= request.getParameter("age");
    String sex= request.getParameter("sex");
    String dob = request.getParameter("dob");
    String country = request.getParameter("country");
    String state = request.getParameter("state");
    String city = request.getParameter("city");
    String pincode = request.getParameter("pincode");
    String ps = request.getParameter("ps");
    String email = request.getParameter("e-mail");
    String mobileno = request.getParameter("mobileno");
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into POLICE(COPID,PASSWORD,FIRSTNAME,LASTNAME,AGE,SEX,DATE_OF_BIRTH,COUNTRY,STATE,CITY,POLICESTATION,EMAIL,MOBILE_NO,PINCODE) VALUES ('" + user + "','" + pwd + "','" + fname + "','" + lname + "','" + age + "','" + sex + "','" + dob + "','" + country + "','" + state + "','" + city + "','" + ps + "','" + email + "','" + mobileno + "','" + pincode + "')");
    if(i > 0){
        session.setAttribute("copid",user);
        session.setAttribute("pass",pwd);
        response.sendRedirect("policelogin.jsp");
       out.print("Registration Successfull!"+"<a href='policelogin.jsp'>Go to Login</a>");
    }
    else{
        response.sendRedirect("policereg.jsp");
    }
    }
    catch(Exception e)
    {
    	out.print(e.toString());
    }
%>
</body>
</html>