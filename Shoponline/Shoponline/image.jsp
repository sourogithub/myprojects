<%@page import="sun.net.www.content.image.png"%>
<%@page import="sun.net.www.content.image.png"%>
<html>
<body>
    <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>

 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%@ page import="java.sql.*"%>
<% 
Blob image = null;
Connection con = null;

ResultSet rs = null;
OutputStream img;
String image1=null;
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "tamoghna");
 PreparedStatement ps = con.prepareStatement("select * from product where price=100");
    rs=ps.executeQuery();

  while(rs.next()){
      String s=rs.getString(1);
     out.println(s);
}
}
catch (Exception e) {
out.println("DB problem"); 

}


%>
 <table border="2">
  <tr><th>DISPLAYING IMAGE</th></tr>
  <tr><td>Image 2</td></tr>
  <tr><td>

 <%
     try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
 PreparedStatement ps = con.prepareStatement("select * from product ");
    rs=ps.executeQuery();

 while(rs.next()){

     
byte barray[]=rs.getBytes(4);
response.setContentType("image");
img=response.getOutputStream();
img.write(barray);
img.flush();
img.close();
 }
}
catch (Exception e) {
out.println("DB problem"); 

}
%>
 </td></tr>
 </table>

</body>
</html>