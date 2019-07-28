

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Forget extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
	        String uid = request.getParameter("userid");
	        String email = request.getParameter("email");
	        String pass = request.getParameter("pass");
	        if (uid == "" || email == "" || pass == "") {
	            request.setAttribute("message", "all field must be filled");

	            request.getRequestDispatcher("/forgetpass.jsp").forward(request, response);

	        } else {
	            try {

	                //loading drivers for mysql
	                Class.forName("oracle.jdbc.driver.OracleDriver");

	                //creating connection with the database 
	                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");

	                PreparedStatement ps = con.prepareStatement("update member set pass=?  where USER_ID=? and email=? and status=1 and login_status=1");
	                ps.setString(1, pass);
	                ps.setString(2, uid);
	                ps.setString(3, email);
	                ResultSet rs = ps.executeQuery();
	                while (rs.next()) {
	                    
	                        HttpSession session=request.getSession();
	                        session.setAttribute("uid",uid);
	                        
	                        request.getRequestDispatcher("/Welcome").forward(request, response);
	                    

	                    
	                }

	            } catch (Exception se) {
	                out.println("You are not sucessfully registered" + se);
	            }
    
	}

}
}
