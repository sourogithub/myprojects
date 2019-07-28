

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

/**
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
        String user = (String) session.getAttribute("uid");
        String product = (String) session.getAttribute("pid");
           String cmnt = request.getParameter("comment");
           if(user==null)
  	     {
  	    	 request.setAttribute("message", "you are not loggedin, login here first.");
  	    	 request.getRequestDispatcher("/login.jsp").forward(request, response);

  	     }
      try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
                 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
               PreparedStatement ps = con.prepareStatement("insert into comments values(?,?,?)");

                ps.setString(1, user);
                ps.setString(2, product);
                ps.setString(3, cmnt);
           
                int i = ps.executeUpdate();

                if (i > 0) {
                   
                  response.sendRedirect("newjsp.jsp");
                }

        } 
      catch (ClassNotFoundException ex)
      {
    	 out.print(ex.toString());    
       }
      catch (SQLException ex) {
    	  out.print(ex.toString());
        }
		
	}

}
