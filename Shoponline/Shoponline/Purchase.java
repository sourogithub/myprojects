

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


@WebServlet("/Purchase")
public class Purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		 PrintWriter out = response.getWriter();
		  HttpSession session=request.getSession();
		    String itemid = (String)session.getAttribute("pid");
		    String ptype= request.getParameter("ptype");
		    int price = (int)session.getAttribute("price");
	        
	        String country= request.getParameter("country");
	        String state= request.getParameter("state");
	        String add= request.getParameter("address");
	        String city= request.getParameter("city");
	        String pincodes= request.getParameter("pincode");
	        int pincode =Integer.valueOf(pincodes);
	        String user = (String) session.getAttribute("uid");
	        if (ptype == "" || add == "" || country == "" || state == "" || city == "" || pincodes== ""  ) {
	            request.setAttribute("message", "all field must be filled");

	            request.getRequestDispatcher("/purchase.jsp").forward(request, response);

	        }
	     session.setAttribute("productname",itemid);
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
	         
	            PreparedStatement ps = con.prepareStatement("insert into purchase values(?,?,?,?,?,?,?,?,?)");
	           
	            ps.setString(1, user);
	            ps.setString(2,ptype);
	            ps.setString(3, itemid);
	            ps.setInt(4, price);
	            ps.setString(5, add);
	            ps.setString(6, country);
	            ps.setString(7, state);
	            ps.setString(8, city);
	            ps.setInt(9, pincode);
	            int i = ps.executeUpdate();
	
	            if (i > 0 )
	            { 	
	          

	                request.getRequestDispatcher("/thankyou.jsp"+ "").forward(request, response);
	           
	       
          }
	    
	        }catch (SQLException ex) {
	        	out.print(ex.toString());    
	        }
	}

}
