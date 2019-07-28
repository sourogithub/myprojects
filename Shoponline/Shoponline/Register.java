

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

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
           
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String firstname = request.getParameter("fname");
        String lastname = request.getParameter("lname");
        String email = request.getParameter("email");
        String uid = request.getParameter("userid");
        String pass = request.getParameter("pass");
        if (firstname == "" || lastname == "" || email == "" || uid == "" || pass == "") 
        {
            request.setAttribute("message", "all field must be filled");
           
            request.getRequestDispatcher("/registerpage.jsp").forward(request, response);

        }
        else 
        {
            try 
            {

                //loading drivers for mysql
                Class.forName("oracle.jdbc.driver.OracleDriver");

                //creating connection with the database 
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Souro!12");
                
                PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) from member where USER_ID=?");
                ps.setString(1,uid);
                ResultSet rs=ps.executeQuery();  
                while(rs.next())
                {
                 int x= rs.getInt("count(*)");

 
                 if(x>=1)
                  { 
                   request.setAttribute("message","user already exist");
                   request.getRequestDispatcher("/registerpage.jsp").forward(request, response);
                   }
 
                  else
                  {
                   ps = con.prepareStatement("insert into member values(?,?,?,?,?,?,?)");

                   ps.setString(1, firstname);
                   ps.setString(2, lastname);
                   ps.setString(3, email);
                   ps.setString(4, uid);
                   ps.setString(5, pass);
                   ps.setInt(6, 1);
                   ps.setInt(7, 1);
                   int i = ps.executeUpdate();

                   if (i > 0) {
                	   HttpSession session=request.getSession();
                       
           	            session.setAttribute("uid",uid);
           	        
                        request.getRequestDispatcher("/Welcome").forward(request, response);
                         }
                  }
                  }
 
            } 
              catch (Exception se) {
              out.println("You are not sucessfully registered" +se);
              }

        }
	}

}
