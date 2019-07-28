

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


@WebServlet("/Details")
public class Details extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		 PrintWriter out = response.getWriter();
		  HttpSession session=request.getSession();
		    String itemid = (String)session.getAttribute("pid");
		    String itemname = (String)session.getAttribute("pname");
		    int price = (int)session.getAttribute("price");
	        String image = (String)session.getAttribute("image");
	        String details = (String)session.getAttribute("details");
	        String user = (String) session.getAttribute("uid");
	     session.setAttribute("productid",itemid);
	     session.setAttribute("uid", user);
	     if(user==null)
	     {
	    	 request.setAttribute("message", "you are not loggedin, login here first.");
	    	 request.getRequestDispatcher("/login.jsp").forward(request, response);

	     }

	        try {
	         
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	        }
            catch (ClassNotFoundException ex) {
	        	out.print(ex.toString());    
	        }

	        //creating connection with the database 
	        Connection con;
	        try {
	            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
	            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) from shop where  productid=?");
                ps.setString(1,itemid);
                ResultSet rs=ps.executeQuery();  
                while(rs.next())
                {
                 int x= rs.getInt("count(*)");

 
                 if(x>=1)
                  { 
                	 request.setAttribute("message","this product has already been purchased,choose another one");
                   response.sendRedirect("welcome.jsp");
                   }
 
                  else
                  {
	            ps = con.prepareStatement("insert into shop values(?,?,?,?,?,?)");
	            ps.setString(1, itemid);
	            ps.setString(2, itemname);
	            ps.setInt(3, price);
	            ps.setString(4, user);
	            ps.setString(5, image);
	            ps.setString(6, details);
	            int i = ps.executeUpdate();
	            if (i > 0) {
	            	 response.sendRedirect("welcome.jsp");
	            }
	        } 
                }
	        }catch (SQLException ex) {
	        	out.print(ex.toString());    
	        }

		
	}

}
