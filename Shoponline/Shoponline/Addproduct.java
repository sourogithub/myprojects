

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


@WebServlet("/Addproduct")
public class Addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		 PrintWriter out = response.getWriter();
		    String productid = request.getParameter("productid");
	        String productname = request.getParameter("productname");
	        String prices = request.getParameter("price");
	        int price = Integer.parseInt(prices);

	        String image = request.getParameter("image");
	        String details=request.getParameter("details");
	        String ptype=request.getParameter("ptype");
	        String quantitys=request.getParameter("quantity");
	        String brand=request.getParameter("brand");
	        String pageurl=request.getParameter("pageurl");
	        String discounts=request.getParameter("discounts");
	        int discount= Integer.parseInt(discounts);
	        int quantity = Integer.parseInt(quantitys);
	        if (ptype == "" || quantitys == "" || image == "" || details == "" || prices == "" || productid== ""|| productname == ""  ) {
	            request.setAttribute("message", "all field must be filled");

	            request.getRequestDispatcher("/addproduct.jsp").forward(request, response);

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
	            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) from product where  productid=?");
                ps.setString(1,productid);
                ResultSet rs=ps.executeQuery();  
                while(rs.next())
                {
                 int x= rs.getInt("count(*)");

 
                 if(x>=1)
                  { 
                	 request.setAttribute("message","this product has already exist,can create duplicate products");
                   request.getRequestDispatcher("/addproduct.jsp").forward(request, response);
                   }
 
                  else
                  {
	            ps = con.prepareStatement("insert into product values(?,?,?,?,?,?,?,?,?,?)");
	            ps.setString(1, productid);
	            ps.setString(2, productname);
	            ps.setInt(3, price);
	            ps.setString(4, image);
	            ps.setString(5,details);
	            ps.setString(6,ptype );
	            ps.setInt(7,quantity);
	            ps.setString(8,brand);
	            ps.setString(9,pageurl);
	            ps.setInt(10,discount);
	            int i = ps.executeUpdate();
	            if (i > 0) {

	                request.getRequestDispatcher("/addproduct.jsp").forward(request, response);
	            }
	        }
                }
	        }catch (SQLException ex) {
	        	out.print(ex.toString());    
	        }

		
	}

}