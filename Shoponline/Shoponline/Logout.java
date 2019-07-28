

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
	        response.setContentType("text/html");

	        try {

	            //loading drivers for mysql
	            Class.forName("oracle.jdbc.driver.OracleDriver");

	            //creating connection with the database 
	            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
	            HttpSession session = request.getSession();
	            String user = (String) session.getAttribute("uid");
	            PreparedStatement ps = con.prepareStatement("update member set LOGIN_STATUS=1 where USER_ID=?");
	            ps.setString(1, user);

	            int i = ps.executeUpdate();
	            if (i > 0) {
	                out.print("You are successfully logged out!");
	                     request.getRequestDispatcher("login.jsp").include(request, response);  
	              
	            
	            session.invalidate();
	            }

	           
	        } catch (ClassNotFoundException ex) {
	        	 out.print(ex.toString());    
	            out.print("You are not successfully logged out!");
	        } catch (SQLException ex) {
	        	 out.print(ex.toString());    
	            out.print("You are not successfully logged out no");
	        }
	}

}
