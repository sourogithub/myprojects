

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class feed
 */
@WebServlet("/feed")
public class feed extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String Nm = request.getParameter("Name");
		String mail= request.getParameter("E-mail");
		String Sub= request.getParameter("Sub");
		String Cm= request.getParameter("Comment");
		
try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Derrek@ORACLE");
		 PreparedStatement ps =con.prepareStatement("insert into FEEDBACK VALUES(?,?,?,?)");
		 ps.setString(1,Nm);
		 ps.setString(2,mail);
		 ps.setString(3,Sub);
		 ps.setString(4,Cm);
		 int j=ps.executeUpdate();
		 	
		 con.commit();
			String msg="";
			if(j!=0)
			{
				msg="Thank You For Your Opinion";
				out.print("<font size='6' color=blue >" +msg+"</font>");	
				out.print("<a href='Front.jsp'>Go To Home</a>");
			}
			else{
				msg="Oops!! Server is busy,Please try again";
				out.print("<font size='6' color=blue>" +msg+ "</font>");
				out.print("<a href='Front.jsp'>Go To Home</a>");
			}
			ps.close();
			
		}
		catch(Exception h)
		{
	    System.out.println(h.toString());	
		}
	}

}
