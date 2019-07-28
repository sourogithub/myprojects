<%@ page import="java.io.*" %>
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
String Pid= request.getParameter("id");
String Pdate=(String) session.getAttribute("date");
String Progress= request.getParameter("progress");
String Pname= request.getParameter("id");
String Preport= request.getParameter("report");
//InputStream inputStream = null;
//Part filePart = request.getPart("report");
//if (filePart != null) {
    // prints out some information for debugging
    //out.println(filePart.getName());
    //out.println(filePart.getSize());
    //out.println(filePart.getContentType());
     
    // obtains input stream of the upload file
    //inputStream = filePart.getInputStream();
//}
String copid= (String)session.getAttribute("copid");
String reportid=(String)session.getAttribute("reportid");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
String sql ="insert into PROGRESS VALUES(?,?,?,?,?)";
PreparedStatement st = con.prepareStatement(sql);
st.setString(1,Pid);

st.setString(2,reportid);
st.setString(3,copid);
st.setString(4,Progress);
st.setString(5,Pname);
//if (inputStream != null) {
//st.setBinaryStream(7,inputStream);
//}
int i= st.executeUpdate();
if(i>0)
    {%>
	<%@ include file="Front.html" %>
	 <div align="center">
	<h2>welcome  <%=session.getAttribute("copid") %></h2>
	<a href="police.jsp"><input type="button" name='b1' value="show profile" ></a>
	<a href="copcomplain.jsp"><input type="button" name='b2' value="Complains Registerd" ></a>
	<a href="progress1.jsp"><input type="button" name='b3' value="Your Progress" ></a>
	</div>
	<%out.print("Submission succeeded!");
	}
else {
	out.print("Submission Failed!");
    response.sendRedirect("progress.jsp");
}

}
catch(Exception e)
{
	out.print(e.toString());
}
%>

</body>
</html>