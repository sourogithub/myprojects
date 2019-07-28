

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


@WebServlet("/Memdelete")
public class Productdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        String adminuser = request.getParameter("adminuser");
      
        if ( adminuser == "" ) 
        {
            request.setAttribute("message", "all field must be filled");
           
            request.getRequestDispatcher("/viewproduct.jsp").forward(request, response);

        }
        else 
        {
            try 
            {

                //loading drivers for mysql
                Class.forName("oracle.jdbc.driver.OracleDriver");

                //creating connection with the database 
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
                
              
                   PreparedStatement ps = con.prepareStatement("delete from product where productid=?");

        
                   ps.setString(1,adminuser);
       
                   int i = ps.executeUpdate();

                   if (i > 0) {
                	   
           	        
                        request.getRequestDispatcher("/viewproduct.jsp").forward(request, response);
                         }
                  
                  
 
            } 
              catch (Exception se) {
              out.println("You are not sucessfully deleted" +se);
              }

        }
	}



	}


