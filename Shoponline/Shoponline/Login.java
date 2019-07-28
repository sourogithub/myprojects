

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
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
	        String uid = request.getParameter("userid");
	        String pass = request.getParameter("pass");
	        if (uid == "" || pass == "") {
	            request.setAttribute("message", "all field must be filled");

	            request.getRequestDispatcher("/login.jsp").forward(request, response);

	        } else {
	            try {

	                //loading drivers for mysql
	                Class.forName("oracle.jdbc.driver.OracleDriver");

	                //creating connection with the database 
	                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");

	                PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) from member where USER_ID=? and pass=? and status=1 and login_status=1");
	                ps.setString(1, uid);
	                ps.setString(2, pass);
	                ResultSet rs = ps.executeQuery();
	                while (rs.next()) {
	                    int x = rs.getInt("count(*)");

	                    if (x >0) {
	                        HttpSession session=request.getSession();
	                        session.setAttribute("uid",uid);
	                        
	                        request.getRequestDispatcher("/Welcome").forward(request, response);
	                    } else {
	           request.setAttribute("message", "incredential login");
	           request.getRequestDispatcher("/login.jsp").forward(request, response);

	                    }
	                }

	            } catch (Exception se) {
	                out.println("You are not sucessfully registered" + se);
	            }
    
	}

}
}
