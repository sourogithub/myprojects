

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/View")
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
         HttpSession session=request.getSession();
    
      String pid= (String) session.getAttribute("pid");
      
try {
   Class.forName("oracle.jdbc.driver.OracleDriver");
   
   try {
       //creating connection with the database
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
        PreparedStatement ps = con.prepareStatement("SELECT * from comments where productid=?");
      ps.setString(1,pid);
        ResultSet rs = ps.executeQuery();
   while (rs.next()) {
      String x = rs.getString("cmnt");
      out.println("comments:"+x);
   }
   } catch (SQLException ex) {
	   out.print(ex.toString());     
      
   }
} catch (ClassNotFoundException ex) {
  
     out.println("klk");
}
		
	}

}
