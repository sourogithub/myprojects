

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Welcome")
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 
		 PrintWriter out = response.getWriter();

	        try {

	           
	            Class.forName("oracle.jdbc.driver.OracleDriver");

	            //creating connection with the database 
	            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
	            HttpSession session = request.getSession();
	           
	            
	            String user = (String) session.getAttribute("uid");
	           
	            session.setAttribute("uid",user);
	            PreparedStatement ps = con.prepareStatement("update member set LOGIN_STATUS=0 where USER_ID=?");
	            ps.setString(1, user);

	            int i = ps.executeUpdate();
	            if (i > 0) {
	                response.sendRedirect("welcome.jsp");
	            } else {
	                out.println("not ok");
	            }
	        } catch (Exception se) {
	            out.println("You are not sucessfully registered" + se);
	        }
	}

}
