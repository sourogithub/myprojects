

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


@WebServlet("/Admindb")
public class Admindb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String user = request.getParameter("login");    
		String pwd = request.getParameter("pass");
		HttpSession session=request.getSession();
		 PrintWriter out = response.getWriter();
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Souro!12");
		PreparedStatement ps = con.prepareStatement("select * from ADMIN where LOGIN='"+user+"' and PASSWORD='"+pwd+"'");
		ResultSet i=ps.executeQuery();  
		if(i.next()){ 
		    session.setAttribute("login", user);
		    session.setAttribute("pass", pwd);
		    response.sendRedirect("adminview.jsp");
		    
		}
		else {
			 request.setAttribute("message", "wrong loginid and password");
			response.sendRedirect("admin.jsp");
			}
		}
		catch(Exception e)
		{
			out.print(e.toString());
		}
	}

}
