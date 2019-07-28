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
    String user = (String)session.getAttribute("userid");
    String pwd = (String)session.getAttribute("pass");
    String fname = (String)session.getAttribute("fn");
    String lname = (String)session.getAttribute("ln");
    String age= (String)session.getAttribute("age");
    String sex= (String)session.getAttribute("sex");
    String dob = (String)session.getAttribute("dob");
    String country = (String)session.getAttribute("coun");
    String state = (String)session.getAttribute("st");
    String city = (String)session.getAttribute("city");
    String pincode = (String)session.getAttribute("prof");
    String profession = (String)session.getAttribute("email");
    String email = (String)session.getAttribute("mno");
    String mobileno = (String)session.getAttribute("pin");
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
    Statement st = con.createStatement();
     int i=st.executeUpdate("insert into ECOPS2(USERID,PASSWORD,FIRSTNAME,LASTNAME,AGE,SEX,DATE_OF_BIRTH,COUNTRY,STATE,CITY,PROFESSION,EMAIL,MOBILE_NO,PINCODE) VALUES ('" + user + "','" + pwd + "','" + fname + "','" + lname + "','" + age + "','" + sex + "','" + dob + "','" + country + "','" + state + "','" + city + "','" + profession + "','" + email + "','" + mobileno +  "','" + pincode + "')");
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