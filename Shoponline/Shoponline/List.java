
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/List")
public class List extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList lst = new ArrayList();
		 PrintWriter out = response.getWriter();

	        try {

	           
	            Class.forName("oracle.jdbc.driver.OracleDriver");

	            //creating connection with the database 
	            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
	            PreparedStatement ps = con.prepareStatement("Select * from member");
	            ResultSet rs=ps.executeQuery(); 
	            while(rs.next())
	            {
	            	lst.add(rs.getString(1));
	            	lst.add(rs.getString(2));
	            	lst.add(rs.getString(3));
	            	lst.add(rs.getString(4));
	            	lst.add(rs.getString(5));
	            	lst.add(rs.getString(6));
	            	lst.add(rs.getString(7));
	            	
	            }
	            
	        }
	        catch (SQLException ex) {
	        	out.print(ex.toString());    
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	           finally{
	        	   request.setAttribute("EmpData", lst);
	        	   request.getRequestDispatcher("/tom.jsp").forward(request,response); 
	           }
	}

}
